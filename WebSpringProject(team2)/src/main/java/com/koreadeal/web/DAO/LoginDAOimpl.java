package com.koreadeal.web.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
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
 *
 *	어디서 에러가 발생 했느지 알아보려면 prinln()으로 데이터가 어떻게 넘어오는지 확인해 보면 된다.
 */

@Repository
public class LoginDAOimpl implements LoginDAO{
	
	@Autowired
	private SqlSession session; 
	
	//@Autowired
	//private JdbcTemplate jdbcTemplate;
	
	private static final String NAME_SPACE = "com.koreadeal.web.DAO.LoginDAO"; 
	
	@Override
	public UserBean getUserBean(LoginModel loginModel) {
		return session.selectOne(NAME_SPACE + ".getUserBean", loginModel.getUser_id());
	}
	@Override
	public UserBean loginCheck(LoginModel loginModel) {
		UserBean userBean = new UserBean();
		userBean.setUser_id(loginModel.getUser_id());
		userBean.setUser_pwd(loginModel.getUser_pwd());
		return session.selectOne(NAME_SPACE + ".loginCheck", userBean);
	}
}	



