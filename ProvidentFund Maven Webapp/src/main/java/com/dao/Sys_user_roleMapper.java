package com.dao;

import com.entity.Sys_user_role;

public interface Sys_user_roleMapper {
    int deleteByPrimaryKey(Integer id3);

    int insert(Sys_user_role record);

    int insertSelective(Sys_user_role record);

    Sys_user_role selectByPrimaryKey(Integer id3);

    int updateByPrimaryKeySelective(Sys_user_role record);

    int updateByPrimaryKey(Sys_user_role record);
}