package com.dao;

import com.entity.peraccount;

public interface peraccountMapper {
    int deleteByPrimaryKey(Integer grzhbh);

    int insert(peraccount record);

    int insertSelective(peraccount record);

    peraccount selectByPrimaryKey(Integer grzhbh);

    int updateByPrimaryKeySelective(peraccount record);

    int updateByPrimaryKey(peraccount record);
}