package com.dao;

import com.entity.Dyhtxx;

public interface DyhtxxMapper {
    int deleteByPrimaryKey(Integer dbhtbh);

    int insert(Dyhtxx record);

    int insertSelective(Dyhtxx record);

    Dyhtxx selectByPrimaryKey(Integer dbhtbh);

    int updateByPrimaryKeySelective(Dyhtxx record);

    int updateByPrimaryKey(Dyhtxx record);
}