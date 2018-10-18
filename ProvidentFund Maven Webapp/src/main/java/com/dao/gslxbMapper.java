package com.dao;

import com.entity.gslxb;

public interface gslxbMapper {
    int deleteByPrimaryKey(Integer gslxbh);

    int insert(gslxb record);

    int insertSelective(gslxb record);

    gslxb selectByPrimaryKey(Integer gslxbh);

    int updateByPrimaryKeySelective(gslxb record);

    int updateByPrimaryKey(gslxb record);
}