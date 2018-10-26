package com.entity;

import java.util.Date;

public class Repayplan {
    private Integer jhbh;

    private Integer dkbh;

    private Date hkrq;

    private Integer qic;

    private Integer yhbj;

    private Integer yhlx;

    private String yqztzs;

    private String cjrs;

    private Date cjsjs;

    public Integer getJhbh() {
        return jhbh;
    }

    public void setJhbh(Integer jhbh) {
        this.jhbh = jhbh;
    }

    public Integer getDkbh() {
        return dkbh;
    }

    public void setDkbh(Integer dkbh) {
        this.dkbh = dkbh;
    }

    public Date getHkrq() {
        return hkrq;
    }

    public void setHkrq(Date hkrq) {
        this.hkrq = hkrq;
    }

    public Integer getQic() {
        return qic;
    }

    public void setQic(Integer qic) {
        this.qic = qic;
    }

    public Integer getYhbj() {
        return yhbj;
    }

    public void setYhbj(Integer yhbj) {
        this.yhbj = yhbj;
    }

    public Integer getYhlx() {
        return yhlx;
    }

    public void setYhlx(Integer yhlx) {
        this.yhlx = yhlx;
    }

    public String getYqztzs() {
        return yqztzs;
    }

    public void setYqztzs(String yqztzs) {
        this.yqztzs = yqztzs == null ? null : yqztzs.trim();
    }

    public String getCjrs() {
        return cjrs;
    }

    public void setCjrs(String cjrs) {
        this.cjrs = cjrs == null ? null : cjrs.trim();
    }

    public Date getCjsjs() {
        return cjsjs;
    }

    public void setCjsjs(Date cjsjs) {
        this.cjsjs = cjsjs;
    }
}