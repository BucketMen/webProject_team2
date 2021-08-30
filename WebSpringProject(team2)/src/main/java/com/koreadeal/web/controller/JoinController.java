package com.koreadeal.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.koreadeal.web.DAO.JoinDao;
import com.koreadeal.web.service.JoinService;

@Controller
public class JoinController {
	
	
	@Autowired
	private JoinService joinService;
	
	@Autowired
	private JoinDao joinDao;
	
}
