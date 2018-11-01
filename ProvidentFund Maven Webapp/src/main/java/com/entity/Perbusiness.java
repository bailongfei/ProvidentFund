package com.entity;

import java.util.Date;

public class Perbusiness {
    private Integer perbuid;

    private Integer grzhbhs;

    private Integer netinfoid;

    private Integer grzhbh;

    private String grpersonids;

    private Date grperbutime;

    private String grperbutype;

    private Integer perbulimit;

    private String retrievingmeans;

    private String grapprovalstatuss;

    private String settlementstatus;

    private String strike;

    private Integer unitadvancep;

    private Integer personadvancep;

    private String bglx;

    public Integer getPerbuid() {
        return perbuid;
    }

    public void setPerbuid(Integer perbuid) {
        this.perbuid = perbuid;
    }

    public Integer getGrzhbhs() {
        return grzhbhs;
    }

    public void setGrzhbhs(Integer grzhbhs) {
        this.grzhbhs = grzhbhs;
    }

    public Integer getNetinfoid() {
        return netinfoid;
    }

    public void setNetinfoid(Integer netinfoid) {
        this.netinfoid = netinfoid;
    }

    public Integer getGrzhbh() {
        return grzhbh;
    }

    public void setGrzhbh(Integer grzhbh) {
        this.grzhbh = grzhbh;
    }

    public String getGrpersonids() {
        return grpersonids;
    }

    public void setGrpersonids(String grpersonids) {
        this.grpersonids = grpersonids == null ? null : grpersonids.trim();
    }

    public Date getGrperbutime() {
        return grperbutime;
    }

    public void setGrperbutime(Date grperbutime) {
        this.grperbutime = grperbutime;
    }

    public String getGrperbutype() {
        return grperbutype;
    }

    public void setGrperbutype(String grperbutype) {
        this.grperbutype = grperbutype == null ? null : grperbutype.trim();
    }

    public Integer getPerbulimit() {
        return perbulimit;
    }

    public void setPerbulimit(Integer perbulimit) {
        this.perbulimit = perbulimit;
    }

    public String getRetrievingmeans() {
        return retrievingmeans;
    }

    public void setRetrievingmeans(String retrievingmeans) {
        this.retrievingmeans = retrievingmeans == null ? null : retrievingmeans.trim();
    }

    public String getGrapprovalstatuss() {
        return grapprovalstatuss;
    }

    public void setGrapprovalstatuss(String grapprovalstatuss) {
        this.grapprovalstatuss = grapprovalstatuss == null ? null : grapprovalstatuss.trim();
    }

    public String getSettlementstatus() {
        return settlementstatus;
    }

    public void setSettlementstatus(String settlementstatus) {
        this.settlementstatus = settlementstatus == null ? null : settlementstatus.trim();
    }

    public String getStrike() {
        return strike;
    }

    public void setStrike(String strike) {
        this.strike = strike == null ? null : strike.trim();
    }

    public Integer getUnitadvancep() {
        return unitadvancep;
    }

    public void setUnitadvancep(Integer unitadvancep) {
        this.unitadvancep = unitadvancep;
    }

    public Integer getPersonadvancep() {
        return personadvancep;
    }

    public void setPersonadvancep(Integer personadvancep) {
        this.personadvancep = personadvancep;
    }

    public String getBglx() {
        return bglx;
    }

    public void setBglx(String bglx) {
        this.bglx = bglx == null ? null : bglx.trim();
    }
}