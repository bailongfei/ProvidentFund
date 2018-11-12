package com.jym.services;

import java.util.List;
import java.util.Map;

import com.entity.Gshylx;
import com.entity.Gslxb;
import com.entity.Jjlxb;
import com.entity.Peraccount;
import com.entity.Unitinfo;
import com.entity.Unitsaccount;

public interface PeraccountServices{
	public int insert(Peraccount p,Unitinfo u);
	//添加单位1信息
	public int insertUnitinfo1(Unitinfo u);
	//添加单位2信息
	public int insertUnitinfo2(Unitinfo u);
	//修改
	public int updateUnitinfo(Unitinfo f);
		//添加单位账户信息
	public int insertUnitsaccount(Unitsaccount n);
		//添加单位账户1信息
	public int insertUnitsaccount1(Unitsaccount n);
	//查询单位账户信息
		public List selectUnitsaccount(Unitsaccount n);
		//根据id查单位账户详情
		public Map selectUnitsaccountid(int UnitInfoId);
		//修改单位账户信息
	public int updateUnitsaccount(Unitsaccount record,Unitinfo record1);
	
	public int updateUnitsaccount1(Unitsaccount a);
	//模糊查询name
		public List<Map<String,Object>> queryPageUnfo(Map<String, Object> map);
		//分页
	    public int getPageCount(Map<String, Object> map);
	    
	    //销户 更改单位状态
	    public int updateUaccount(Unitsaccount a);
	  //删除 账户信息
	    public int deleteUnitsaccount(Unitsaccount s,Unitinfo o);
	  //根据社会信用代码查询社会信用代码 验证唯一
		public int selectunitinfocredit(String  unitinfocredit);

	//查询单位信息
	public Map selectUnitinfo(Unitinfo u);
	
	public Map selectPeraccount(Peraccount p);
	public Map selectUnitinfot(Unitinfo u);
	//查询单位行业类型
		public List selectGshylx(Gshylx g);
		//单位公司类型
		 public List selectGslxb(Gslxb s);
		//查询单位经济类型
		   public List selectJjlxb(Jjlxb j);
		
		
		
}
