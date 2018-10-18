package com.dao;

import com.entity.jointborrower;

public interface jointborrowerMapper {
    int deleteByPrimaryKey(Integer gtjkrbh);

    int insert(jointborrower record);

    int insertSelective(jointborrower record);

    jointborrower selectByPrimaryKey(Integer gtjkrbh);

    int updateByPrimaryKeySelective(jointborrower record);

    int updateByPrimaryKey(jointborrower record);
}