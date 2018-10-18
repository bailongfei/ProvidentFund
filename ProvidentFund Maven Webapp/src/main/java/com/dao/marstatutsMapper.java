package com.dao;

import com.entity.marstatuts;

public interface marstatutsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(marstatuts record);

    int insertSelective(marstatuts record);

    marstatuts selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(marstatuts record);

    int updateByPrimaryKey(marstatuts record);
}