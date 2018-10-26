package com.entity;

public class Bankdetails {
    private Integer bankdetailsid;

    private Integer unitinfoaccount;

    private Integer grzhbhs;

    private String bankname;

    public Integer getBankdetailsid() {
        return bankdetailsid;
    }

    public void setBankdetailsid(Integer bankdetailsid) {
        this.bankdetailsid = bankdetailsid;
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

    public String getBankname() {
        return bankname;
    }

    public void setBankname(String bankname) {
        this.bankname = bankname == null ? null : bankname.trim();
    }
}