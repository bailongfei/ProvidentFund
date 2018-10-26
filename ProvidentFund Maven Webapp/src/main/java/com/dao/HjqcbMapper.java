package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Hjqcb;
import com.entity.Unitsaccount;

public interface HjqcbMapper {
	public List<Map<String,Object>> queryHjceb(Integer unitinfoaccount);
    int deleteByPrimaryKey(Integer hjbh);

    int insert(Hjqcb record);

    int insertSelective(Hjqcb record);

    Hjqcb selectByPrimaryKey(Integer hjbh);

    int updateByPrimaryKeySelective(Hjqcb record);

    int updateByPrimaryKey(Hjqcb record);
}