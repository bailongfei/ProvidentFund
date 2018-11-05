package com.zhl.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.dao.AccumulationMapper;
import com.dao.GjjtqyybMapper;
import com.entity.Accumulation;
import com.entity.Gjjtqyyb;
@Service
public class AccumulationServiceImpl implements AccumulationService {
	@Autowired
	private AccumulationMapper dao;
	@Autowired
	private GjjtqyybMapper tqyydao;
	@Override
	public void SaveAccmulation(Accumulation accumulation) {
		// TODO Auto-generated method stub
		//判断是否空实体类
		StringUtils.isEmpty(accumulation);
		dao.insertSelective(accumulation);
	}
	@Override
	public List<Gjjtqyyb> findtqyy() {
		// TODO Auto-generated method stub
		return tqyydao.findall();
	}
	@Override
	public List<Map<String, Object>> findbyperaccount(String peracId) {
		// TODO Auto-generated method stub
		List<Map<String, Object>> list=dao.findbyperaccount(peracId);
		return list;
	}

}
