package com.dao;

import com.entity.xwlx;

public interface xwlxMapper {
    int deleteByPrimaryKey(Integer xwlxbh);

    int insert(xwlx record);

    int insertSelective(xwlx record);

    xwlx selectByPrimaryKey(Integer xwlxbh);

    int updateByPrimaryKeySelective(xwlx record);

    int updateByPrimaryKey(xwlx record);
}