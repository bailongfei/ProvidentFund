package com.dao;

import com.entity.Perbusiness;

public interface PerbusinessMapper {
    int deleteByPrimaryKey(Integer perbuid);

    int insert(Perbusiness record);

    int insertSelective(Perbusiness record);

    Perbusiness selectByPrimaryKey(Integer perbuid);

    int updateByPrimaryKeySelective(Perbusiness record);

    int updateByPrimaryKey(Perbusiness record);
}