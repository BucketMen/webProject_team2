package com.koreadeal.web.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.koreadeal.web.DAO.LoginDAO;

public class LoginService {

	@Autowired
	private LoginDAO loginDAO;

	public String loginCheck(String user_id, String user_pwd, String blockdata) {
		int idflag = loginDAO.idCheck(user_id);
		int pwdflag = loginDAO.idCheck(user_pwd);
		int blockflag = loginDAO.idCheck(blockdata);

		if (idflag == 1) {
			pwdCheck(user_pwd);
		}

		else {
			return "id_fail";
		}

		return user_pwd;
	}
	
	public String idCheck(String user_id) {
		int flag = loginDAO.idCheck(user_id);
		return null;
	}

	public String pwdCheck(String user_pwd) {
		int flag = loginDAO.idCheck(user_pwd);
		return null;
	}

	public String blockCheck(String blockdata) {
		int flag = loginDAO.idCheck(blockdata);
		return null;
	}
}

/*
 * public String idCheck(String user_id) { int flag1 =
 * loginDAO.loginCheck(user_id); if(flag1 == 1) { return "id_complete"; }else {
 * return "id_problem"; } }
 * 
 * public String pwdCheck(String user_id, String user_pwd, String blockdata) {
 * int flag1 = loginDAO.loginCheck(user_id, user_pwd, blockdata); int flag2 =
 * loginDAO.loginCheck(user_id, user_pwd, blockdata); int flag3 =
 * loginDAO.loginCheck(user_id, user_pwd, blockdata); if(flag1 == 1) { return
 * "id_complete"; }else { return "id"; } }
 * 
 * public String blockCheck(String user_id, String user_pwd, String blockdata) {
 * int flag1 = loginDAO.loginCheck(user_id, user_pwd, blockdata); int flag2 =
 * loginDAO.loginCheck(user_id, user_pwd, blockdata); int flag3 =
 * loginDAO.loginCheck(user_id, user_pwd, blockdata); if(flag1 == 1) { return
 * "id_complete"; }else { return "id"; } }
 */
