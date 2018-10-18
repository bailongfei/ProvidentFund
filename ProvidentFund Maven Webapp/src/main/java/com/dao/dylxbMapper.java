package com.dao;

import com.entity.dylxb;

public interface dylxbMapper {
    int deleteByPrimaryKey(Integer dylxbh);

    int insert(dylxb record);

    int insertSelective(dylxb record);

    dylxb selectByPrimaryKey(Integer dylxbh);

    int updateByPrimaryKeySelective(dylxb record);

    int updateByPrimaryKey(dylxb record);
}