package com.jym.services;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.jym_PeraccountMapper;
import com.dao.jym_UnitinfoMapper;
import com.entity.Gshylx;
import com.entity.Gslxb;
import com.entity.Jjlxb;
import com.entity.Peraccount;
import com.entity.Unitinfo;
import com.entity.Unitsaccount;

@Service
public class PeraccountServicesImpl implements PeraccountServices{
@Autowired
 private jym_PeraccountMapper dao;
@Autowired
private jym_UnitinfoMapper unitinfoDao;
	@Override
	public int insert(Peraccount p,Unitinfo u) {
		// TODO Auto-generated method stub
		System.out.println("1111111");
		int i1=  unitinfoDao.insertUnitinfo(u);
		System.out.println(u.getUnitinfoid());
		p.setUnitinfoid(u.getUnitinfoid());
		System.out.println("2222222");
		int i2= dao.insert(p);
	
		System.out.println(i2);
		return i2 ;
	}
	@Override
	public Map selectPeraccount(Peraccount p) {
		
		// TODO Auto-generated method stub
		Map map=dao.selectPeraccount(p);
		if(map.size()!=0){
			return map;
		}
		return null;
	}
	@Override
	public Map selectUnitinfot(Unitinfo u) {
		// TODO Auto-generated method stub
		return unitinfoDao.selectUnitinfot(u);
	}
	@Override
	public List selectGshylx(Gshylx g) {
		// TODO Auto-generated method stubs
		return unitinfoDao.selectGshylx(g);
	}
	@Override
	public List selectGslxb(Gslxb s) {
		// TODO Auto-generated method stub
		return unitinfoDao.selectGslxb(s);
	}
	@Override
	public List selectJjlxb(Jjlxb j) {
		// TODO Auto-generated method stub
		return unitinfoDao.selectJjlxb(j);
	}
	@Override
	public int insertUnitinfo1(Unitinfo u) {
		// TODO Auto-generated method stub
		int i1=  unitinfoDao.insertUnitinfo1(u);
		return 0;
	}
	@Override
	public int updateUnitinfo(Unitinfo u) {
		// TODO Auto-generated method stub
		return unitinfoDao.updateUnitinfo(u);
	}
	/*@Override
	public List<Unitinfo> selectUnitinfoId(Integer unitinfoid) {
		// TODO Auto-generated method stub
		return unitinfoDao.selectUnitinfoId(unitinfoid);
	}*/
	@Override
	public int insertUnitsaccount(Unitsaccount n) {
		// TODO Auto-generated method stub
		return unitinfoDao.insertUnitsaccount(n);
	}

	

}
