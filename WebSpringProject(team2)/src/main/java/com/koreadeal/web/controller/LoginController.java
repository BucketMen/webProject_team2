package com.koreadeal.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.koreadeal.web.DAO.LoginDAO;
import com.koreadeal.web.beans.UserBean;
import com.koreadeal.web.model.LoginModel;
import com.koreadeal.web.service.LoginService;


@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginIndex(HttpServletRequest request) {
		ModelAndView mav;	
		HttpSession session = request.getSession();
		UserBean loginUserBean = (UserBean)session.getAttribute("userBean");
		if(loginUserBean != null) {
			mav = new ModelAndView("/home");
		}
		else{
			mav = new ModelAndView("/login");
			LoginModel loginmodel = loginService.getLoginModel();
			mav.addObject("loginmodel", loginmodel);
		}
		return mav;
	} 
	//clear------------------------------------------------------------------------------------------------------ 
	
	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	public ModelAndView loginCheck(LoginModel loginModel, HttpServletRequest request) {
	HttpSession session = request.getSession();
		
		int flag = loginService.loginCheck(loginModel);
		
		
		if(flag == 3) {
			ModelAndView mavLoginSuccess = new ModelAndView("/home");
			UserBean sessionBean = loginService.getSessionBean(loginModel);
			session.setAttribute("loginUserBean", sessionBean);
			
			
			return mavLoginSuccess;
		}else {
			ModelAndView mavLoginFailure = new ModelAndView("/join");

			return mavLoginFailure;
		}
	}
	
	//--------------------------------------------------------
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		ModelAndView view = new ModelAndView("/home");
		return view;
	}


}
