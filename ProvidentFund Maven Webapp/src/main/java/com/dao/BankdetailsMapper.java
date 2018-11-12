package com.dao;


import com.entity.Bankdetails;

public interface BankdetailsMapper {

    int deleteByPrimaryKey(Integer bankdetailsid);


    int insert(Bankdetails record);

    int insertSelective(Bankdetails record);


    Bankdetails selectByPrimaryKey(Integer bankdetailsid);

    int updateByPrimaryKeySelective(Bankdetails record);

    int updateByPrimaryKey(Bankdetails record);
}