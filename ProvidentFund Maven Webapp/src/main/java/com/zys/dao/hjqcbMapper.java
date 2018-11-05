package com.zys.dao;

import java.util.List;

import com.zys.entity.hjqcb;


public interface hjqcbMapper {
    public List<hjqcb> queryAll();
    public int insert(hjqcb h);
}