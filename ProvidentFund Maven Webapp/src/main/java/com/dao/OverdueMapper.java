package com.dao;

import com.entity.Overdue;

public interface OverdueMapper {

    int deleteByPrimaryKey(Integer yqdjbh);

    int insert(Overdue record);

    int insertSelective(Overdue record);

    Overdue selectByPrimaryKey(Integer yqdjbh);

    int updateByPrimaryKeySelective(Overdue record);

    int updateByPrimaryKey(Overdue record);
}