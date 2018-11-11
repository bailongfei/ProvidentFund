package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Purchase;

public interface PurchaseMapper {
    int deleteByPrimaryKey(Integer gfxxbh);

    int insert(Purchase record);

    int insertSelective(Purchase record);

    Purchase selectByPrimaryKey(Integer gfxxbh);

    int updateByPrimaryKeySelective(Purchase record);

    int updateByPrimaryKey(Purchase record);
    //²éÑ¯ËùÓÐ
    public List<Map>queryAll();
}