package com.dao;

import com.entity.Messagement;

public interface MessagementMapper {
    int deleteByPrimaryKey(Integer messageid);

    int insert(Messagement record);

    int insertSelective(Messagement record);

    Messagement selectByPrimaryKey(Integer messageid);

    int updateByPrimaryKeySelective(Messagement record);

    int updateByPrimaryKey(Messagement record);
}