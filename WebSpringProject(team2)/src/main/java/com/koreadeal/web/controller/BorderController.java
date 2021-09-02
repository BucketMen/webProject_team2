package com.koreadeal.web.controller;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class BorderController {
	           
	@RequestMapping(value = "/border", method = RequestMethod.GET)
	public ModelAndView borderIndex() {
		ModelAndView view = new ModelAndView("/border/border");                        
		return view;
	}
	
}








