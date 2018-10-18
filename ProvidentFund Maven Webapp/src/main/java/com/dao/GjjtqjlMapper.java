package com.dao;

import com.entity.Gjjtqjl;

public interface GjjtqjlMapper {
    int deleteByPrimaryKey(Integer tqjlbh);

    int insert(Gjjtqjl record);

    int insertSelective(Gjjtqjl record);

    Gjjtqjl selectByPrimaryKey(Integer tqjlbh);

    int updateByPrimaryKeySelective(Gjjtqjl record);

    int updateByPrimaryKey(Gjjtqjl record);
}