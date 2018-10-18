package com.dao;

import com.entity.grzfbkzhxx;

public interface grzfbkzhxxMapper {
    int deleteByPrimaryKey(Integer dkbh);

    int insert(grzfbkzhxx record);

    int insertSelective(grzfbkzhxx record);

    grzfbkzhxx selectByPrimaryKey(Integer dkbh);

    int updateByPrimaryKeySelective(grzfbkzhxx record);

    int updateByPrimaryKey(grzfbkzhxx record);
}