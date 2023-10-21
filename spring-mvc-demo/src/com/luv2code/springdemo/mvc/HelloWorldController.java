package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

	//need a controller method to show the initinal dorm
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	
	//need a controller method to process the HTML from 
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
}
	
	@RequestMapping("/ProcessFormVersionTwo")
	public String letsShoutDude(HttpServletRequest request,Model model) {
	String theName = request.getParameter("studentName");
	theName =theName.toUpperCase();
	String result ="Yo!" + theName;
	model.addAttribute("message", result);
	return "helloworld";
	}
	













}
