package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Hjqcb;

public interface HjqcbMapper {
	public List<Map<String,Object>> queryHjceb(Integer unitinfoaccount);
	public List<Map<String,Object>> queryUcOrUf(Integer unitinfoaccount);
    public List<Map<String,Object>> queryHj(Map<String, Object> map);
    public int getCount(Map<String, Object> map);
    int deleteByPrimaryKey(Integer hjbh);

   public int insert(Hjqcb record);

    int insertSelective(Hjqcb record);

    Hjqcb selectByPrimaryKey(Integer hjbh);

    int updateByPrimaryKeySelective(Hjqcb record);

    int updateByPrimaryKey(Hjqcb record);
}