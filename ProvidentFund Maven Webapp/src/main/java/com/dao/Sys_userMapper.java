package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.entity.Sys_user;


public interface Sys_userMapper {
	public List<Map<String,Object>> queryUserss();
	Sys_user queryByAccount(@Param("account") String account);
	List<Map<String, Object>> queryUser(String account);

    int deleteByPrimaryKey(Integer userid);

    int insert(Sys_user record);

    int insertSelective(Sys_user record);

    Sys_user selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(Sys_user record);

    int updateByPrimaryKey(Sys_user record);
}