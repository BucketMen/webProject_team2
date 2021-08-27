package com.koreadeal.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.koreadeal.web.DAO.LoginDAO;
import com.koreadeal.web.model.LoginModel;
import com.koreadeal.web.beans.UserBean;
import com.koreadeal.web.service.LoginService;


@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView home(
			@RequestParam("user_id")String user_id,
			@RequestParam("user_pwd")String user_pwd,
			@RequestParam("blockdata")String blockdata
			
			) {
		loginService.loginCheck(user_id, user_pwd, blockdata);
		return new ModelAndView("/login");
	}
	
	
}
