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

import com.koreadeal.web.model.BorderDtlModel;
import com.koreadeal.web.model.BorderList;
import com.koreadeal.web.service.BorderDtlService;
import com.koreadeal.web.service.BorderInsertService;
import com.koreadeal.web.service.BorderListSet;



@Controller
public class BorderController {
	
	@Autowired
	BorderListSet borderListSet;
	
	@Autowired
	BorderInsertService BorderInsertService;
	
	@Autowired
	BorderDtlService borderDtlService;
	           
	@RequestMapping(value = "/border", method = RequestMethod.GET)
	public ModelAndView borderIndex() {
		ModelAndView view = new ModelAndView("/border/border");  
		BorderList model = new BorderList();
		model.setPage(1);
		model.setBorderList(borderListSet.getBorderList(model.getPage()));
		model.setTotalPage(borderListSet.getTotalPage());
		model.setPageStart(borderListSet.getPageEnd(model.getPage()));
		model.setPageEnd(borderListSet.getPageEnd(model.getPage()));
		view.addObject("borderModel" , model); //border페이지로 다시 돌려주는 모델
		
		return view;
	}
	
	@RequestMapping(value = "/borderp", method = RequestMethod.GET)
	public ModelAndView borderIndex2(@RequestParam("page")String page) { //String page값을 jsp에서 어떻게 받아오는가??
		ModelAndView view = new ModelAndView("/border/border");
		BorderList model = new BorderList();
		model.setPage(Integer.parseInt(page));
		model.setBorderList(borderListSet.getBorderList(model.getPage()));
		model.setTotalPage(borderListSet.getTotalPage());
		model.setPageStart(borderListSet.getPageStart(model.getPage()));
		model.setPageEnd(borderListSet.getPageEnd(model.getPage()));
		view.addObject("borderModel", model);
		return view;
	}
	
	@RequestMapping(value ="/borderinsert", method = RequestMethod.GET)
	public ModelAndView borderinsert () {
		ModelAndView view = new ModelAndView("/borderinsert");
		return view;
	}
	
	@RequestMapping(value="/borderdatainsert", method = RequestMethod.POST)
	public ModelAndView borderDataInsert(@RequestParam("border_title")String border_title, HttpServletRequest request) {
		ModelAndView view = new ModelAndView("/border/border");
		return view;
	}
	
	@RequestMapping(value="/borderdtl", method = RequestMethod.GET)
	public ModelAndView borderDtl(@RequestParam("border_code")String border_code,@RequestParam("page")String page) {
	ModelAndView view = new ModelAndView("/border/borderdtl");
	BorderDtlModel model = borderDtlService.getBorderDtlModel(border_code);
	model.setPage(page);
	view.addObject("borderDtlModel", model);
	return view;
	}
	
	
	
}








