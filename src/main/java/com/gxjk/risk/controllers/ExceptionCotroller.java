package com.gxjk.risk.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/exception")
public class ExceptionCotroller {

	@RequestMapping("/{errorcod}")
	public String path(@PathVariable("errorcod") String errorcod,HttpServletRequest request,HttpServletResponse response,ModelMap modelMap){
//			Enumeration en=  request.getParameterNames();
//			while(en.hasMoreElements()){
//				System.out.println(en.nextElement());
//			}
//		Enumeration en=   request.getAttributeNames();
//		while(en.hasMoreElements()){
// 			System.out.println(en.nextElement());
// 		}
//		String msg = (String) request.getAttribute("javax.servlet.error.message");
		Exception ex = (Exception) request.getAttribute("javax.servlet.error.exception");
		modelMap.put("ex", ex);
		return "error/"+errorcod;
	}
	@RequestMapping("/404")
	public String path404(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap){
 
		Exception ex = (Exception) request.getAttribute("javax.servlet.error.exception");
		modelMap.put("ex", ex);
		return "error/404";
	}
	@RequestMapping("/500")
	public String path500(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap){
		Exception ex = (Exception) request.getAttribute("javax.servlet.error.exception");
		modelMap.put("ex", ex);
		return "error/500";
	}
	@RequestMapping("/noauth")
	public String noauth( HttpServletRequest request,HttpServletResponse response,ModelMap modelMap){
		return "error/noauth";
	}
}
