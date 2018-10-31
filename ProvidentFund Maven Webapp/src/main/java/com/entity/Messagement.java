package com.entity;

public class Messagement {
    private Integer messageid;

    private Integer userid;

    private String messagecontent;

    private String readstatus;

    private String sendernum;

    private String sendtime;

    private String recipientnum;

    private String readtime;

    public Integer getMessageid() {
        return messageid;
    }

    public void setMessageid(Integer messageid) {
        this.messageid = messageid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getMessagecontent() {
        return messagecontent;
    }

    public void setMessagecontent(String messagecontent) {
        this.messagecontent = messagecontent == null ? null : messagecontent.trim();
    }

    public String getReadstatus() {
        return readstatus;
    }

    public void setReadstatus(String readstatus) {
        this.readstatus = readstatus == null ? null : readstatus.trim();
    }

    public String getSendernum() {
        return sendernum;
    }

    public void setSendernum(String sendernum) {
        this.sendernum = sendernum == null ? null : sendernum.trim();
    }

    public String getSendtime() {
        return sendtime;
    }

    public void setSendtime(String sendtime) {
        this.sendtime = sendtime == null ? null : sendtime.trim();
    }

    public String getRecipientnum() {
        return recipientnum;
    }

    public void setRecipientnum(String recipientnum) {
        this.recipientnum = recipientnum == null ? null : recipientnum.trim();
    }

    public String getReadtime() {
        return readtime;
    }

    public void setReadtime(String readtime) {
        this.readtime = readtime == null ? null : readtime.trim();
    }
}