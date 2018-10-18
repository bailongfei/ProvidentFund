package com.dao;

import com.entity.unitposition;

public interface unitpositionMapper {
    int deleteByPrimaryKey(Integer unitpositionid);

    int insert(unitposition record);

    int insertSelective(unitposition record);

    unitposition selectByPrimaryKey(Integer unitpositionid);

    int updateByPrimaryKeySelective(unitposition record);

    int updateByPrimaryKey(unitposition record);
}