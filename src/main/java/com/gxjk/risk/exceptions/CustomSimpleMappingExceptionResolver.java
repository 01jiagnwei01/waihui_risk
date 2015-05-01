package com.gxjk.risk.exceptions;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.validation.BindException;
import org.springframework.validation.FieldError;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;



import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.gxjk.risk.dto.EntityReturnData;

public class CustomSimpleMappingExceptionResolver extends SimpleMappingExceptionResolver  {
	
	protected final  Logger logger = LoggerFactory.getLogger(getClass());   
	
	protected ModelAndView doResolveException(HttpServletRequest request,  
            HttpServletResponse response, Object handler, Exception ex) { 
		 String viewName = determineViewName(ex, request); 
		 ex.printStackTrace();
		 logger.error(ex.getMessage());
		 if (viewName != null) {// JSP格式返回  
	            if (!(request.getHeader("accept").indexOf("application/json") > -1 || (request  
	                    .getHeader("X-Requested-With")!= null && request  
	                    .getHeader("X-Requested-With").indexOf("XMLHttpRequest") > -1))) {  
	                // 如果不是异步请求  
	                // Apply HTTP status code for error views, if specified.  
	                // Only apply it if we're processing a top-level request.  
	                Integer statusCode = determineStatusCode(request, viewName);  
	                if (statusCode != null) {  
	                	if (!(ex instanceof  BusinessException)){
	                		
	                		StackTraceElement [] errorMsgs = ex.getStackTrace();
	                		List<String> errorMsgsList = new ArrayList<String>();
	                		for(int i=0,l=errorMsgs.length;i<l;i++){
	                			errorMsgsList.add(String.format("%s%s%s\t\t", errorMsgs[i].getClassName(),errorMsgs[i].getLineNumber(),errorMsgs[i].getMethodName()));
	                		}
	                    	 logger.error("异常：{}",errorMsgsList.toArray());
	                    }
	                    applyStatusCodeIfPossible(request, response, statusCode);
	                   
	                }  
	                return getModelAndView(viewName, ex, request);  
	            } else {// JSON格式返回  
	                try { 
	                	ObjectMapper mapper = new ObjectMapper();
	                	EntityReturnData json = new EntityReturnData();
	                	response.setStatus(601);
	                	response.setContentType("text/javascript;charset=UTF-8"); 
	                	PrintWriter writer = response.getWriter(); 
	                   
	                    if (ex instanceof  BusinessException){
	                    	json.setMsg(  ex.getMessage());
	                    	json.setErrortype( ((BusinessException) ex).getSiteFlag());
	    				}else if (ex instanceof  MaxUploadSizeExceededException){
	    					json.setMsg(  "上传文件大小超限了，"+ex.getMessage());
	    				}else if (ex instanceof  BindException){
	    					List<FieldError> filedErrors = ((BindException) ex).getFieldErrors();
	    					List<Map<String,String>> listErrors = new ArrayList<Map<String,String>>();
	    					for(FieldError error : filedErrors){
	    						 Map<String,String> errMap = new HashMap<String,String>();
	    						 errMap.put("key", error.getField());
	    						 errMap.put("errortype",error.getCode());
	    						 errMap.put("errorMsg", error.getDefaultMessage());
	    						 listErrors.add(errMap);
	    						 
	    					}
	    					json.setErrortype("bind");
	                    	json.setMsg( JSONObject.toJSONString(listErrors));
	    				}else{
	    					json.setErrortype("system");
	    					json.setMsg(   "系统问题,请找技术人员解决");
	    				 
		                		
	                		StackTraceElement [] errorMsgs = ex.getStackTrace();
	                		List<String> errorMsgsList = new ArrayList<String>();
	                		for(int i=0,l=errorMsgs.length;i<l;i++){
	                			errorMsgsList.add(String.format("%s%s%s\t\t", errorMsgs[i].getClassName(),errorMsgs[i].getLineNumber(),errorMsgs[i].getMethodName()));
	                		}
	                    	 logger.error("异常：{}",errorMsgsList.toArray());
		                    
	    				}
	                    if(json.getEntity() == null){
	                    	json.setEntity("");
	                    }
	                    writer.write(mapper.writeValueAsString(json));  
	                    writer.flush();  
	                } catch (IOException e) {  
	                    e.printStackTrace();  
	                }  
	                return null;  
	            }  
	        } else {  
	            return null;  
	        }  
	}


}
