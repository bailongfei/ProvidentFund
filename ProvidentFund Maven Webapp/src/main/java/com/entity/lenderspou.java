package com.entity;

public class lenderspou {
    private Integer pobh;

    private Integer dkxxbh;

    private String podwzh;

    private String podwmc;

    private String posjh;

    private String pogjjzh;

    private String poxm;

    private String pozjhm;

    public Integer getPobh() {
        return pobh;
    }

    public void setPobh(Integer pobh) {
        this.pobh = pobh;
    }

    public Integer getDkxxbh() {
        return dkxxbh;
    }

    public void setDkxxbh(Integer dkxxbh) {
        this.dkxxbh = dkxxbh;
    }

    public String getPodwzh() {
        return podwzh;
    }

    public void setPodwzh(String podwzh) {
        this.podwzh = podwzh == null ? null : podwzh.trim();
    }

    public String getPodwmc() {
        return podwmc;
    }

    public void setPodwmc(String podwmc) {
        this.podwmc = podwmc == null ? null : podwmc.trim();
    }

    public String getPosjh() {
        return posjh;
    }

    public void setPosjh(String posjh) {
        this.posjh = posjh == null ? null : posjh.trim();
    }

    public String getPogjjzh() {
        return pogjjzh;
    }

    public void setPogjjzh(String pogjjzh) {
        this.pogjjzh = pogjjzh == null ? null : pogjjzh.trim();
    }

    public String getPoxm() {
        return poxm;
    }

    public void setPoxm(String poxm) {
        this.poxm = poxm == null ? null : poxm.trim();
    }

    public String getPozjhm() {
        return pozjhm;
    }

    public void setPozjhm(String pozjhm) {
        this.pozjhm = pozjhm == null ? null : pozjhm.trim();
    }
}