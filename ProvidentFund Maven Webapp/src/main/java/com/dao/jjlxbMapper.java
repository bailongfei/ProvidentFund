package com.dao;

import com.entity.jjlxb;

public interface jjlxbMapper {
    int deleteByPrimaryKey(Integer jjlxbh);

    int insert(jjlxb record);

    int insertSelective(jjlxb record);

    jjlxb selectByPrimaryKey(Integer jjlxbh);

    int updateByPrimaryKeySelective(jjlxb record);

    int updateByPrimaryKey(jjlxb record);
}