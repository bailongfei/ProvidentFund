package com.dao;

import com.entity.Grzhztb;

public interface GrzhztbMapper {
    int deleteByPrimaryKey(Integer zhztbh);

    int insert(Grzhztb record);

    int insertSelective(Grzhztb record);

    Grzhztb selectByPrimaryKey(Integer zhztbh);

    int updateByPrimaryKeySelective(Grzhztb record);

    int updateByPrimaryKey(Grzhztb record);
}