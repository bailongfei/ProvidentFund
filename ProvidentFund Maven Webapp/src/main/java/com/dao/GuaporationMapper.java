package com.dao;

import com.entity.Guaporation;

public interface GuaporationMapper {

    int deleteByPrimaryKey(Integer dbgsbh);

    int insert(Guaporation record);

    int insertSelective(Guaporation record);

    Guaporation selectByPrimaryKey(Integer dbgsbh);

    int updateByPrimaryKeySelective(Guaporation record);

    int updateByPrimaryKey(Guaporation record);
}