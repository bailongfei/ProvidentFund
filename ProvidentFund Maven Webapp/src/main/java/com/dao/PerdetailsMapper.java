package com.dao;

import com.entity.Perdetails;

public interface PerdetailsMapper {
    int deleteByPrimaryKey(Integer personno);

    int insert(Perdetails record);

    int insertSelective(Perdetails record);

    Perdetails selectByPrimaryKey(Integer personno);

    int updateByPrimaryKeySelective(Perdetails record);

    int updateByPrimaryKey(Perdetails record);
}