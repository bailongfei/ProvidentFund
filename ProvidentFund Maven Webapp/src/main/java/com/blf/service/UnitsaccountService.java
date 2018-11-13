package com.blf.service;

import java.util.List;
import java.util.Map;

import com.entity.Unitsaccount;


public interface UnitsaccountService {
	public List<Map<String,Object>> queryUnitinfo(Map<String,Object> map);
	public List<Map<String,Object>> queryUnfo(Unitsaccount unitinfoaccount);
	public List<Map<String,Object>> queryUnPagefo(Map<String,Object> map);
	public int getPageCount(Map<String, Object> map);
}
