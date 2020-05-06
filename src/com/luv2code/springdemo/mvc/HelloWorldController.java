package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {
	
	//need a controller method to display the initial HTML form
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	
	//need a controller methdod to process the HTML form
	@RequestMapping("/processForm")
	public String processForm() {
		return "Helloworld";
	}
	
	//new controller method to read form data and
	//add data to the model
	@RequestMapping("/processFormVersionTwo")
	public String letsShoutDude(HttpServletRequest request, Model model) {
		
		//read the request parameter from the HTML form
		String theName = request.getParameter("studentName");
		
		//convert the data to all caps
		theName = theName.toUpperCase();
		
		//create the message
		String result = "Yo! " + theName;		
		
		//add message to the model
		model.addAttribute("message", result);
		
		return "Helloworld";
	}
	
	//using request param annotation for binding the variable
	@RequestMapping("/processFormVersionThree")
	public String processFormVersionThree(@RequestParam("studentName") String theName, Model model) {
		
		//capitalize the param
		theName = theName.toUpperCase();
		
		//create the message
		String result = "Hey there V3 : " + theName;
		
		//add the message to model
		model.addAttribute("message",result);
		
		
		return "Helloworld";
		
	}
	

}
