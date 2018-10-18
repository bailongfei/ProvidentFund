package com.dao;

import com.entity.sys_user_role;

public interface sys_user_roleMapper {
    int deleteByPrimaryKey(Integer id3);

    int insert(sys_user_role record);

    int insertSelective(sys_user_role record);

    sys_user_role selectByPrimaryKey(Integer id3);

    int updateByPrimaryKeySelective(sys_user_role record);

    int updateByPrimaryKey(sys_user_role record);
}