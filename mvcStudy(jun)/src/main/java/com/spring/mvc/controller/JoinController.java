package com.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mvc.dao.JoinDAO;
import com.spring.mvc.model.JoinBean;

@Controller
public class JoinController {
	
	
	
	@Autowired
	private JoinDAO joinDAO;

	@RequestMapping(value="/join", method = RequestMethod.GET)
	public ModelAndView join() {
		return new ModelAndView("join/join");
	}
	
	@RequestMapping(value="/joinIdCheck", method = RequestMethod.GET)
	public ModelAndView joinIdCheck(@RequestParam("join_id")String id) {
		ModelAndView mav = new ModelAndView("join/join");
		boolean flag = joinDAO.joinInCheck(id) == 1? true : false;
		mav.addObject("join_id" , id);  //jsp로 아이디를 넘겨준다
		mav.addObject("join_flag" , flag); //jsp로 아이디 중복 메세지를 넘겨준다
		
		return mav;
	}
	

	@RequestMapping(value="/joinInsert", method = RequestMethod.POST)
	public ModelAndView joinInsert(JoinBean bean) {
		System.out.print(bean);
		return new ModelAndView("index");
	}
}
