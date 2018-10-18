package com.dao;

import com.entity.Fjlxb;

public interface FjlxbMapper {
    int deleteByPrimaryKey(Integer fubh);

    int insert(Fjlxb record);

    int insertSelective(Fjlxb record);

    Fjlxb selectByPrimaryKey(Integer fubh);

    int updateByPrimaryKeySelective(Fjlxb record);

    int updateByPrimaryKey(Fjlxb record);
}