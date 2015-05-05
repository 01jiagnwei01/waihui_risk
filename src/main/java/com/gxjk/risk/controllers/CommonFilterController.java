package com.gxjk.risk.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/common")
public class CommonFilterController {

	@RequestMapping(value="/{page}",method=RequestMethod.GET)
	public String bindAlipay(@PathVariable("page") String page,HttpServletRequest request,HttpServletResponse response,ModelMap modelMap){
		 
		return page;	
	}
}
