package com.dao;

import com.entity.Dylxb;

public interface DylxbMapper {
    int deleteByPrimaryKey(Integer dylxbh);

    int insert(Dylxb record);

    int insertSelective(Dylxb record);

    Dylxb selectByPrimaryKey(Integer dylxbh);

    int updateByPrimaryKeySelective(Dylxb record);

    int updateByPrimaryKey(Dylxb record);
}