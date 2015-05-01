package com.gxjk.risk.utils;

import java.beans.PropertyDescriptor;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.Column;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.lang3.ArrayUtils;
import org.hibernate.HibernateException;
import org.hibernate.property.ChainedPropertyAccessor;
import org.hibernate.property.PropertyAccessor;
import org.hibernate.property.PropertyAccessorFactory;
import org.hibernate.property.Setter;
import org.hibernate.transform.AliasedTupleSubsetResultTransformer;

import com.gxjk.risk.exceptions.BusinessException;


 

public class HibernateResultTransformer  extends AliasedTupleSubsetResultTransformer {
	private static final String[] baseClassNames = new String[] {
	    "java.lang.String", "int", "java.lang.Integer", "float",
	    "java.lang.Float", "double", "java.lang.Double", "long",
	    "java.lang.Long", "short", "java.lang.Short", "byte",
	    "java.lang.Byte", "boolean", "java.lang.Boolean", "java.util.Date",
	    "java.util.Timestamp", "java.sql.Timestamp", "java.sql.Date",
	    "java.lang.BigDecimal","java.math.BigInteger","java.math.BigDecimal", "[B" // byte[]
    };
	public static <T> boolean isBaseType(Class<T> clazz) {
		String className = clazz.getName();
		return ArrayUtils.contains(baseClassNames, className);
	}
	// IMPL NOTE : due to the delayed population of setters (setters cached
	// 		for performance), we really cannot properly define equality for
	// 		this transformer

	/**
	 * 
	 */
	private static final long serialVersionUID = 1738351905542810520L;
	private final Class<?> resultClass;
	private boolean isInitialized;
	private String[] aliases;
	private Setter[] setters;
	private Class<?> [] propertyClasses;
	
	private Map<String,PropertyBean> column2PropertyMap;

	public HibernateResultTransformer(Class<?> resultClass) {
		if ( resultClass == null ) {
			throw new IllegalArgumentException( "resultClass cannot be null" );
		}
		isInitialized = false;
		this.resultClass = resultClass;
	}

	@Override
	public boolean isTransformedValueATupleElement(String[] aliases, int tupleLength) {
		return false;
	}

	public Object transformTuple(Object[] tuple, String[] aliases) {
		Object result;
		try {
			if(HibernateResultTransformer.isBaseType(this.resultClass) ){
				if(tuple!=null && tuple[0]!=null){
					return tuple[0];
				}else {
					return null;
				}
			}else if ( ! isInitialized ) {
				initialize( aliases );
			}
			else {
				PropertyBean propertyBean = null;
				String[] newaliases = new String[aliases.length];
				for ( int i = 0; i < aliases.length; i++ ) {
					String alias = aliases[ i ];
					propertyBean = column2PropertyMap.get(alias.toUpperCase());
					if ( alias != null  ) {
						if(propertyBean !=null){
							newaliases[ i ] = propertyBean.getPropertyName();
						} 
					}
					alias = null;
					propertyBean = null;
				}
				check( newaliases );
			}
			result = resultClass.newInstance();

			for ( int i = 0; i < aliases.length; i++ ) {
				if(aliases[i] == null) continue;
				if ( setters[i] != null  ) {
					
					if ((HibernateResultTransformer.isBaseType(this.propertyClasses[i])       )){
						if (tuple[i] !=null){
							if(tuple[i].getClass().getName().equals("java.sql.Timestamp") && this.propertyClasses[i].getName().equals("java.util.Date")){
								 //什么都不做
							}else  if (!tuple[i].getClass().equals(this.propertyClasses[i])){
								throw new BusinessException(String.format("类：%s的属性%s的配置类型与数据库不匹配配,数据库类型：%s,属性类型：%s", this.resultClass.getName(),  aliases[i],tuple[i].getClass().getName(),this.propertyClasses[i].getName()));
							}
						}
					}else if(this.propertyClasses[i].isEnum()   ){
						if (tuple[i] !=null){
							Object[] ts = this.propertyClasses[i].getEnumConstants(); 
							boolean find = false;
					        for (Object t : ts) {  
					            Enum<?> e = (Enum<?>) t;  
					           if(e.name().equals(tuple[i].toString())){
					        	   tuple[i] = e;
					        	   find = true;
					        	   break;
					           }
					        }
					        if(!find){
					        	throw new BusinessException(String.format("类：%s的属性%s的数据库类型在枚举类%s里没有找到配配的类型,数据库值：%s", 
					        			this.resultClass.getName(),  
					        			aliases[i],
					        			this.propertyClasses[i].getName(),
					        			tuple[i].toString()));
					        }
						}
					}
					/**
					 * 特别处理
					 */
					if(this.propertyClasses[i].getName().equals("java.math.BigDecimal")){
						if (tuple[i] !=null){
							tuple[i] = new BigDecimal(tuple[i].toString());
						}
					}
					//基本数据类型，且其值为null，则不设置其值
					if(tuple[i] == null && isBaseType(this.propertyClasses[i])){
						continue;
					}
					setters[i].set( result, tuple[i], null );
				}
			}
		}
		catch ( InstantiationException e ) {
			throw new HibernateException( "Could not instantiate resultclass: " + resultClass.getName() );
		}
		catch ( IllegalAccessException e ) {
			throw new HibernateException( "Could not instantiate resultclass: " + resultClass.getName() );
		} catch (BusinessException e) {
			throw new HibernateException( e.getMessage() );
		}

		return result;
	}

