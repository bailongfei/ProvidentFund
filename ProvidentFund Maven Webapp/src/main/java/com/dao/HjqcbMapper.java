package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.entity.Hjqcb;
import com.entity.Unitsaccount;

public interface HjqcbMapper {
	public List<Map<String,Object>> queryHjceb(Integer unitinfoaccount);
    int deleteByPrimaryKey(Integer hjbh);
    public List<Map<String,Object>> queryHj(Map<String, Object> map);
    public int getCount(Map<String, Object> map);
    int insert(Hjqcb record);
  //public int insertHjqcb(Hjqcb hq);
    int insertSelective(Hjqcb record);

    Hjqcb selectByPrimaryKey(Integer hjbh);

    int updateByPrimaryKeySelective(Hjqcb record);

    int updateByPrimaryKey(Hjqcb record);
}