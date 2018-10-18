package com.dao;

import com.entity.unitinfo;

public interface unitinfoMapper {
    int deleteByPrimaryKey(Integer unitinfoid);

    int insert(unitinfo record);

    int insertSelective(unitinfo record);

    unitinfo selectByPrimaryKey(Integer unitinfoid);

    int updateByPrimaryKeySelective(unitinfo record);

    int updateByPrimaryKey(unitinfo record);
}