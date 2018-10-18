package com.entity;

public class xwlx {
    private Integer xwlxbh;

    private Integer xwbh;

    private String xwlxmc;

    public Integer getXwlxbh() {
        return xwlxbh;
    }

    public void setXwlxbh(Integer xwlxbh) {
        this.xwlxbh = xwlxbh;
    }

    public Integer getXwbh() {
        return xwbh;
    }

    public void setXwbh(Integer xwbh) {
        this.xwbh = xwbh;
    }

    public String getXwlxmc() {
        return xwlxmc;
    }

    public void setXwlxmc(String xwlxmc) {
        this.xwlxmc = xwlxmc == null ? null : xwlxmc.trim();
    }
}