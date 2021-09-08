package com.spring.mvc.dao;

import com.spring.mvc.model.JoinBean;

public interface JoinDAO {
	public int joinInCheck(String id);
	public int joinInsert(JoinBean bean);
	
}
