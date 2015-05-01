package com.gxjk.risk.exceptions;

import com.gxjk.risk.enums.BusinessExceptionInfos;


public class BusinessException extends  Exception{
	/** serialVersionUID */  
    private static final long serialVersionUID = 2332608236621015980L;  
  
    private String code;  
    
    /**
     * 前台标识
     */
    private String siteFlag;
  
    public BusinessException() {  
        super();  
    }  
  
    public BusinessException(String message) {  
        super(message);  
    }  
  
    public BusinessException(BusinessExceptionInfos info) {  
        super(info.getErrorMsg());  
        this.code = info.getErrorCode();  
    }
    public BusinessException(BusinessExceptionInfos info,String siteFlag) {  
        super(info.getErrorMsg());  
        this.code = info.getErrorCode(); 
        this.siteFlag = siteFlag;
    }
    public BusinessException(String code, String message) {  
        super(message);  
        this.code = code;  
    }  
  
    public BusinessException(Throwable cause) {  
        super(cause);  
    }  
  
    public BusinessException(String message, Throwable cause) {  
        super(message, cause);  
    }  
  
    public BusinessException(String code, String message, Throwable cause) {  
        super(message, cause);  
        this.code = code;  
    }  
  
    public String getCode() {  
        return code;  
    }  
  
    public void setCode(String code) {  
        this.code = code;  
    }

	public String getSiteFlag() {
		return siteFlag;
	}

	public void setSiteFlag(String siteFlag) {
		this.siteFlag = siteFlag;
	}
    
}