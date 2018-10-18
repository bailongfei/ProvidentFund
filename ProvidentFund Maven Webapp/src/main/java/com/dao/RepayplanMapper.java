package com.dao;

import com.entity.Repayplan;

public interface RepayplanMapper {
    int deleteByPrimaryKey(Integer jhbh);

    int insert(Repayplan record);

    int insertSelective(Repayplan record);

    Repayplan selectByPrimaryKey(Integer jhbh);

    int updateByPrimaryKeySelective(Repayplan record);

    int updateByPrimaryKey(Repayplan record);
}