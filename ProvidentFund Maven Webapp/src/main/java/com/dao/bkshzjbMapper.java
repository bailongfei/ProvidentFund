package com.dao;

import com.entity.bkshzjbKey;

public interface bkshzjbMapper {
    int deleteByPrimaryKey(bkshzjbKey key);

    int insert(bkshzjbKey record);

    int insertSelective(bkshzjbKey record);
}