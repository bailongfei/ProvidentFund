package com.blf.service;

import java.util.List;
import java.util.Map;

import com.entity.Unitsaccount;


public interface UnitsaccountService {
	public List<Map<String,Object>> queryUnitinfo();
	public List<Map<String,Object>> queryUnfo(Unitsaccount unitinfoaccount);
}
