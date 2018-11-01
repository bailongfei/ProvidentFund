package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Unitposition;

public interface UnitpositionMapper {
	public List<Map<String,Object>> queryZw();
    int deleteByPrimaryKey(Integer unitpositionid);

    int insert(Unitposition record);

    int insertSelective(Unitposition record);

    Unitposition selectByPrimaryKey(Integer unitpositionid);

    int updateByPrimaryKeySelective(Unitposition record);

    int updateByPrimaryKey(Unitposition record);
}