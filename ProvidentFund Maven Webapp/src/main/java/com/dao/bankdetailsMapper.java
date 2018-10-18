package com.dao;

import com.entity.bankdetails;

public interface bankdetailsMapper {
    int deleteByPrimaryKey(Integer bankdetailsid);

    int insert(bankdetails record);

    int insertSelective(bankdetails record);

    bankdetails selectByPrimaryKey(Integer bankdetailsid);

    int updateByPrimaryKeySelective(bankdetails record);

    int updateByPrimaryKey(bankdetails record);
}