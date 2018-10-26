package com.dao;

import com.entity.Jointborrower;

public interface JointborrowerMapper {
    int deleteByPrimaryKey(Integer gtjkrbh);

    int insert(Jointborrower record);

    int insertSelective(Jointborrower record);

    Jointborrower selectByPrimaryKey(Integer gtjkrbh);

    int updateByPrimaryKeySelective(Jointborrower record);

    int updateByPrimaryKey(Jointborrower record);
}