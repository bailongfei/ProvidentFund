package com.blf.service;

import java.util.List;
import java.util.Map;

import com.entity.Individualpay;
import com.entity.Peraccount;

public interface individualPayService {
  /*public int insertIparPer(Map<String,Object> map);
  public int insertPercc(Map<String,Object> map);*/
  public int insertIparOrPerccOrUpdatePercc(Map<String,Object> map);
  /*批量开户*/
  public int saveIparOrperccOrUpdatePercc(Peraccount pecc,Individualpay ip);
  /*补缴查询*/
  public List<Map<String,Object>> queryIperss(String UnitInfoAccount,String bkname);
  public Map<String,Object> queryCheckdata(String perId);
}
