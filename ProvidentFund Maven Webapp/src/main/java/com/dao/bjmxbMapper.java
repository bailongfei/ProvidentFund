package com.dao;

import com.entity.bjmxb;

public interface bjmxbMapper {
    int deleteByPrimaryKey(Integer bjmxbh);

    int insert(bjmxb record);

    int insertSelective(bjmxb record);

    bjmxb selectByPrimaryKey(Integer bjmxbh);

    int updateByPrimaryKeySelective(bjmxb record);

    int updateByPrimaryKey(bjmxb record);
}