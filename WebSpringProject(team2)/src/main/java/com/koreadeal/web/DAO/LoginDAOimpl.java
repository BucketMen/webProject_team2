package com.koreadeal.web.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.koreadeal.web.beans.UserBean;

@Repository
public class LoginDAOimpl implements LoginDAO{

	@Autowired
	private SqlSession session; 
	
	private static final String NAME_SPACE = "com.koreadeal.web.DAO.LoginDAO"; 
	
//	@Override
//	public Integer loginCheck(String user_id, String user_pwd, String blockdata) {
//		
//		return session.selectOne(NAME_SPACE + ".loginCheck");
//	}

	@Override
	public Integer idCheck(String user_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer pwdCheck(String user_pwd) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer blockCheck(String blockdata) {
		// TODO Auto-generated method stub
		return null;
	}
}
