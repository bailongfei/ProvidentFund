package com.dao;

import com.entity.hjqcb;

public interface hjqcbMapper {
    int deleteByPrimaryKey(Integer hjbh);

    int insert(hjqcb record);

    int insertSelective(hjqcb record);

    hjqcb selectByPrimaryKey(Integer hjbh);

    int updateByPrimaryKeySelective(hjqcb record);

    int updateByPrimaryKey(hjqcb record);
}