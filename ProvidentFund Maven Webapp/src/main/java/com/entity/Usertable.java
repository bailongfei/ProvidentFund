package com.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Usertable entity. @author MyEclipse Persistence Tools
 */

public class Usertable implements java.io.Serializable {

	private Integer userId;
	private Roles roles;
	private String userName;
	private String password;
	private String salt;
	private Boolean locked = Boolean.FALSE;

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Roles getRoles() {
		return roles;
	}

	public void setRoles(Roles roles) {
		this.roles = roles;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public Boolean getLocked() {
		return locked;
	}

	public void setLocked(Boolean locked) {
		this.locked = locked;
	}

	public String getCredentialsSalt() {
		return userName + salt;
	}

	public Usertable(Integer userId, Roles roles, String userName, String password, String salt, Boolean locked) {
		super();
		this.userId = userId;
		this.roles = roles;
		this.userName = userName;
		this.password = password;
		this.salt = salt;
		this.locked = locked;
	}

	public Usertable() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;

		Usertable user = (Usertable) o;

		if (userId != null ? !userId.equals(user.userId) : user.userId != null)
			return false;

		return true;
	}

	@Override
	public String toString() {
		return "Usertable [userId=" + userId + ", roles=" + roles + ", userName=" + userName + ", password=" + password
				+ ", salt=" + salt + ", locked=" + locked + "]";
	}

	


}