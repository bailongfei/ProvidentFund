package com.dao;

import com.entity.Unitposition;

public interface UnitpositionMapper {
    int deleteByPrimaryKey(Integer unitpositionid);

    int insert(Unitposition record);

    int insertSelective(Unitposition record);

    Unitposition selectByPrimaryKey(Integer unitpositionid);

    int updateByPrimaryKeySelective(Unitposition record);

    int updateByPrimaryKey(Unitposition record);
}