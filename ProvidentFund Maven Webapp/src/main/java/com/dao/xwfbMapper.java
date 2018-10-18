package com.dao;

import com.entity.xwfb;

public interface xwfbMapper {
    int deleteByPrimaryKey(Integer xwbh);

    int insert(xwfb record);

    int insertSelective(xwfb record);

    xwfb selectByPrimaryKey(Integer xwbh);

    int updateByPrimaryKeySelective(xwfb record);

    int updateByPrimaryKey(xwfb record);
}