package com.entity;


//将Excel每一行数值转换为对象
public class InfoVo {
  private Integer id;
  private Integer code;
  private String name;
  private String date;
  private String money;

  public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}

  public Integer getCode() {
	return code;
}
public void setCode(Integer code) {
	this.code = code;
}
public String getName() {
      return name;
  }
  public void setName(String name) {
      this.name = name;
  }
  public String getDate() {
      return date;
  }
  public void setDate(String date) {
      this.date = date;
  }
  public String getMoney() {
      return money;
  }
  public void setMoney(String money) {
      this.money = money;
  }
}

