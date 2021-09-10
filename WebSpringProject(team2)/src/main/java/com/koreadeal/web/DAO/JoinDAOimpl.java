package com.koreadeal.web.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.koreadeal.web.beans.UserBean;

@Repository
public class JoinDAOimpl implements JoinDAO{
	
	@Autowired
	private SqlSession session;
	
	private static final String NAME_SPACE = "com.koreadeal.web.DAO.JoinDAO";
	
	@Override
	public int idCheck(String join_id) {
		
		return session.selectOne(NAME_SPACE + ".idCheck" , join_id);
	}
	
	@Override
	public int joinInsert(UserBean bean) {
		
		return session.insert(NAME_SPACE +".joinInsert" , bean );
	}
	
}
