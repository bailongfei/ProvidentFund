package com.blf.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blf.service.UnitsaccountService;
import com.dao.UnitsaccountMapper;
@Service
public class UnitsaccountServiceimpl implements UnitsaccountService {
 @Autowired
 private UnitsaccountMapper dao;
 
	@Override
	public List<Map<String,Object>> queryUnitinfo() {
		List<Map<String,Object>> list=dao.queryUnccfo();
		return list;
	}

}
