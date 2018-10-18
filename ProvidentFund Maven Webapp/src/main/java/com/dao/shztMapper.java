package com.dao;

import com.entity.shzt;

public interface shztMapper {
    int deleteByPrimaryKey(Integer shbh);

    int insert(shzt record);

    int insertSelective(shzt record);

    shzt selectByPrimaryKey(Integer shbh);

    int updateByPrimaryKeySelective(shzt record);

    int updateByPrimaryKey(shzt record);
}