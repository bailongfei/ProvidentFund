package com.entity;

public class gjjtqyyb {
    private Integer tqyyid;

    private Integer accumulation;

    private String cause;

    public Integer getTqyyid() {
        return tqyyid;
    }

    public void setTqyyid(Integer tqyyid) {
        this.tqyyid = tqyyid;
    }

    public Integer getAccumulation() {
        return accumulation;
    }

    public void setAccumulation(Integer accumulation) {
        this.accumulation = accumulation;
    }

    public String getCause() {
        return cause;
    }

    public void setCause(String cause) {
        this.cause = cause == null ? null : cause.trim();
    }
}