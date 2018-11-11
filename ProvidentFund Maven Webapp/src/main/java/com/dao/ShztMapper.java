package com.dao;

import com.entity.Shzt;

public interface ShztMapper {

    int deleteByPrimaryKey(Integer shbh);

    int insert(Shzt record);

    int insertSelective(Shzt record);

    Shzt selectByPrimaryKey(Integer shbh);

    int updateByPrimaryKeySelective(Shzt record);

    int updateByPrimaryKey(Shzt record);
}