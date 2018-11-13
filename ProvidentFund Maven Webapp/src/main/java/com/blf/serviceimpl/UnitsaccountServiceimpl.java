package com.blf.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blf.service.UnitsaccountService;
import com.dao.UnitsaccountMapper;
import com.entity.Unitsaccount;
@Service
public class UnitsaccountServiceimpl implements UnitsaccountService {
 @Autowired
 private UnitsaccountMapper dao;
 
	@Override
	public List<Map<String,Object>> queryUnitinfo(Map<String,Object> map) {
		List<Map<String,Object>> list=dao.queryUnccfo(map);
		return list;
	}

	@Override
	public List<Map<String, Object>> queryUnfo(Unitsaccount unitinfoaccount) {
		List<Map<String, Object>> list=dao.queryUnfo(unitinfoaccount);
		return list;
	}

	@Override
	public List<Map<String, Object>> queryUnPagefo(Map<String, Object> map) {
		List<Map<String, Object>> list=dao.queryPageUnfo(map);
		System.out.println("»ã½É:"+list);
		return list;
	}

	@Override
	public int getPageCount(Map<String, Object> map) {
		int i=dao.getPageCount(map);
		System.out.println("ÈËÊý"+i);
		return i;
	}

}
