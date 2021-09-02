package com.koreadeal.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home() {
		//"/home"을 붙여서 get방식으로 보내라는 의미 
		ModelAndView mav = new ModelAndView();
		System.out.println(mav);
		return new ModelAndView("/home");
	}
	
}