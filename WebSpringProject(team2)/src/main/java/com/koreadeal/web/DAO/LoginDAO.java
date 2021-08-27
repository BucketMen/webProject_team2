package com.koreadeal.web.DAO;

import com.koreadeal.web.beans.UserBean;

/**
 * 
 * @author 이은수
 * > 받아와야 할 데이터의 종류를 interface로 지정해 준다.
 *
 */
public interface LoginDAO {
	public Integer idCheck(String user_id);
	public Integer pwdCheck(String user_pwd);
	public Integer blockCheck(String blockdata);
	
}
