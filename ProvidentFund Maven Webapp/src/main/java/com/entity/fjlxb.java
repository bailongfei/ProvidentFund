package com.entity;

public class fjlxb {
    private Integer fubh;

    private String typehouse;

    public Integer getFubh() {
        return fubh;
    }

    public void setFubh(Integer fubh) {
        this.fubh = fubh;
    }

    public String getTypehouse() {
        return typehouse;
    }

    public void setTypehouse(String typehouse) {
        this.typehouse = typehouse == null ? null : typehouse.trim();
    }
}