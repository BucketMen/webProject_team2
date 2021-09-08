package com.spring.mvc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.mvc.model.JoinBean;

public class JoinDAOImpl implements JoinDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String NAME_SPACE = "com.spring.mvc.dao";
	
	@Override
	public int joinInCheck(String id) {
		// TODO Auto-generated method stub
		return  sqlSession.selectOne(NAME_SPACE + ".joinIdcheck", id);
	}
	
	@Override
	public int joinInsert(JoinBean bean) { //1건수(1개의 row)로 들어가기 떄문에 반환형은 int 
		// TODO Auto-generated method stub
		return  sqlSession.selectOne(NAME_SPACE + ".joinIdcheck", bean);
	}

}
