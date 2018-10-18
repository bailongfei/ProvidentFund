package com.dao;

import com.entity.Unitinfo;

public interface UnitinfoMapper {
    int deleteByPrimaryKey(Integer unitinfoid);

    int insert(Unitinfo record);

    int insertSelective(Unitinfo record);

    Unitinfo selectByPrimaryKey(Integer unitinfoid);

    int updateByPrimaryKeySelective(Unitinfo record);

    int updateByPrimaryKey(Unitinfo record);
}