package com.dao;

import com.entity.perdetails;

public interface perdetailsMapper {
    int deleteByPrimaryKey(Integer personno);

    int insert(perdetails record);

    int insertSelective(perdetails record);

    perdetails selectByPrimaryKey(Integer personno);

    int updateByPrimaryKeySelective(perdetails record);

    int updateByPrimaryKey(perdetails record);
}