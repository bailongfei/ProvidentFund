package com.dao;

import com.entity.Grzfbkzhxx;

public interface GrzfbkzhxxMapper {
    int deleteByPrimaryKey(Integer dkbh);

    int insert(Grzfbkzhxx record);

    int insertSelective(Grzfbkzhxx record);

    Grzfbkzhxx selectByPrimaryKey(Integer dkbh);

    int updateByPrimaryKeySelective(Grzfbkzhxx record);

    int updateByPrimaryKey(Grzfbkzhxx record);
}