package com.zhl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
		dao.insertSelective(accumulation);
	}
	@Override
	public List<Gjjtqyyb> findtqyy() {
		// TODO Auto-generated method stub
		return tqyydao.findall();
	}

}
