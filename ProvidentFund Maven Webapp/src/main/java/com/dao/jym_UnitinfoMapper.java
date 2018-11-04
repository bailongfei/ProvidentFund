package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Gshylx;
import com.entity.Gslxb;
import com.entity.Jjlxb;
import com.entity.Unitinfo;
import com.entity.Unitsaccount;

public interface jym_UnitinfoMapper {
	//添加单位信息
	public int insertUnitinfo(Unitinfo u);
	//添加单位1信息
	public int insertUnitinfo1(Unitinfo u);
	//修改
	public int updateUnitinfo(Unitinfo u);
	//添加单位账户信息
	public int insertUnitsaccount(Unitsaccount n);
	/*	//根据id查询
	public List<Unitinfo> selectUnitinfoId(Integer unitinfoid);*/
	//查询
	public Map selectUnitinfot(Unitinfo u);
	
	//查询单位行业类型
	public List selectGshylx(Gshylx g);
	
	//查询单位行业类型
   public List selectGslxb(Gslxb s);
 
 //查询单位经济类型
   public List selectJjlxb(Jjlxb j);
}
