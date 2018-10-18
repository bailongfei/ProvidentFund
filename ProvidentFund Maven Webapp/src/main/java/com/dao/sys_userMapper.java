package com.dao;

import com.entity.sys_user;

public interface sys_userMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(sys_user record);

    int insertSelective(sys_user record);

    sys_user selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(sys_user record);

    int updateByPrimaryKey(sys_user record);
}