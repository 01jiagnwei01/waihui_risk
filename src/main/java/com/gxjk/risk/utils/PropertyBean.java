package com.gxjk.risk.utils;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class PropertyBean implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8729085562444465486L;

	private String propertyName;
	
	private Field  field;
	
	private Method propertyWriteMethod = null;
	
	private Method propertyReadMethod = null;
	
	private Class<?> propertyClass ;

	public String getPropertyName() {
		return propertyName;
	}

	public void setPropertyName(String propertyName) {
		this.propertyName = propertyName;
	}

	public Field getField() {
		return field;
	}

	public void setField(Field field) {
		this.field = field;
	}

	public Class<?> getPropertyClass() {
		return propertyClass;
	}

	public void setPropertyClass(Class<?> propertyClass) {
		this.propertyClass = propertyClass;
	}

	public Method getPropertyWriteMethod() {
		return propertyWriteMethod;
	}

	public void setPropertyWriteMethod(Method propertyWriteMethod) {
		this.propertyWriteMethod = propertyWriteMethod;
	}

	public Method getPropertyReadMethod() {
		return propertyReadMethod;
	}

	public void setPropertyReadMethod(Method propertyReadMethod) {
		this.propertyReadMethod = propertyReadMethod;
	}
	
	
 

}
