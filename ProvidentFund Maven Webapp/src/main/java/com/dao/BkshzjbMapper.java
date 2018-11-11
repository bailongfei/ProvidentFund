package com.dao;

import com.entity.BkshzjbKey;

public interface BkshzjbMapper {

    int deleteByPrimaryKey(BkshzjbKey key);


    int insert(BkshzjbKey record);


    int insertSelective(BkshzjbKey record);
}