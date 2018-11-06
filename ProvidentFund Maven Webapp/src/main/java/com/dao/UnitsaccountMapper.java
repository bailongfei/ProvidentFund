package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Unitsaccount;

public interface UnitsaccountMapper {
	public List<Map<String,Object>> queryUnccfo();
	public List<Map<String,Object>> queryUnfo(Unitsaccount unitinfoaccount);
	public List<Map<String,Object>> queryUnPagefo(Map<String, Object> map);
    public int getUnfoCount(Map<String, Object> map);
    int deleteByPrimaryKey(Integer unitinfoaccount);

    int insert(Unitsaccount record);

    int insertSelective(Unitsaccount record);

    Unitsaccount selectByPrimaryKey(Integer unitinfoaccount);

    int updateByPrimaryKeySelective(Unitsaccount record);

    int updateByPrimaryKey(Unitsaccount record);
}