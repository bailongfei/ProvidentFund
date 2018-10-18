package com.entity;

public class Purchase {
    private Integer gfxxbh;

    private Integer dkxxbh;

    private Integer fubh;

    private String gfxxid;

    private String belocated;

    private Integer acreage;

    private String namehouse;

    private String zjtype;

    private Integer gfbankaccount;

    private Integer houseprice;

    public Integer getGfxxbh() {
        return gfxxbh;
    }

    public void setGfxxbh(Integer gfxxbh) {
        this.gfxxbh = gfxxbh;
    }

    public Integer getDkxxbh() {
        return dkxxbh;
    }

    public void setDkxxbh(Integer dkxxbh) {
        this.dkxxbh = dkxxbh;
    }

    public Integer getFubh() {
        return fubh;
    }

    public void setFubh(Integer fubh) {
        this.fubh = fubh;
    }

    public String getGfxxid() {
        return gfxxid;
    }

    public void setGfxxid(String gfxxid) {
        this.gfxxid = gfxxid == null ? null : gfxxid.trim();
    }

    public String getBelocated() {
        return belocated;
    }

    public void setBelocated(String belocated) {
        this.belocated = belocated == null ? null : belocated.trim();
    }

    public Integer getAcreage() {
        return acreage;
    }

    public void setAcreage(Integer acreage) {
        this.acreage = acreage;
    }

    public String getNamehouse() {
        return namehouse;
    }

    public void setNamehouse(String namehouse) {
        this.namehouse = namehouse == null ? null : namehouse.trim();
    }

    public String getZjtype() {
        return zjtype;
    }

    public void setZjtype(String zjtype) {
        this.zjtype = zjtype == null ? null : zjtype.trim();
    }

    public Integer getGfbankaccount() {
        return gfbankaccount;
    }

    public void setGfbankaccount(Integer gfbankaccount) {
        this.gfbankaccount = gfbankaccount;
    }

    public Integer getHouseprice() {
        return houseprice;
    }

    public void setHouseprice(Integer houseprice) {
        this.houseprice = houseprice;
    }
}