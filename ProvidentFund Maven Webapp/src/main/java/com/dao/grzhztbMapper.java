package com.dao;

import com.entity.grzhztb;

public interface grzhztbMapper {
    int deleteByPrimaryKey(Integer zhztbh);

    int insert(grzhztb record);

    int insertSelective(grzhztb record);

    grzhztb selectByPrimaryKey(Integer zhztbh);

    int updateByPrimaryKeySelective(grzhztb record);

    int updateByPrimaryKey(grzhztb record);
}