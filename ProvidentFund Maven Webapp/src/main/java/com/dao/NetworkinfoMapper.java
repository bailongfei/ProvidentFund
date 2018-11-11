package com.dao;

import com.entity.Networkinfo;

public interface NetworkinfoMapper {

    int deleteByPrimaryKey(Integer netinfoid);

    int insert(Networkinfo record);

    int insertSelective(Networkinfo record);

    Networkinfo selectByPrimaryKey(Integer netinfoid);

    int updateByPrimaryKeySelective(Networkinfo record);

    int updateByPrimaryKey(Networkinfo record);
}