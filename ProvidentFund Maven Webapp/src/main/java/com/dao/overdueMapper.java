package com.dao;

import com.entity.overdue;

public interface overdueMapper {
    int deleteByPrimaryKey(Integer yqdjbh);

    int insert(overdue record);

    int insertSelective(overdue record);

    overdue selectByPrimaryKey(Integer yqdjbh);

    int updateByPrimaryKeySelective(overdue record);

    int updateByPrimaryKey(overdue record);
}