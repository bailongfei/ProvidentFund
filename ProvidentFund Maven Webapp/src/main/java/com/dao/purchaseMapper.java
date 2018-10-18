package com.dao;

import com.entity.purchase;

public interface purchaseMapper {
    int deleteByPrimaryKey(Integer gfxxbh);

    int insert(purchase record);

    int insertSelective(purchase record);

    purchase selectByPrimaryKey(Integer gfxxbh);

    int updateByPrimaryKeySelective(purchase record);

    int updateByPrimaryKey(purchase record);
}