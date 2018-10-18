package com.dao;

import com.entity.sys_role;

public interface sys_roleMapper {
    int deleteByPrimaryKey(Integer roleId);

    int insert(sys_role record);

    int insertSelective(sys_role record);

    sys_role selectByPrimaryKey(Integer roleId);

    int updateByPrimaryKeySelective(sys_role record);

    int updateByPrimaryKey(sys_role record);
}