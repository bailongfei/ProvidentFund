package com.entity;

public class gshylx {
    private Integer gshylxbh;

    private Integer unitinfoid;

    private String gshylxmc;

    public Integer getGshylxbh() {
        return gshylxbh;
    }

    public void setGshylxbh(Integer gshylxbh) {
        this.gshylxbh = gshylxbh;
    }

    public Integer getUnitinfoid() {
        return unitinfoid;
    }

    public void setUnitinfoid(Integer unitinfoid) {
        this.unitinfoid = unitinfoid;
    }

    public String getGshylxmc() {
        return gshylxmc;
    }

    public void setGshylxmc(String gshylxmc) {
        this.gshylxmc = gshylxmc == null ? null : gshylxmc.trim();
    }
}