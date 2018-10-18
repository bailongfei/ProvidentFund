package com.dao;

import com.entity.messagement;

public interface messagementMapper {
    int insert(messagement record);

    int insertSelective(messagement record);
}