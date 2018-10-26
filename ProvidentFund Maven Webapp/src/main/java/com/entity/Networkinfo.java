package com.entity;

public class Networkinfo {
    private Integer netinfoid;

    private Integer userid;

    private String networkname;

    private String networkaddress;

    private String networkphone;

    public Integer getNetinfoid() {
        return netinfoid;
    }

    public void setNetinfoid(Integer netinfoid) {
        this.netinfoid = netinfoid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getNetworkname() {
        return networkname;
    }

    public void setNetworkname(String networkname) {
        this.networkname = networkname == null ? null : networkname.trim();
    }

    public String getNetworkaddress() {
        return networkaddress;
    }

    public void setNetworkaddress(String networkaddress) {
        this.networkaddress = networkaddress == null ? null : networkaddress.trim();
    }

    public String getNetworkphone() {
        return networkphone;
    }

    public void setNetworkphone(String networkphone) {
        this.networkphone = networkphone == null ? null : networkphone.trim();
    }
}