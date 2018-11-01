package com.dao;

import java.util.Map;

import com.entity.Peraccount;

public interface PeraccountMapper {
	public int insertPercc(Map<String,Object> map);
    int deleteByPrimaryKey(Integer grzhbh);

    int insert(Peraccount record);

    int insertSelective(Peraccount record);

    Peraccount selectByPrimaryKey(Integer grzhbh);

    int updateByPrimaryKeySelective(Peraccount record);

    int updateByPrimaryKey(Peraccount record);
}