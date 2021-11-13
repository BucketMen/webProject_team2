package com.koreadeal.web.model;

public class LoginModel {
	private String user_id;
	private String user_pwd;
	private String login_flag;
	private String submit_flag;
	private String blockdata;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getLogin_flag() {
		return login_flag;
	}
	public void setLogin_flag(String login_flag) {
		this.login_flag = login_flag;
	}
	public String getSubmit_flag() {
		return submit_flag;
	}
	public void setSubmit_flag(String submit_flag) {
		this.submit_flag = submit_flag;
	}
	public String getBlockdata() {
		return blockdata;
	}
	public void setBlockdata(String blockdata) {
		this.blockdata = blockdata;
	}
	
	
	
}
