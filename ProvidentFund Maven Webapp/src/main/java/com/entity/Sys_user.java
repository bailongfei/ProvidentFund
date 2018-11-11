package com.entity;

import java.util.Date;

public class Sys_user {
	private Integer userid;
	private Integer ygbh;

	private String userAccount;

	private String userPwd;

	private String userPhone;
	private Date registerTime;

	private Integer userState;

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public Integer getYgbh() {
		return ygbh;
	}

	public void setYgbh(Integer ygbh) {
		this.ygbh = ygbh;
	}

	public String getUserAccount() {
		return userAccount;
	}

	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public Date getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}

	public Integer getUserState() {
		return userState;
	}

	public void setUserState(Integer userState) {
		this.userState = userState;
	}

	public Sys_user(Integer userid, Integer ygbh, String userAccount, String userPwd, String userPhone,
			Date registerTime, Integer userState) {
		super();
		this.userid = userid;
		this.ygbh = ygbh;
		this.userAccount = userAccount;
		this.userPwd = userPwd;
		this.userPhone = userPhone;
		this.registerTime = registerTime;
		this.userState = userState;
	}

	public Sys_user() {
		super();
		// TODO Auto-generated constructor stub
	}

}