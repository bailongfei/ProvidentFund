package com.dao;

import com.entity.Bjqcb;

public interface BjqcbMapper {
    int deleteByPrimaryKey(Integer bjbh);

    int insert(Bjqcb record);

    int insertSelective(Bjqcb record);

    Bjqcb selectByPrimaryKey(Integer bjbh);

    int updateByPrimaryKeySelective(Bjqcb record);

    int updateByPrimaryKey(Bjqcb record);
}