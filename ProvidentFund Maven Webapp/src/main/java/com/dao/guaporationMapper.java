package com.dao;

import com.entity.guaporation;

public interface guaporationMapper {
    int deleteByPrimaryKey(Integer dbgsbh);

    int insert(guaporation record);

    int insertSelective(guaporation record);

    guaporation selectByPrimaryKey(Integer dbgsbh);

    int updateByPrimaryKeySelective(guaporation record);

    int updateByPrimaryKey(guaporation record);
}