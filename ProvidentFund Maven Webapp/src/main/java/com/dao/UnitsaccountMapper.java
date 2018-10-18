package com.dao;

import com.entity.Unitsaccount;

public interface UnitsaccountMapper {
    int deleteByPrimaryKey(Integer unitinfoaccount);

    int insert(Unitsaccount record);

    int insertSelective(Unitsaccount record);

    Unitsaccount selectByPrimaryKey(Integer unitinfoaccount);

    int updateByPrimaryKeySelective(Unitsaccount record);

    int updateByPrimaryKey(Unitsaccount record);
}