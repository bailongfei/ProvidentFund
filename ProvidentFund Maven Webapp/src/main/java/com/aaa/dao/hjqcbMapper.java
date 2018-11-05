package com.aaa.dao;

import java.util.List;

import com.aaa.entity.hjqcb;

public interface hjqcbMapper {
    public List<hjqcb> queryAll();
    public int insert(hjqcb h);
}