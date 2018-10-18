package com.entity;

public class messagement {
    private Integer userid;

    private String messageid;

    private String messagecontent;

    private String readstatus;

    private String sendernum;

    private String sendtime;

    private String recipientnum;

    private String readtime;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getMessageid() {
        return messageid;
    }

    public void setMessageid(String messageid) {
        this.messageid = messageid == null ? null : messageid.trim();
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