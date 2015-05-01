package com.gxjk.risk.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/index")
public class IndexController {
	@RequestMapping(value="",method=RequestMethod.GET)
	public String bindAlipay(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap){
		String mv = "/admin/index";
		return mv;	
	}
}
