package com.entity;

public class Peraccount {
    private Integer grzhbh;

    private Integer zhztbh;

    private Integer unitpositionid;

    private Integer unitinfoid;

    private Integer netinfoid;

    private Integer unitinfoaccount;

    private Integer grzhbhs;

    private String peracid;

    private String peracloginpw;

    private String peractransactionpw;

    private Integer peracbalance;

    private String peracupdatestatus;

    private String bkname;

    private String bksex;

    private String phonenum;

    private String idtype;

    private String idnumbers;

    private String birthday;

    private String marital;

    private String education;

    private String email;

    private String postcode;

    private String address;

    private Integer monthlyprofit;

    public Integer getGrzhbh() {
        return grzhbh;
    }

    public void setGrzhbh(Integer grzhbh) {
        this.grzhbh = grzhbh;
    }

    public Integer getZhztbh() {
        return zhztbh;
    }

    public void setZhztbh(Integer zhztbh) {
        this.zhztbh = zhztbh;
    }

    public Integer getUnitpositionid() {
        return unitpositionid;
    }

    public void setUnitpositionid(Integer unitpositionid) {
        this.unitpositionid = unitpositionid;
    }

    public Integer getUnitinfoid() {
        return unitinfoid;
    }

    public void setUnitinfoid(Integer unitinfoid) {
        this.unitinfoid = unitinfoid;
    }

    public Integer getNetinfoid() {
        return netinfoid;
    }

    public void setNetinfoid(Integer netinfoid) {
        this.netinfoid = netinfoid;
    }

    public Integer getUnitinfoaccount() {
        return unitinfoaccount;
    }

    public void setUnitinfoaccount(Integer unitinfoaccount) {
        this.unitinfoaccount = unitinfoaccount;
    }

    public Integer getGrzhbhs() {
        return grzhbhs;
    }

    public void setGrzhbhs(Integer grzhbhs) {
        this.grzhbhs = grzhbhs;
    }

    public String getPeracid() {
        return peracid;
    }

    public void setPeracid(String peracid) {
        this.peracid = peracid == null ? null : peracid.trim();
    }

    public String getPeracloginpw() {
        return peracloginpw;
    }

    public void setPeracloginpw(String peracloginpw) {
        this.peracloginpw = peracloginpw == null ? null : peracloginpw.trim();
    }

    public String getPeractransactionpw() {
        return peractransactionpw;
    }

    public void setPeractransactionpw(String peractransactionpw) {
        this.peractransactionpw = peractransactionpw == null ? null : peractransactionpw.trim();
    }

    public Integer getPeracbalance() {
        return peracbalance;
    }

    public void setPeracbalance(Integer peracbalance) {
        this.peracbalance = peracbalance;
    }

    public String getPeracupdatestatus() {
        return peracupdatestatus;
    }

    public void setPeracupdatestatus(String peracupdatestatus) {
        this.peracupdatestatus = peracupdatestatus == null ? null : peracupdatestatus.trim();
    }

    public String getBkname() {
        return bkname;
    }

    public void setBkname(String bkname) {
        this.bkname = bkname == null ? null : bkname.trim();
    }

    public String getBksex() {
        return bksex;
    }

    public void setBksex(String bksex) {
        this.bksex = bksex == null ? null : bksex.trim();
    }

    public String getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum == null ? null : phonenum.trim();
    }

    public String getIdtype() {
        return idtype;
    }

    public void setIdtype(String idtype) {
        this.idtype = idtype == null ? null : idtype.trim();
    }

    public String getIdnumbers() {
        return idnumbers;
    }

    public void setIdnumbers(String idnumbers) {
        this.idnumbers = idnumbers == null ? null : idnumbers.trim();
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday == null ? null : birthday.trim();
    }

    public String getMarital() {
        return marital;
    }

    public void setMarital(String marital) {
        this.marital = marital == null ? null : marital.trim();
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education == null ? null : education.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode == null ? null : postcode.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Integer getMonthlyprofit() {
        return monthlyprofit;
    }

    public void setMonthlyprofit(Integer monthlyprofit) {
        this.monthlyprofit = monthlyprofit;
    }

	public Peraccount(Integer grzhbh, Integer zhztbh, Integer unitpositionid, Integer unitinfoid, Integer netinfoid,
			Integer unitinfoaccount, Integer grzhbhs, String peracid, String peracloginpw, String peractransactionpw,
			Integer peracbalance, String peracupdatestatus, String bkname, String bksex, String phonenum, String idtype,
			String idnumbers, String birthday, String marital, String education, String email, String postcode,
			String address, Integer monthlyprofit) {
		super();
		this.grzhbh = grzhbh;
		this.zhztbh = zhztbh;
		this.unitpositionid = unitpositionid;
		this.unitinfoid = unitinfoid;
		this.netinfoid = netinfoid;
		this.unitinfoaccount = unitinfoaccount;
		this.grzhbhs = grzhbhs;
		this.peracid = peracid;
		this.peracloginpw = peracloginpw;
		this.peractransactionpw = peractransactionpw;
		this.peracbalance = peracbalance;
		this.peracupdatestatus = peracupdatestatus;
		this.bkname = bkname;
		this.bksex = bksex;
		this.phonenum = phonenum;
		this.idtype = idtype;
		this.idnumbers = idnumbers;
		this.birthday = birthday;
		this.marital = marital;
		this.education = education;
		this.email = email;
		this.postcode = postcode;
		this.address = address;
		this.monthlyprofit = monthlyprofit;
	}

	public Peraccount() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Peraccount(Integer grzhbh, Integer zhztbh) {
		super();
		this.grzhbh = grzhbh;
		this.zhztbh = zhztbh;
	}
}