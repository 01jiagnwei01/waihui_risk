package com.gxjk.risk.enums;

public enum BusinessExceptionInfos {

	Yan_Zheng_MA_ERROR("1","验证码输入错误"),
	USRE_NAME_BLANK("2","用户名为空"),
	USRE_NAME_ERROR("3","用户名错误"),
	PASSWORD_BLANK("4","密码为空"),
	PASSWORD_ERROR("5","密码错误");
	
	private String errorCode; 
	
	private String errorMsg;
	private BusinessExceptionInfos(String errorCode, String errorMsg) {  
		       this.errorCode = errorCode; 
		       this.errorMsg = errorMsg;
	}
	private BusinessExceptionInfos( String errorMsg) {  
	       this.errorMsg = errorMsg;
	}

	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}
}
