package com.dao;

import com.entity.Gslxb;

public interface GslxbMapper {

    int deleteByPrimaryKey(Integer gslxbh);

    int insert(Gslxb record);

    int insertSelective(Gslxb record);

    Gslxb selectByPrimaryKey(Integer gslxbh);

    int updateByPrimaryKeySelective(Gslxb record);

    int updateByPrimaryKey(Gslxb record);
}