package com.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ryzy {
    private Integer zyid;

    private Integer ydw;

    private Integer xdw;

    private Integer sqr;

    private String zcstyh;

    private String zrstyh;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date sqsj;

    private String zyyy;
    
    private Date tjsj;

    private Integer shzt;

    private String bhyy;

    public Integer getZyid() {
        return zyid;
    }

    public void setZyid(Integer zyid) {
        this.zyid = zyid;
    }

    public Integer getYdw() {
        return ydw;
    }

    public void setYdw(Integer ydw) {
        this.ydw = ydw;
    }

    public Integer getXdw() {
        return xdw;
    }

    public void setXdw(Integer xdw) {
        this.xdw = xdw;
    }

    public Integer getSqr() {
        return sqr;
    }

    public void setSqr(Integer sqr) {
        this.sqr = sqr;
    }

    public String getZcstyh() {
        return zcstyh;
    }

    public void setZcstyh(String zcstyh) {
        this.zcstyh = zcstyh == null ? null : zcstyh.trim();
    }

    public String getZrstyh() {
        return zrstyh;
    }

    public void setZrstyh(String zrstyh) {
        this.zrstyh = zrstyh == null ? null : zrstyh.trim();
    }

    public Date getSqsj() {
        return sqsj;
    }

    public void setSqsj(Date sqsj) {
        this.sqsj = sqsj;
    }

    public String getZyyy() {
        return zyyy;
    }

    public void setZyyy(String zyyy) {
        this.zyyy = zyyy == null ? null : zyyy.trim();
    }

    public Date getTjsj() {
        return tjsj;
    }

    public void setTjsj(Date tjsj) {
        this.tjsj = tjsj;
    }

    public Integer getShzt() {
        return shzt;
    }

    public void setShzt(Integer shzt) {
        this.shzt = shzt;
    }

    public String getBhyy() {
        return bhyy;
    }

    public void setBhyy(String bhyy) {
        this.bhyy = bhyy == null ? null : bhyy.trim();
    }
}