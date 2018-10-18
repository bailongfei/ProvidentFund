package com.dao;

import com.entity.networkinfo;

public interface networkinfoMapper {
    int deleteByPrimaryKey(Integer netinfoid);

    int insert(networkinfo record);

    int insertSelective(networkinfo record);

    networkinfo selectByPrimaryKey(Integer netinfoid);

    int updateByPrimaryKeySelective(networkinfo record);

    int updateByPrimaryKey(networkinfo record);
}