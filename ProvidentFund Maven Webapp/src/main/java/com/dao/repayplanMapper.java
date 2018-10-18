package com.dao;

import com.entity.repayplan;

public interface repayplanMapper {
    int deleteByPrimaryKey(Integer jhbh);

    int insert(repayplan record);

    int insertSelective(repayplan record);

    repayplan selectByPrimaryKey(Integer jhbh);

    int updateByPrimaryKeySelective(repayplan record);

    int updateByPrimaryKey(repayplan record);
}