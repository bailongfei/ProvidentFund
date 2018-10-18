package com.dao;

import com.entity.individualpay;

public interface individualpayMapper {
    int deleteByPrimaryKey(Integer grzhbhs);

    int insert(individualpay record);

    int insertSelective(individualpay record);

    individualpay selectByPrimaryKey(Integer grzhbhs);

    int updateByPrimaryKeySelective(individualpay record);

    int updateByPrimaryKey(individualpay record);
}