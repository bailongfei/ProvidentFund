package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Sys_menu;

public interface Sys_menuMapper {
	   List<Map<String, Object>> queryMenu(String account);
    int deleteByPrimaryKey(Integer menuId);

    int insert(Sys_menu record);

    int insertSelective(Sys_menu record);

    Sys_menu selectByPrimaryKey(Integer menuId);

    int updateByPrimaryKeySelective(Sys_menu record);

    int updateByPrimaryKey(Sys_menu record);
}