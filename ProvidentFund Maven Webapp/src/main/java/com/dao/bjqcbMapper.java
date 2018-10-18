package com.dao;

import com.entity.bjqcb;

public interface bjqcbMapper {
    int deleteByPrimaryKey(Integer bjbh);

    int insert(bjqcb record);

    int insertSelective(bjqcb record);

    bjqcb selectByPrimaryKey(Integer bjbh);

    int updateByPrimaryKeySelective(bjqcb record);

    int updateByPrimaryKey(bjqcb record);
}