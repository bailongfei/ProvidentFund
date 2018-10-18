package com.dao;

import com.entity.Messagement;

public interface MessagementMapper {
    int insert(Messagement record);

    int insertSelective(Messagement record);
}