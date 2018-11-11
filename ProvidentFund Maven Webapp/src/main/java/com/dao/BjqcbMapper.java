package com.dao;

import java.util.Map;

import com.entity.Bjqcb;

public interface BjqcbMapper {

	public int saveBujiao(Map<String,Object> map);

    int deleteByPrimaryKey(Integer bjbh);


    int insert(Bjqcb record);


    int insertSelective(Bjqcb record);


    Bjqcb selectByPrimaryKey(Integer bjbh);


    int updateByPrimaryKeySelective(Bjqcb record);


    int updateByPrimaryKey(Bjqcb record);
}