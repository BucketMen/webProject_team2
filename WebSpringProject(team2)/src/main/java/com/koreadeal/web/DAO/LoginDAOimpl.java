package com.koreadeal.web.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.koreadeal.web.beans.UserBean;
import com.koreadeal.web.model.LoginModel;

/**
 * 컨트롤러(서비스클래스와 오토와이어, 컴포넌트) -> (파라메터) -> 서비스(일반클래스) -> DAO 
 * 
 * 컨트롤러를 통해서 서비스에 파라메터 전달, 컨트롤러에서 서비스 오토와이어
 * 서비스를 통해서 DAO에 전달, 서비스에서 오토와이어드
 * DAO는 DB와 연결, 연결하는 프레임워크를 마이바티스를 사용
 * DB = mySQL이 알아 들을 수 있게 쿼리로 데이터 접근
 * DB와 DAO의 연결중간에 mapper.xml이 존재한다.(select update delete등의 명령 작성)
 * mapper를 마이바티스로 작성, 
 * 	DAO랑 mapper연결(NAME_SPACE(인터페이스)로 연결, )
 * 		dao안에는 public ~bean{}, idcheck(String id)등이 있다
 * 		idCheck()메소드는 형태를 다르게 적용해 줘도 된다. 
 *	DB랑 mapper랑 연결한다.
 *	이 결과를 model에 담아준다 -> return으로 결과의 객체를 담고 -> 컨트롤러에서 반환된 객체를 addObject로 더하고 클라이언트에 데이터를 더해준다.
 *	addObject에 항상 모델만 들어갈 필요는 없다, setAttribute와 같은 역할을 한다.
 */

@Repository
public class LoginDAOimpl implements LoginDAO{
	
	@Autowired
	private SqlSession session; 
	
	//@Autowired
	//private JdbcTemplate jdbcTemplate;
	
	private static final String NAME_SPACE = "com.koreadeal.web.DAO.LoginDAO"; 
	
	@Override
	public Integer idCheck(String user_id) {
		// TODO Auto-generated method stub
		return session.selectOne(NAME_SPACE + ".loginCheck");
	}
	
	@Override
	public Integer pwdCheck(String user_pwd) {
		// TODO Auto-generated method stub
		return session.selectOne(NAME_SPACE + ".loginCheck");
	}

	@Override
	public Integer blockCheck(String blockdata) {
		// TODO Auto-generated method stub
		return session.selectOne(NAME_SPACE + ".loginCheck");
	}
	@Override
	public UserBean getUserBean(LoginModel loginModel) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Integer loginCheck(LoginModel loginModel) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/*
	@Autowired
	public void setJdbcTemplate(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public Integer loginCheck(LoginModel loginModel) {
		String sql = "select count(*) from user_mst where user_id = ? and user_pwd = ?";
		int flag = jdbcTemplate.queryForObject(sql, new Object[] {loginModel.getLogin_id(), loginModel.getLogin_pwd()},
				new RowMapper<Integer>() {
			@Override
			public Integer mapRow(ResultSet rs, int rowNum) throws SQLException {
				return rs.getInt(1);
			}
		});
		return flag;
	}
	
	@Override
	public UserBean getUserBean(LoginModel loginModel) {
		String sql = "select user_id, user_pwd, user_name, user_birthday from user_mst where user_id = ? and user_pwd = ?";
		UserBean userBean = jdbcTemplate.queryForObject(sql, new Object[] {loginModel.getLogin_id(), loginModel.getLogin_pwd()},
				new RowMapper<UserBean>() {
			@Override
			public UserBean mapRow(ResultSet rs, int rowNum) throws SQLException {
				UserBean bean = new UserBean();
				bean.setUser_id(rs.getString(1));
				bean.setUser_pwd(rs.getString(2));
				bean.setUser_name(rs.getString(3));
				bean.setUser_birthday(rs.getString(4));
				return bean;
			}
		});
		return userBean;
	}
	*/

}
