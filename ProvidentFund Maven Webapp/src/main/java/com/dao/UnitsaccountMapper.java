package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Unitsaccount;


public interface UnitsaccountMapper {

	public List<Map<String,Object>> queryUnccfo(Map<String,Object> map);

	public List<Map<String,Object>> queryUnfo(Unitsaccount unitinfoaccount);
	public List<Map<String,Object>> queryPageUnfo(Map<String, Object> map);

    public int getPageCount(Map<String, Object> map);
    public int updateunfocc(Map<String, Object> map);
    int deleteByPrimaryKey(Integer unitinfoaccount);

    int insert(Unitsaccount record);

    int insertSelective(Unitsaccount record);


    Unitsaccount selectByPrimaryKey(Integer unitinfoid);

    int updateByPrimaryKeySelective(Unitsaccount record);

    int updateByPrimaryKey(Unitsaccount record);
    //²éÑ¯ËùÓÐ
    public List<Map>queryAllcwh();
    public int savecwh(Unitsaccount g);
}