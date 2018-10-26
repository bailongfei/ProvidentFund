package com.dao;

import com.entity.Branded;

public interface BrandedMapper {
    int deleteByPrimaryKey(Integer lmkbh);

    int insert(Branded record);

    int insertSelective(Branded record);

    Branded selectByPrimaryKey(Integer lmkbh);

    int updateByPrimaryKeySelective(Branded record);

    int updateByPrimaryKey(Branded record);
}