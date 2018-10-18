package com.entity;

public class perdetails {
    private Integer personno;

    private Integer unitinfoaccount;

    private Integer unitpositionid;

    private Integer unitinfoid;

    private String grname;

    private String grsex;

    private String phonenums;

    private String idtypes;

    private String idnumber;

    private String birthdays;

    private String maritals;

    private String educations;

    private String gremail;

    private String grpostcode;

    private String graddress;

    public Integer getPersonno() {
        return personno;
    }

    public void setPersonno(Integer personno) {
        this.personno = personno;
    }

    public Integer getUnitinfoaccount() {
        return unitinfoaccount;
    }

    public void setUnitinfoaccount(Integer unitinfoaccount) {
        this.unitinfoaccount = unitinfoaccount;
    }

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

    public String getGrname() {
        return grname;
    }

    public void setGrname(String grname) {
        this.grname = grname == null ? null : grname.trim();
    }

    public String getGrsex() {
        return grsex;
    }

    public void setGrsex(String grsex) {
        this.grsex = grsex == null ? null : grsex.trim();
    }

    public String getPhonenums() {
        return phonenums;
    }

    public void setPhonenums(String phonenums) {
        this.phonenums = phonenums == null ? null : phonenums.trim();
    }

    public String getIdtypes() {
        return idtypes;
    }

    public void setIdtypes(String idtypes) {
        this.idtypes = idtypes == null ? null : idtypes.trim();
    }

    public String getIdnumber() {
        return idnumber;
    }

    public void setIdnumber(String idnumber) {
        this.idnumber = idnumber == null ? null : idnumber.trim();
    }

    public String getBirthdays() {
        return birthdays;
    }

    public void setBirthdays(String birthdays) {
        this.birthdays = birthdays == null ? null : birthdays.trim();
    }

    public String getMaritals() {
        return maritals;
    }

    public void setMaritals(String maritals) {
        this.maritals = maritals == null ? null : maritals.trim();
    }

    public String getEducations() {
        return educations;
    }

    public void setEducations(String educations) {
        this.educations = educations == null ? null : educations.trim();
    }

    public String getGremail() {
        return gremail;
    }

    public void setGremail(String gremail) {
        this.gremail = gremail == null ? null : gremail.trim();
    }

    public String getGrpostcode() {
        return grpostcode;
    }

    public void setGrpostcode(String grpostcode) {
        this.grpostcode = grpostcode == null ? null : grpostcode.trim();
    }

    public String getGraddress() {
        return graddress;
    }

    public void setGraddress(String graddress) {
        this.graddress = graddress == null ? null : graddress.trim();
    }
}