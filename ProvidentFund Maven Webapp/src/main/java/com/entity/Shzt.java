package com.entity;

public class Shzt {
    private Integer shbh;

    private String shxq;

    private String ����ԭ��;

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

    public String get����ԭ��() {
        return ����ԭ��;
    }

    public void set����ԭ��(String ����ԭ��) {
        this.����ԭ�� = ����ԭ�� == null ? null : ����ԭ��.trim();
    }
}