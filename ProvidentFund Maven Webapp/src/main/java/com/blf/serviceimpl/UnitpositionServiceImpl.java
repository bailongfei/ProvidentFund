package com.blf.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blf.service.UnitpositionService;
import com.dao.BrandedMapper;
import com.dao.UnitpositionMapper;
import com.dao.UnitsaccountMapper;
@Service
public class UnitpositionServiceImpl implements UnitpositionService {
@Autowired
private UnitpositionMapper unt;
@Autowired
private BrandedMapper br;
	@Override
	public List<Map<String, Object>> queryZw() {
		List<Map<String, Object>> list=unt.queryZw();
		return list;
	}
	@Override
	public List<Map<String, Object>> queryLmk() {
		 List<Map<String,Object>> list=br.queryLmk();
		return list;
	}

}
