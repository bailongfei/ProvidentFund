package com.llt.service;

import java.util.List;
import java.util.Map;

import com.entity.Sys_user;

public interface UserService {
	//查询用户
   Sys_user queryByAccount(String account);
   List<Map<String, Object>> queryUser(String account);
   //查询角色
   List<Map<String, Object>> queryByRoal(String account);
   //查询菜单
   List<Map<String, Object>> queryMenu(String account);
}
