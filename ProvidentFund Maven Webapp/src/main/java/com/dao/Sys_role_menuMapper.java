package com.dao;

import com.entity.Sys_role_menu;

public interface Sys_role_menuMapper {

    int deleteByPrimaryKey(Integer id2);

    int insert(Sys_role_menu record);

    int insertSelective(Sys_role_menu record);

    Sys_role_menu selectByPrimaryKey(Integer id2);

    int updateByPrimaryKeySelective(Sys_role_menu record);

    int updateByPrimaryKey(Sys_role_menu record);
}