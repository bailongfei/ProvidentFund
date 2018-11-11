package com.dao;

import com.entity.Jjlxb;

public interface JjlxbMapper {

    int deleteByPrimaryKey(Integer jjlxbh);

    int insert(Jjlxb record);

    int insertSelective(Jjlxb record);

    Jjlxb selectByPrimaryKey(Integer jjlxbh);

    int updateByPrimaryKeySelective(Jjlxb record);

    int updateByPrimaryKey(Jjlxb record);
}