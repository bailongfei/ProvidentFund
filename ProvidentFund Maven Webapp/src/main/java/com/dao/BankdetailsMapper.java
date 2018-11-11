package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Bankdetails;

public interface BankdetailsMapper {

    int deleteByPrimaryKey(Integer bankdetailsid);


    int insert(Bankdetails record);

    int insertSelective(Bankdetails record);


    Bankdetails selectByPrimaryKey(Integer bankdetailsid);

    int updateByPrimaryKeySelective(Bankdetails record);

    int updateByPrimaryKey(Bankdetails record);
}