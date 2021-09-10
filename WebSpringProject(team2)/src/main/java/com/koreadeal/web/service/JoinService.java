package com.koreadeal.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreadeal.web.DAO.JoinDAO;
import com.koreadeal.web.beans.UserBean;
import com.koreadeal.web.model.JoinModel;

@Service
public class JoinService {
	
	@Autowired
	private JoinDAO joinDAO;

	
	public boolean idCheck(String join_id) {
		if(joinDAO.idCheck(join_id) == 0) {
			return false;
		}else {
			return true;
		}
		
	}
	
	public int insertJoinModel(JoinModel model) {
		UserBean bean = new UserBean();
		bean.setUser_id(model.getJoin_id());
		bean.setUser_pwd(model.getJoin_pwd());
		bean.setUser_name(model.getJoin_name());
		bean.setUser_email(joinEmail(model.getJoin_email1(), model.getJoin_email2()));
		bean.setUser_birthday(joinBirthday(model.getBirth_year(),model.getBirth_month(),model.getBirth_day()));
	
		
		return joinDAO.joinInsert(bean);
	}
	
	public String joinEmail(String join_email1,String join_email2) {
		
		return join_email1 + "@" + join_email2;
	}
	public String joinBirthday(String birth_year,String birth_month, String birth_day) {
		
		return birth_year + birth_month + birth_day;
	}
	
}
