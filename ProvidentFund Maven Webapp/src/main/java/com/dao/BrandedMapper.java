package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Branded;

public interface BrandedMapper {
	public List<Map<String,Object>> queryLmk();
    int deleteByPrimaryKey(Integer lmkbh);

    int insert(Branded record);

    int insertSelective(Branded record);

    Branded selectByPrimaryKey(Integer lmkbh);

    int updateByPrimaryKeySelective(Branded record);

    int updateByPrimaryKey(Branded record);
}