package com.entity;

public class Jjlxb {
    private Integer jjlxbh;

    private Integer unitinfoid;

    private String jjlxmc;

    public Integer getJjlxbh() {
        return jjlxbh;
    }

    public void setJjlxbh(Integer jjlxbh) {
        this.jjlxbh = jjlxbh;
    }

    public Integer getUnitinfoid() {
        return unitinfoid;
    }

    public void setUnitinfoid(Integer unitinfoid) {
        this.unitinfoid = unitinfoid;
    }

    public String getJjlxmc() {
        return jjlxmc;
    }

    public void setJjlxmc(String jjlxmc) {
        this.jjlxmc = jjlxmc == null ? null : jjlxmc.trim();
    }
}