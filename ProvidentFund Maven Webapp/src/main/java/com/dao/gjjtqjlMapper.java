package com.dao;

import com.entity.gjjtqjl;

public interface gjjtqjlMapper {
    int deleteByPrimaryKey(Integer tqjlbh);

    int insert(gjjtqjl record);

    int insertSelective(gjjtqjl record);

    gjjtqjl selectByPrimaryKey(Integer tqjlbh);

    int updateByPrimaryKeySelective(gjjtqjl record);

    int updateByPrimaryKey(gjjtqjl record);
}