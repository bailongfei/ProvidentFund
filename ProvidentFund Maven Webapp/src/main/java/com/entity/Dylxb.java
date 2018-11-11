package com.entity;

public class Dylxb {
    private Integer dylxbh;

    private Integer dbhtbh;

    private String dylxmc;

    public Integer getDylxbh() {
        return dylxbh;
    }

    public void setDylxbh(Integer dylxbh) {
        this.dylxbh = dylxbh;
    }

    public Integer getDbhtbh() {
        return dbhtbh;
    }

    public void setDbhtbh(Integer dbhtbh) {
        this.dbhtbh = dbhtbh;
    }

    public String getDylxmc() {
        return dylxmc;
    }

    public void setDylxmc(String dylxmc) {
        this.dylxmc = dylxmc == null ? null : dylxmc.trim();
    }
}