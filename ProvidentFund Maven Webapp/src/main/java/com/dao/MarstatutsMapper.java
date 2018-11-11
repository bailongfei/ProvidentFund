package com.dao;

import com.entity.Marstatuts;

public interface MarstatutsMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Marstatuts record);

    int insertSelective(Marstatuts record);

    Marstatuts selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Marstatuts record);

    int updateByPrimaryKey(Marstatuts record);
}