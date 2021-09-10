package com.koreadeal.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.koreadeal.web.model.JoinModel;
import com.koreadeal.web.model.JoinModel;
import com.koreadeal.web.service.JoinService;

@Controller
public class JoinController {
	
	
	@Autowired
	private JoinService joinService;
	
	@RequestMapping(value="/join", method = RequestMethod.GET)
	public ModelAndView join() {
		ModelAndView mav = new ModelAndView("/join");
		return mav;
	}
	
	@RequestMapping(value="/join/joincheck", method = RequestMethod.GET)
	public ModelAndView JoinCheck(@RequestParam("join_id") String join_id) {
		ModelAndView mav2 = new ModelAndView("/join");
		boolean joinflag = joinService.idCheck(join_id);
		mav2.addObject("join_id", join_id);
		mav2.addObject("joinflag", joinflag);
		return mav2;
	}
	
	@RequestMapping(value="/joinInput", method = RequestMethod.POST)
	public ModelAndView joinInsert(JoinModel model) {	
		int s = joinService.insertJoinModel(model);	
		
	return new ModelAndView("/home");	
	}
	
	
}	
	
