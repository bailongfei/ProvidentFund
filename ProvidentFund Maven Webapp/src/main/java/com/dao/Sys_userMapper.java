package com.dao;

import com.entity.Sys_user;

public interface Sys_userMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(Sys_user record);

    int insertSelective(Sys_user record);

    Sys_user selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(Sys_user record);

    int updateByPrimaryKey(Sys_user record);
}