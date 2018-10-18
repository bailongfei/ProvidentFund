package com.entity;

public class unitposition {
    private Integer unitpositionid;

    private Integer unitinfoid;

    private String jobtitle;

    public Integer getUnitpositionid() {
        return unitpositionid;
    }

    public void setUnitpositionid(Integer unitpositionid) {
        this.unitpositionid = unitpositionid;
    }

    public Integer getUnitinfoid() {
        return unitinfoid;
    }

    public void setUnitinfoid(Integer unitinfoid) {
        this.unitinfoid = unitinfoid;
    }

    public String getJobtitle() {
        return jobtitle;
    }

    public void setJobtitle(String jobtitle) {
        this.jobtitle = jobtitle == null ? null : jobtitle.trim();
    }
}