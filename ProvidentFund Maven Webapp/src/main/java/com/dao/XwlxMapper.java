package com.dao;

import com.entity.Xwlx;

public interface XwlxMapper {
    int deleteByPrimaryKey(Integer xwlxbh);

    int insert(Xwlx record);

    int insertSelective(Xwlx record);

    Xwlx selectByPrimaryKey(Integer xwlxbh);

    int updateByPrimaryKeySelective(Xwlx record);

    int updateByPrimaryKey(Xwlx record);
}