package com.koreadeal.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreadeal.web.DAO.JoinDao;
import com.koreadeal.web.model.JoinModel;

@Service
public class JoinService {
	
	@Autowired
	private JoinDao joinDao;
	
	public boolean idCheck(String join_id) {
		if(joinDao.idCheck(join_id) == 0) {
			return false;
		}else {
			return true;
		}
		
	}
}
