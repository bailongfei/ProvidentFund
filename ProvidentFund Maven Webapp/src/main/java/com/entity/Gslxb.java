package com.entity;

public class Gslxb {
    private Integer gslxbh;

    private Integer unitinfoid;

    private String gslxmc;

    public Integer getGslxbh() {
        return gslxbh;
    }

    public void setGslxbh(Integer gslxbh) {
        this.gslxbh = gslxbh;
    }

    public Integer getUnitinfoid() {
        return unitinfoid;
    }

    public void setUnitinfoid(Integer unitinfoid) {
        this.unitinfoid = unitinfoid;
    }

    public String getGslxmc() {
        return gslxmc;
    }

    public void setGslxmc(String gslxmc) {
        this.gslxmc = gslxmc == null ? null : gslxmc.trim();
    }
}