package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Dylxb;

public interface DylxbMapper {

	public List<Map<String, Object>> Dylxbquery();

    int deleteByPrimaryKey(Integer dylxbh);


    int insert(Dylxb record);

    int insertSelective(Dylxb record);

    Dylxb selectByPrimaryKey(Integer dylxbh);

    int updateByPrimaryKeySelective(Dylxb record);

    int updateByPrimaryKey(Dylxb record);

}