package com.gxjk.risk.utils;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

public class SpirngContextUtil  extends ContextLoaderListener {

	protected final  Logger logger = LoggerFactory.getLogger(getClass());   
	
	/**
	 * spring上下文环境  
	 */
	private static WebApplicationContext applicationContext;

	/**
	 * servlet上下文环境
	 */
	private static ServletContext servletContext;

	public void contextInitialized(ServletContextEvent event) {
	 
		super.contextInitialized(event);
		servletContext = event.getServletContext();
		applicationContext = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContext);
	}

	/**
	 * @return the applicationContext
	 */
	public static WebApplicationContext getApplicationContext() {
		return applicationContext;
	}

	/**
	 * @param applicationContext
	 *            the applicationContext to set
	 */
	public static void setApplicationContext(WebApplicationContext applicationContext) {
		SpirngContextUtil.applicationContext = applicationContext;
	}

	/**
	 * @return the servletContext
	 */
	public static ServletContext getServletContext() {
		return servletContext;
	}

	/**
	 * @param servletContext
	 *            the servletContext to set
	 */
	public static void setServletContext(ServletContext servletContext) {
		SpirngContextUtil.servletContext = servletContext;
	}

	public static Object getBean(String beanName) {
		 
		if(applicationContext==null){
			 System.out.println("异常：applicationContext为空");
			return null;
		}
		if(!applicationContext.containsBean(beanName)){
			 System.out.println("异常：applicationContext中没有beanName="+beanName);
				return null;
		}
		 
		return applicationContext.getBean(beanName);
	}
	

	public void contextDestroyed(ServletContextEvent event) {
		super.contextDestroyed(event);    
	}
	 
	
	 
}