package com.dao;

import com.entity.dyhtxx;

public interface dyhtxxMapper {
    int deleteByPrimaryKey(Integer dbhtbh);

    int insert(dyhtxx record);

    int insertSelective(dyhtxx record);

    dyhtxx selectByPrimaryKey(Integer dbhtbh);

    int updateByPrimaryKeySelective(dyhtxx record);

    int updateByPrimaryKey(dyhtxx record);
}