package com.entity;

public class Shzt {
    private Integer shbh;

    private String shxq;

    private String 驳回原因;

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

    public String get驳回原因() {
        return 驳回原因;
    }

    public void set驳回原因(String 驳回原因) {
        this.驳回原因 = 驳回原因 == null ? null : 驳回原因.trim();
    }
}