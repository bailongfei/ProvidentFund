package com.dao;

import com.entity.hjmx;

public interface hjmxMapper {
    int deleteByPrimaryKey(Integer hjmxbh);

    int insert(hjmx record);

    int insertSelective(hjmx record);

    hjmx selectByPrimaryKey(Integer hjmxbh);

    int updateByPrimaryKeySelective(hjmx record);

    int updateByPrimaryKey(hjmx record);
}