	private void initialize(String[] aliases) {
		PropertyAccessor propertyAccessor = new ChainedPropertyAccessor(
				new PropertyAccessor[] {
						PropertyAccessorFactory.getPropertyAccessor( resultClass, null ),
						PropertyAccessorFactory.getPropertyAccessor( "field" )
				}
		);
		column2PropertyMap = this.getColumn2PropertyMap(this.resultClass);
		this.aliases = new String[ aliases.length ];
		setters = new Setter[ aliases.length ];
		propertyClasses = new Class[aliases.length ];
		PropertyBean propertyBean = null;
	 
		for ( int i = 0; i < aliases.length; i++ ) {
			String alias = aliases[ i ];
			propertyBean = column2PropertyMap.get(alias.toUpperCase());
			if ( alias != null  ) {
				if(propertyBean !=null){
					this.aliases[ i ] = propertyBean.getPropertyName();
					this.propertyClasses[i] = propertyBean.getPropertyClass();
					setters[ i ] = propertyAccessor.getSetter( resultClass, propertyBean.getPropertyName() );
				}else{
					//this.aliases[ i ]  = alias;
					//setters[ i ] = propertyAccessor.getSetter( resultClass, alias);
				}
				
			}
			alias = null;
			propertyBean = null;
		}
		
		isInitialized = true;
	}

	private void check(String[] aliases) {
		if ( ! Arrays.equals( aliases, this.aliases ) ) {
			throw new IllegalStateException(
					String.format("%s aliases are different from what is cached; aliases=%s cached=%s",this.resultClass.getName(), Arrays.asList( aliases ),Arrays.asList( this.aliases ) ));
		}
	}

	@Override
	public boolean equals(Object o) {
		if ( this == o ) {
			return true;
		}
		if ( o == null || getClass() != o.getClass() ) {
			return false;
		}

		HibernateResultTransformer that = ( HibernateResultTransformer ) o;

		if ( ! resultClass.equals( that.resultClass ) ) {
			return false;
		}
		if ( ! Arrays.equals( aliases, that.aliases ) ) {
			return false;
		}

		return true;
	}

	@Override
	public int hashCode() {
		int result = resultClass.hashCode();
		result = 31 * result + ( aliases != null ? Arrays.hashCode( aliases ) : 0 );
		return result;
	}
	private Map<String,PropertyBean> getColumn2PropertyMap(Class<?> clazz) {
		Field field = null;
		String propertyName = null;
		String columnName = null;
//		int modifier = 0;
		Annotation annotation = null;
		Map<String,PropertyBean> column2Property = new HashMap<String,PropertyBean>();
		while (clazz != null && !clazz.getName().equals(Object.class.getName())) {
			PropertyDescriptor[] properties = PropertyUtils.getPropertyDescriptors(clazz);
			for (PropertyDescriptor p : properties) {
				//获得此特性的编程名称
				propertyName = p.getName();
				try {
					if("class".equals(propertyName))continue;
					field = clazz.getDeclaredField(propertyName);
				} catch (NoSuchFieldException   e) {
			
					e.printStackTrace();
				} catch (  SecurityException e) {
			
					e.printStackTrace();
				}
				if (field != null) {
//					modifier = field.getModifiers();
//					if ((modifier & Modifier.FINAL) > 0
//							|| (modifier & Modifier.NATIVE) > 0
//							|| (modifier & Modifier.STATIC) > 0
//							|| (modifier & Modifier.TRANSIENT) > 0
//							|| (modifier & Modifier.VOLATILE) > 0) {
//						continue;
//					}
					if(field.isAnnotationPresent(Column.class )){
						annotation = field.getAnnotation(Column.class);
						columnName = ((Column) annotation).name();
						if (columnName == null || columnName.length() == 0) {
							columnName = field.getName();
						}
					}else{
						columnName = field.getName();
					}
					
					if (!column2Property.containsKey(propertyName)) {
						PropertyBean propertyBean =  new  PropertyBean();
						propertyBean.setField(field);
						propertyBean.setPropertyWriteMethod( p.getWriteMethod());
						propertyBean.setPropertyReadMethod(p.getReadMethod());
						propertyBean.setPropertyClass(field.getType());
						propertyBean.setPropertyName(propertyName);
						
						column2Property.put(columnName.toUpperCase(), propertyBean);
					}
					
				}
			}
			clazz = clazz.getSuperclass();
		}
		 
		return column2Property;
	}
	 
	public static void main(String[] args) {
//		Class ref = BenefitTypes.class;
//		Object[] ts = ref.getEnumConstants();  
//        for (Object t : ts) {  
//            Enum<?> e = (Enum<?>) t;  
//           // map.put(e.ordinal(), e.name()); 
//            System.out.println(e.name());
//        } 
	}
}