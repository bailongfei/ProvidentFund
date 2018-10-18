package com.dao;

import com.entity.accumulation;

public interface accumulationMapper {
    int deleteByPrimaryKey(Integer accumulation);

    int insert(accumulation record);

    int insertSelective(accumulation record);

    accumulation selectByPrimaryKey(Integer accumulation);

    int updateByPrimaryKeySelective(accumulation record);

    int updateByPrimaryKey(accumulation record);
}