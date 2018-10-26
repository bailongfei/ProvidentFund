package com.entity;

public class Shzt {
    private Integer shbh;

    private String shxq;

    private String bhyy;

    public Integer getShbh() {
        return shbh;
    }

    public void setShbh(Integer shbh) {
        this.shbh = shbh;
    }

    public String getShxq() {
        return shxq;
    }

    public void setShxq(String shxq) {
        this.shxq = shxq == null ? null : shxq.trim();
    }

    public String getBhyy() {
        return bhyy;
    }

    public void setBhyy(String bhyy) {
        this.bhyy = bhyy == null ? null : bhyy.trim();
    }
}