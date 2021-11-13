package com.koreadeal.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreadeal.web.beans.BorderBean;
import com.koreadeal.web.model.BorderDtlModel;

@Service
public class BorderDtlService {
	
	@Autowired
	BorderDAO borderDAO;
	
	public BorderDtlModel getBorderDtlModel(String border_code) {
		
		int i_border_code = Integer.parseInt(border_code);
		
		BorderBean borderBean = borderDAO.getBorderDtl(i_border_code);
		BorderBean borderBean_pre = borderDAD.getPreBorderCode(i_border_code);
		
		BorderDtlModel model = new BorderDtlModel();
		model.setBorder_title(borderBean.getBorder_title());
		model.setWriter_name(borderBean.getWriter_name());
		model.setBorder_count(borderBean.getBorder_count());
		model.setBorder_date(borderBean.getBorder_data());
		model.setBorder_content(borderBean.getBorder_content());
		model.setBorder_code_pre(borderBean_pre.getBorder_code());
		model.setBorder_title_pre(borderBean_pre.getBorder_title());
		return model;
		
	}
	
	
}
