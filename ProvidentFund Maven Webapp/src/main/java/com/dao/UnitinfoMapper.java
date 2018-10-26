package com.dao;

import java.util.List;

import com.entity.Unitinfo;

public interface UnitinfoMapper {
	
	public List<Unitinfo> queryUnitinfo(); 
	
    int deleteByPrimaryKey(Integer unitinfoid);

    int insert(Unitinfo record);

    int insertSelective(Unitinfo record);

    Unitinfo selectByPrimaryKey(Integer unitinfoid);

    int updateByPrimaryKeySelective(Unitinfo record);

    int updateByPrimaryKey(Unitinfo record);
}