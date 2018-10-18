package com.entity;

public class Grzhztb {
    private Integer zhztbh;

    private String zhzt;

    private String zhztsm;

    public Integer getZhztbh() {
        return zhztbh;
    }

    public void setZhztbh(Integer zhztbh) {
        this.zhztbh = zhztbh;
    }

    public String getZhzt() {
        return zhzt;
    }

    public void setZhzt(String zhzt) {
        this.zhzt = zhzt == null ? null : zhzt.trim();
    }

    public String getZhztsm() {
        return zhztsm;
    }

    public void setZhztsm(String zhztsm) {
        this.zhztsm = zhztsm == null ? null : zhztsm.trim();
    }
}