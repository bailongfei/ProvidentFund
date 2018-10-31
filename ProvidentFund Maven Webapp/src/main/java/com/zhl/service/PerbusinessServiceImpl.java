package com.zhl.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.PerbusinessMapper;
import com.entity.Perbusiness;
@Service
public class PerbusinessServiceImpl implements PerbusinessService {
	@Autowired
	private PerbusinessMapper dao;
	@Override
	public Integer findcount(Map<String, Object> condition) {
		// TODO Auto-generated method stub
		return dao.findcount(condition);
	}
	@Override
	public List<Map<String, Object>> findbycondition(Map<String, Object> condition) {
		// TODO Auto-generated method stub
		return dao.findbycondition(condition);
	}
	@Override
	public List<Perbusiness> findbypage(Integer grzhbhs) {
		// TODO Auto-generated method stub
		return dao.findpage(grzhbhs);
	}
	@Override
	public List<Map> queryAll() {
		// TODO Auto-generated method stub
		return dao.queryAll();
	}

}
