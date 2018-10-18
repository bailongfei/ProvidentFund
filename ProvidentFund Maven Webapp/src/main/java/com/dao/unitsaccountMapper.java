package com.dao;

import com.entity.unitsaccount;

public interface unitsaccountMapper {
    int deleteByPrimaryKey(Integer unitinfoaccount);

    int insert(unitsaccount record);

    int insertSelective(unitsaccount record);

    unitsaccount selectByPrimaryKey(Integer unitinfoaccount);

    int updateByPrimaryKeySelective(unitsaccount record);

    int updateByPrimaryKey(unitsaccount record);
}