package com.dao;

import com.entity.Hjmx;

public interface HjmxMapper {

    int deleteByPrimaryKey(Integer hjmxbh);

    int insert(Hjmx record);

    int insertSelective(Hjmx record);

    Hjmx selectByPrimaryKey(Integer hjmxbh);

    int updateByPrimaryKeySelective(Hjmx record);

    int updateByPrimaryKey(Hjmx record);
}