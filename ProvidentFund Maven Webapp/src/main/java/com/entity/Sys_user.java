package com.entity;

import java.util.Date;

public class Sys_user {
<<<<<<< HEAD
	private Integer userid;
	private Integer ygbh;
=======
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_user.userId
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    private Integer userid;
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	private String userAccount;
=======
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_user.ygbh
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    private Integer ygbh;
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	private String userPwd;
=======
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_user.user_account
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    private String userAccount;
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	private String userPhone;
	private Date registerTime;
=======
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_user.user_pwd
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    private String userPwd;
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	private Integer userState;
=======
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_user.user_phone
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    private String userPhone;
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	public Integer getUserid() {
		return userid;
	}
=======
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_user.register_time
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    private Date registerTime;
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
=======
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_user.user_state
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    private Integer userState;
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	public Integer getYgbh() {
		return ygbh;
	}
=======
    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_user.userId
     *
     * @return the value of sys_user.userId
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    public Integer getUserid() {
        return userid;
    }
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	public void setYgbh(Integer ygbh) {
		this.ygbh = ygbh;
	}
=======
    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_user.userId
     *
     * @param userid the value for sys_user.userId
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
    }
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	public String getUserAccount() {
		return userAccount;
	}
=======
    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_user.ygbh
     *
     * @return the value of sys_user.ygbh
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    public Integer getYgbh() {
        return ygbh;
    }
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}
=======
    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_user.ygbh
     *
     * @param ygbh the value for sys_user.ygbh
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    public void setYgbh(Integer ygbh) {
        this.ygbh = ygbh;
    }
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	public String getUserPwd() {
		return userPwd;
	}
=======
    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_user.user_account
     *
     * @return the value of sys_user.user_account
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    public String getUserAccount() {
        return userAccount;
    }
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
=======
    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_user.user_account
     *
     * @param userAccount the value for sys_user.user_account
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount == null ? null : userAccount.trim();
    }
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	public String getUserPhone() {
		return userPhone;
	}
=======
    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_user.user_pwd
     *
     * @return the value of sys_user.user_pwd
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    public String getUserPwd() {
        return userPwd;
    }
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
=======
    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_user.user_pwd
     *
     * @param userPwd the value for sys_user.user_pwd
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd == null ? null : userPwd.trim();
    }
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	public Date getRegisterTime() {
		return registerTime;
	}
=======
    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_user.user_phone
     *
     * @return the value of sys_user.user_phone
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    public String getUserPhone() {
        return userPhone;
    }
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}
=======
    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_user.user_phone
     *
     * @param userPhone the value for sys_user.user_phone
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	public Integer getUserState() {
		return userState;
	}
=======
    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_user.register_time
     *
     * @return the value of sys_user.register_time
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    public Date getRegisterTime() {
        return registerTime;
    }
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	public void setUserState(Integer userState) {
		this.userState = userState;
	}
=======
    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_user.register_time
     *
     * @param registerTime the value for sys_user.register_time
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    public void setRegisterTime(Date registerTime) {
        this.registerTime = registerTime;
    }
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
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
=======
    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_user.user_state
     *
     * @return the value of sys_user.user_state
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    public Integer getUserState() {
        return userState;
    }
>>>>>>> refs/remotes/origin/wangcc

<<<<<<< HEAD
	public Sys_user() {
		super();
		// TODO Auto-generated constructor stub
	}

=======
    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_user.user_state
     *
     * @param userState the value for sys_user.user_state
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    public void setUserState(Integer userState) {
        this.userState = userState;
    }
>>>>>>> refs/remotes/origin/wangcc
}