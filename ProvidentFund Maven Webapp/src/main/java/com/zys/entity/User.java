package com.zys.entity;

import java.util.Date;

public class User {
private int userId;
private int ygbh;
private String user_account;
private String user_pwd;
private String user_phone;
private Date register_time;
private int user_state;
private String user_name;
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public int getYgbh() {
	return ygbh;
}
public void setYgbh(int ygbh) {
	this.ygbh = ygbh;
}
public String getUser_account() {
	return user_account;
}
public void setUser_account(String user_account) {
	this.user_account = user_account;
}
public String getUser_pwd() {
	return user_pwd;
}
public void setUser_pwd(String user_pwd) {
	this.user_pwd = user_pwd;
}
public String getUser_phone() {
	return user_phone;
}
public void setUser_phone(String user_phone) {
	this.user_phone = user_phone;
}
public Date getRegister_time() {
	return register_time;
}
public void setRegister_time(Date register_time) {
	this.register_time = register_time;
}
public int getUser_state() {
	return user_state;
}
public void setUser_state(int user_state) {
	this.user_state = user_state;
}
public String getUser_name() {
	return user_name;
}
public void setUser_name(String user_name) {
	this.user_name = user_name;
}
public User(int userId, int ygbh, String user_account, String user_pwd, String user_phone, Date register_time,
		int user_state, String user_name) {
	super();
	this.userId = userId;
	this.ygbh = ygbh;
	this.user_account = user_account;
	this.user_pwd = user_pwd;
	this.user_phone = user_phone;
	this.register_time = register_time;
	this.user_state = user_state;
	this.user_name = user_name;
}
public User() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "User [userId=" + userId + ", ygbh=" + ygbh + ", user_account=" + user_account + ", user_pwd=" + user_pwd
			+ ", user_phone=" + user_phone + ", register_time=" + register_time + ", user_state=" + user_state
			+ ", user_name=" + user_name + "]";
}
}
