package com.dao;

import com.entity.sys_role_menu;

public interface sys_role_menuMapper {
    int deleteByPrimaryKey(Integer id2);

    int insert(sys_role_menu record);

    int insertSelective(sys_role_menu record);

    sys_role_menu selectByPrimaryKey(Integer id2);

    int updateByPrimaryKeySelective(sys_role_menu record);

    int updateByPrimaryKey(sys_role_menu record);
}