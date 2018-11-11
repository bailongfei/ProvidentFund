package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Fjlxb;

public interface FjlxbMapper {


	public List<Map<String,Object>> queryFjlx();

    int deleteByPrimaryKey(Integer fubh);


    int insert(Fjlxb record);

    int insertSelective(Fjlxb record);

    Fjlxb selectByPrimaryKey(Integer fubh);

    int updateByPrimaryKeySelective(Fjlxb record);

    int updateByPrimaryKey(Fjlxb record);
}