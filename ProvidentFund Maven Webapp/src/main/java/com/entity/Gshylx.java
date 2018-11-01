package com.entity;

public class Gshylx {
    private Integer gshylxbh;

    private String gshylxmc;

    public Integer getGshylxbh() {
        return gshylxbh;
    }

    public void setGshylxbh(Integer gshylxbh) {
        this.gshylxbh = gshylxbh;
    }

    public String getGshylxmc() {
        return gshylxmc;
    }

    public void setGshylxmc(String gshylxmc) {
        this.gshylxmc = gshylxmc == null ? null : gshylxmc.trim();
    }
}