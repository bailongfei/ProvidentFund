package com.entity;

import java.util.Date;

public class perbusiness {
    private Integer perbuid;

    private Integer personno;

    private Integer grzhbhs;

    private Integer netinfoid;

    private String grpersonids;

    private Date grperbutime;

    private String grperbutype;

    private Long perbulimit;

    private String retrievingmeans;

    private String grapprovalstatuss;

    private String settlementstatus;

    private String strike;

    private Long unitadvancep;

    private Long personadvancep;

    private String bglx;

    public Integer getPerbuid() {
        return perbuid;
    }

    public void setPerbuid(Integer perbuid) {
        this.perbuid = perbuid;
    }

    public Integer getPersonno() {
        return personno;
    }

    public void setPersonno(Integer personno) {
        this.personno = personno;
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

    public Long getPerbulimit() {
        return perbulimit;
    }

    public void setPerbulimit(Long perbulimit) {
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

    public Long getUnitadvancep() {
        return unitadvancep;
    }

    public void setUnitadvancep(Long unitadvancep) {
        this.unitadvancep = unitadvancep;
    }

    public Long getPersonadvancep() {
        return personadvancep;
    }

    public void setPersonadvancep(Long personadvancep) {
        this.personadvancep = personadvancep;
    }

    public String getBglx() {
        return bglx;
    }

    public void setBglx(String bglx) {
        this.bglx = bglx == null ? null : bglx.trim();
    }
}