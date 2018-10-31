package com.dao;

import com.entity.Hjqcb;

public interface HjqcbMapper {
    int deleteByPrimaryKey(Integer hjbh);

    int insert(Hjqcb record);

    int insertSelective(Hjqcb record);

    Hjqcb selectByPrimaryKey(Integer hjbh);

    int updateByPrimaryKeySelective(Hjqcb record);

    int updateByPrimaryKey(Hjqcb record);
}