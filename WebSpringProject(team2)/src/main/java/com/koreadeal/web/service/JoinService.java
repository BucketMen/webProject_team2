package com.koreadeal.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

<<<<<<< HEAD
import com.koreadeal.web.DAO.JoinDao;
=======
import com.koreadeal.web.DAO.JoinDAO;
import com.koreadeal.web.beans.UserBean;
>>>>>>> c60aa342848d166dc9fa2749758ff6473ba15169
import com.koreadeal.web.model.JoinModel;

@Service
public class JoinService {
	
	@Autowired
<<<<<<< HEAD
	private JoinDao joinDao;
=======
	private JoinDAO joinDAO;
>>>>>>> c60aa342848d166dc9fa2749758ff6473ba15169
	
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
		bean.setUser_id(model.getJoin_id());
		bean.setUser_id(model.getJoin_id());
		
		return joinDAO.joinInsert(bean);
	}
	
	public String joinEmail(String join_email1,String join_email2) {
		
		return join_email1 + "@" + join_email2;
	}
	public String joinBirthday(String birth_year,String birth_month, String birth_day) {
		
		return birth_year + birth_month + birth_day;
	}
	
}
