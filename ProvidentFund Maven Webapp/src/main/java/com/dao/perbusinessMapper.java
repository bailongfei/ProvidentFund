package com.dao;

import com.entity.perbusiness;

public interface perbusinessMapper {
    int deleteByPrimaryKey(Integer perbuid);

    int insert(perbusiness record);

    int insertSelective(perbusiness record);

    perbusiness selectByPrimaryKey(Integer perbuid);

    int updateByPrimaryKeySelective(perbusiness record);

    int updateByPrimaryKey(perbusiness record);
}