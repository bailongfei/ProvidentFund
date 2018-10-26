package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Unitsaccount;

public interface UnitsaccountMapper {
	public List<Map<String,Object>> queryUnccfo();
    int deleteByPrimaryKey(Integer unitinfoaccount);

    int insert(Unitsaccount record);

    int insertSelective(Unitsaccount record);

    Unitsaccount selectByPrimaryKey(Integer unitinfoaccount);

    int updateByPrimaryKeySelective(Unitsaccount record);

    int updateByPrimaryKey(Unitsaccount record);
}