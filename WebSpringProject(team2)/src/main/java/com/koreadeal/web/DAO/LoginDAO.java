package com.koreadeal.web.DAO;

import com.koreadeal.web.beans.UserBean;
import com.koreadeal.web.model.LoginModel;

/**
 * 
 * @author 이은수
 * > 받아와야 할 데이터의 종류를 interface로 지정해 준다.
 *
 */


public interface LoginDAO {
	public UserBean loginCheck(LoginModel loginModel);
	public UserBean getUserBean(LoginModel loginModel);
	
}
