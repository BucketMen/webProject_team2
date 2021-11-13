package com.koreadeal.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreadeal.web.beans.BorderBean;
import com.koreadeal.web.model.BorderInsertModel;

@Service
public class BorderInsertService {
	
	@Autowired
	BorderDAO borderDAO;
	
	public void fileUpload(BorderInsertModel borderInsertModel) {
		BorderBean borderBean = new BorderBean();
		borderBean.setBorder_title(borderInsertModel.getBorder_title());
		borderBean.setBorder_contect(borderInsertModel.getContent_textarea());
		borderBean.setWriter_name(borderInsertModel.getUser_name());
		borderBean.setWriter_ip(borderInsertModel.getUser_ip());
		
		int insertCount = BorderDAO.insertBorder(borderBean);
	}
	
	
	
}
