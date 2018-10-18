package com.dao;

import com.entity.gjjtqyyb;

public interface gjjtqyybMapper {
    int deleteByPrimaryKey(Integer tqyyid);

    int insert(gjjtqyyb record);

    int insertSelective(gjjtqyyb record);

    gjjtqyyb selectByPrimaryKey(Integer tqyyid);

    int updateByPrimaryKeySelective(gjjtqyyb record);

    int updateByPrimaryKey(gjjtqyyb record);
}