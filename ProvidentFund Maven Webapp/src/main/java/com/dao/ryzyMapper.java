package com.dao;

import com.entity.ryzy;

public interface ryzyMapper {
    int deleteByPrimaryKey(Integer zyid);

    int insert(ryzy record);

    int insertSelective(ryzy record);

    ryzy selectByPrimaryKey(Integer zyid);

    int updateByPrimaryKeySelective(ryzy record);

    int updateByPrimaryKey(ryzy record);
}