package com.dao;

import com.entity.Bjmxb;

public interface BjmxbMapper {
    int deleteByPrimaryKey(Integer bjmxbh);

    int insert(Bjmxb record);

    int insertSelective(Bjmxb record);

    Bjmxb selectByPrimaryKey(Integer bjmxbh);

    int updateByPrimaryKeySelective(Bjmxb record);

    int updateByPrimaryKey(Bjmxb record);
}