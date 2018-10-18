package com.dao;

import com.entity.Xwfb;

public interface XwfbMapper {
    int deleteByPrimaryKey(Integer xwbh);

    int insert(Xwfb record);

    int insertSelective(Xwfb record);

    Xwfb selectByPrimaryKey(Integer xwbh);

    int updateByPrimaryKeySelective(Xwfb record);

    int updateByPrimaryKey(Xwfb record);
}