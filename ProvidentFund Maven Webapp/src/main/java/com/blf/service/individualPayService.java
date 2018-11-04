package com.blf.service;

import java.util.Map;

import com.entity.Individualpay;
import com.entity.Peraccount;

public interface individualPayService {
  /*public int insertIparPer(Map<String,Object> map);
  public int insertPercc(Map<String,Object> map);*/
  public int insertIparOrPerccOrUpdatePercc(Map<String,Object> map);
  /*批量开户*/
  public int saveIparOrperccOrUpdatePercc(Peraccount pecc,Individualpay ip);
}
