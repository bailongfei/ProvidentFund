package com.entity;

public class Gslxb {
    private Integer gslxbh;

    private String gslxmc;

    public Integer getGslxbh() {
        return gslxbh;
    }

    public void setGslxbh(Integer gslxbh) {
        this.gslxbh = gslxbh;
    }

    public String getGslxmc() {
        return gslxmc;
    }

    public void setGslxmc(String gslxmc) {
        this.gslxmc = gslxmc == null ? null : gslxmc.trim();
    }
}