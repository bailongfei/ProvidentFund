package com.blf.service;

import java.util.List;
import java.util.Map;

import com.entity.Individualpay;
import com.entity.Peraccount;

public interface individualPayService {
  /*public int insertIparPer(Map<String,Object> map);
  public int insertPercc(Map<String,Object> map);*/
  public int insertIparOrPerccOrUpdatePercc(Map<String,Object> map);
  /*��������*/
  public int saveIparOrperccOrUpdatePercc(Peraccount pecc,Individualpay ip);
  /*���ɲ�ѯ*/
  public List<Map<String,Object>> queryIperss(String UnitInfoAccount,String bkname);
  public Map<String,Object> queryCheckdata(String perId);
}
