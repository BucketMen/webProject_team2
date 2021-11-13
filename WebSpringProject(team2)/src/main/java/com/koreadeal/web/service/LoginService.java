package com.koreadeal.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreadeal.web.DAO.LoginDAO;
import com.koreadeal.web.beans.UserBean;
import com.koreadeal.web.model.LoginModel;

@Service
public class LoginService {

	/*
	 * @Autowired private LoginDAO loginDAO;
	 * 
	 * public String loginCheck(String user_id, String user_pwd, String blockdata) {
	 * int idflag = loginDAO.idCheck(user_id); int pwdflag =
	 * loginDAO.idCheck(user_pwd); int blockflag = loginDAO.idCheck(blockdata);
	 * 
	 * if (idflag == 1) { pwdCheck(user_pwd); }
	 * 
	 * else { return "id_fail"; }
	 * 
	 * return user_pwd; }
	 * 
	 * public String idCheck(String user_id) { int flag = loginDAO.idCheck(user_id);
	 * return null; }
	 * 
	 * public String pwdCheck(String user_pwd) { int flag =
	 * loginDAO.idCheck(user_pwd); return null; }
	 * 
	 * public String blockCheck(String blockdata) { int flag =
	 * loginDAO.idCheck(blockdata); return null; }
	 * 
	 * DAO에서 서비스로 데이터가 넘어온다.
	 */
	
	@Autowired
	private LoginDAO loginDAO; 
	
	public LoginModel getLoginModel() {
		LoginModel loginModel = new LoginModel();
		loginModel.setUser_id("");
		loginModel.setUser_pwd("");
		loginModel.setLogin_flag("3");
		loginModel.setSubmit_flag("false");
		loginModel.setBlockdata("0");
		System.out.println(loginModel.getBlockdata());
		
		
		return loginModel;
	}
	
	public int loginCheck(LoginModel loginModel) {
		UserBean userBean = loginDAO.loginCheck(loginModel);
		String id = userBean.getUser_id();
		String pwd = userBean.getUser_pwd();
		int block = userBean.getBlock();
		
		if(id == null || id.equals("")) {
			return 0;
		}else if(pwd == null || pwd.equals("")) {
			return 1;
		}else if(block == 1){
			return 2;
		}else {
			return 3;
		}
	}
	
	public UserBean getSessionBean(LoginModel loginModel) {
		return loginDAO.getUserBean(loginModel);
		
	}
	
	public LoginModel getModel(LoginModel model) {
		LoginModel loginModel = new LoginModel();
		loginModel.setUser_id(model.getUser_id());
		loginModel.setUser_pwd(model.getUser_pwd());
		return loginModel;
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
