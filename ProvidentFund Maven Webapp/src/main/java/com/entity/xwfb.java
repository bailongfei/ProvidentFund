package com.entity;

import java.util.Date;

public class xwfb {
    private Integer xwbh;

    private Integer userid;

    private String xwbt;

    private Date fbsj;

    private String xwnr;

    private String fbr;

    private Date gqsj;

    private Integer xwzt;

    public Integer getXwbh() {
        return xwbh;
    }

    public void setXwbh(Integer xwbh) {
        this.xwbh = xwbh;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getXwbt() {
        return xwbt;
    }

    public void setXwbt(String xwbt) {
        this.xwbt = xwbt == null ? null : xwbt.trim();
    }

    public Date getFbsj() {
        return fbsj;
    }

    public void setFbsj(Date fbsj) {
        this.fbsj = fbsj;
    }

    public String getXwnr() {
        return xwnr;
    }

    public void setXwnr(String xwnr) {
        this.xwnr = xwnr == null ? null : xwnr.trim();
    }

    public String getFbr() {
        return fbr;
    }

    public void setFbr(String fbr) {
        this.fbr = fbr == null ? null : fbr.trim();
    }

    public Date getGqsj() {
        return gqsj;
    }

    public void setGqsj(Date gqsj) {
        this.gqsj = gqsj;
    }

    public Integer getXwzt() {
        return xwzt;
    }

    public void setXwzt(Integer xwzt) {
        this.xwzt = xwzt;
    }
}