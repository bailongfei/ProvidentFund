package com.entity;

import java.util.Date;

public class guaporation {
    private Integer dbgsbh;

    private String dbgsmc;

    private String dbgsdz;

    private String lxr;

    private String lxdh;

    private String yqztzs;

    private String cjr;

    private Date cjsj;

    public Integer getDbgsbh() {
        return dbgsbh;
    }

    public void setDbgsbh(Integer dbgsbh) {
        this.dbgsbh = dbgsbh;
    }

    public String getDbgsmc() {
        return dbgsmc;
    }

    public void setDbgsmc(String dbgsmc) {
        this.dbgsmc = dbgsmc == null ? null : dbgsmc.trim();
    }

    public String getDbgsdz() {
        return dbgsdz;
    }

    public void setDbgsdz(String dbgsdz) {
        this.dbgsdz = dbgsdz == null ? null : dbgsdz.trim();
    }

    public String getLxr() {
        return lxr;
    }

    public void setLxr(String lxr) {
        this.lxr = lxr == null ? null : lxr.trim();
    }

    public String getLxdh() {
        return lxdh;
    }

    public void setLxdh(String lxdh) {
        this.lxdh = lxdh == null ? null : lxdh.trim();
    }

    public String getYqztzs() {
        return yqztzs;
    }

    public void setYqztzs(String yqztzs) {
        this.yqztzs = yqztzs == null ? null : yqztzs.trim();
    }

    public String getCjr() {
        return cjr;
    }

    public void setCjr(String cjr) {
        this.cjr = cjr == null ? null : cjr.trim();
    }

    public Date getCjsj() {
        return cjsj;
    }

    public void setCjsj(Date cjsj) {
        this.cjsj = cjsj;
    }
}