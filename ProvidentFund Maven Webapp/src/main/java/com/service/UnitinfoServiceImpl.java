package com.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UnitinfoMapper;
import com.entity.Unitinfo;
@Service
public class UnitinfoServiceImpl implements UnitinfoService{
	@Autowired
	private UnitinfoMapper dao;
	@Override
	public List<Map> queryAllcwh() {
		// TODO Auto-generated method stub
		
		return dao.queryAllcwh();
	}
	@Override
	public int deletecwh(int UnitInfoId) {
		// TODO Auto-generated method stub
		return dao.deletecwh(UnitInfoId);
	}
	@Override
	public int updateunitinfocwh(Unitinfo u) {
		// TODO Auto-generated method stub
		return dao.updateunitinfocwh(u);
	}
	@Override
	public List<Unitinfo> queryByUnitinfoIdcwh(int unitinfoid) {
		// TODO Auto-generated method stub
		return dao.queryByUnitinfoIdcwh(unitinfoid);
	}
	@Override
	public int savecwh(Unitinfo u) {
		// TODO Auto-generated method stub
		return dao.savecwh(u);
	}

}
