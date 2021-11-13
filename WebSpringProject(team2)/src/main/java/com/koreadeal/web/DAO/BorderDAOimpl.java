package com.koreadeal.web.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class BorderDAOimpl implements BorderDAO{

	private SqlSession session;
	
	private static final String NAME_SPACE = "com.korea.web.DAO.BorderDAO";
	
	//@Override
	//return session.select
	
	//@override
	/*public Integer insertBorder(Border borderBean){
		return session.insert(NAME_SPACE + ".insertBorder", borderBean);
}*/
	/*@Override
	 * public BorderBean getBorderDtl(int border_code){
	 * 	return sessionselectOne(NAME_SPACE + ".getBorderList", border_code);
	 * }*/
}
