package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Sys_role;


public interface Sys_roleMapper {
	List<Map<String, Object>> queryRole(String account);

    int deleteByPrimaryKey(Integer roleId);

    int insert(Sys_role record);

    int insertSelective(Sys_role record);

    Sys_role selectByPrimaryKey(Integer roleId);

    int updateByPrimaryKeySelective(Sys_role record);

    int updateByPrimaryKey(Sys_role record);
}