package com.cwh.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.AccumulationMapper;
import com.entity.Accumulation;
@Service
public class AccumcwhServiceImpl implements AccumcwhService{
	@Autowired
private AccumulationMapper dao;
	@Override
	public List<Map> queryAllcwh() {
		// TODO Auto-generated method stub
		return dao.queryAllcwh();
	}
	@Override
	public void updatecwh(Accumulation accumulation) {
		// TODO Auto-generated method stub
		dao.updateByPrimaryKeySelective(accumulation);
	}

}
