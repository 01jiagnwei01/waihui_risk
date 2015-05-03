package com.gxjk.risk.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 *日操作分析 
 */
@Controller
@RequestMapping("/dayOperateAnalyse")
public class DayOperateAnalyseController {

	@RequestMapping(value="",method=RequestMethod.GET)
	public String bindAlipay(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap){
		 
		return "dayoperateanalyse";	
	}
}
