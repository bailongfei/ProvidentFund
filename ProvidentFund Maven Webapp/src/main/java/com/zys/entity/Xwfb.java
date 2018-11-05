package com.zys.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
public class Xwfb {
private int xwbh;
private int userId;
private String xwbt;
@DateTimeFormat(pattern="yyyy-MM-dd")
private Date fbsj;
private String xwnr;
private String fbr;
private Date gqsj;
private int xwzt;

public int getXwbh() {
	return xwbh;
}
public void setXwbh(int xwbh) {
	this.xwbh = xwbh;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public String getXwbt() {
	return xwbt;
}
public void setXwbt(String xwbt) {
	this.xwbt = xwbt;
}
public Date getFbsj() {
	return fbsj;
}
public void setFbsj(Date fbsj) {
	this.fbsj = fbsj;
}
public String getXwnr() {
	return xwnr;
}
public void setXwnr(String xwnr) {
	this.xwnr = xwnr;
}
public String getFbr() {
	return fbr;
}
public void setFbr(String fbr) {
	this.fbr = fbr;
}
public Date getGqsj() {
	return gqsj;
}
public void setGqsj(Date gqsj) {
	this.gqsj = gqsj;
}
public int getXwzt() {
	return xwzt;
}
public void setXwzt(int xwzt) {
	this.xwzt = xwzt;
}
public Xwfb(int xwbh, int userId, String xwbt, Date fbsj, String xwnr, String fbr, Date gqsj, int xwzt) {
	super();
	this.xwbh = xwbh;
	this.userId = userId;
	this.xwbt = xwbt;
	this.fbsj = fbsj;
	this.xwnr = xwnr;
	this.fbr = fbr;
	this.gqsj = gqsj;
	this.xwzt = xwzt;
}
public Xwfb() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "Xwfb [xwbh=" + xwbh + ", userId=" + userId + ", xwbt=" + xwbt + ", fbsj=" + fbsj + ", xwnr=" + xwnr
			+ ", fbr=" + fbr + ", gqsj=" + gqsj + ", xwzt=" + xwzt + "]";
}
}
