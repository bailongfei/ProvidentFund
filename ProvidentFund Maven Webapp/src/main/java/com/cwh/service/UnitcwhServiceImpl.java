package com.cwh.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UnitsaccountMapper;
import com.entity.Unitsaccount;
@Service
public class UnitcwhServiceImpl implements UnitcwhService{
	@Autowired
private UnitsaccountMapper dao;
	@Override
	public List<Map> queryAllcwh() {
		// TODO Auto-generated method stub
		return dao.queryAllcwh();
	}
	@Override
	public int savecwh(Unitsaccount g) {
		// TODO Auto-generated method stub
		return dao.savecwh(g);
	}

}
