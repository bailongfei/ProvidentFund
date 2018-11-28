package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Bjqcb;

public interface BjqcbMapper {
	public int saveBujiao(Map<String,Object> map);
    int deleteByPrimaryKey(Integer bjbh);
    public List<Map<String,Object>> queryBjqcbdwmx(Map<String,Object> map);
    public int queryCountBjqcbdwmx(Map<String,Object> map);
    int insert(Bjqcb record);

    int insertSelective(Bjqcb record);

    Bjqcb selectByPrimaryKey(Integer bjbh);

    int updateByPrimaryKeySelective(Bjqcb record);

    int updateByPrimaryKey(Bjqcb record);
}