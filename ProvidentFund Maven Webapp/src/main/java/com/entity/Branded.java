package com.entity;

public class Branded {
    private Integer lmkbh;

    private Integer grzhbh;

    private Integer bankdetailsid;

    private String brandedid;

    private String password;

    private Integer balance;

    public Integer getLmkbh() {
        return lmkbh;
    }

    public void setLmkbh(Integer lmkbh) {
        this.lmkbh = lmkbh;
    }

    public Integer getGrzhbh() {
        return grzhbh;
    }

    public void setGrzhbh(Integer grzhbh) {
        this.grzhbh = grzhbh;
    }

    public Integer getBankdetailsid() {
        return bankdetailsid;
    }

    public void setBankdetailsid(Integer bankdetailsid) {
        this.bankdetailsid = bankdetailsid;
    }

    public String getBrandedid() {
        return brandedid;
    }

    public void setBrandedid(String brandedid) {
        this.brandedid = brandedid == null ? null : brandedid.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getBalance() {
        return balance;
    }

    public void setBalance(Integer balance) {
        this.balance = balance;
    }
}