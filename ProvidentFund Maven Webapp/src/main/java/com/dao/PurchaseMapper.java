package com.dao;

import com.entity.Purchase;

public interface PurchaseMapper {
    int deleteByPrimaryKey(Integer gfxxbh);

    int insert(Purchase record);

    int insertSelective(Purchase record);

    Purchase selectByPrimaryKey(Integer gfxxbh);

    int updateByPrimaryKeySelective(Purchase record);

    int updateByPrimaryKey(Purchase record);
}