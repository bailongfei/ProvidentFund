package com.dao;

import com.entity.Accumulation;

public interface AccumulationMapper {
    int deleteByPrimaryKey(Integer accumulation);

    int insert(Accumulation record);

    int insertSelective(Accumulation record);

    Accumulation selectByPrimaryKey(Integer accumulation);

    int updateByPrimaryKeySelective(Accumulation record);

    int updateByPrimaryKey(Accumulation record);
}