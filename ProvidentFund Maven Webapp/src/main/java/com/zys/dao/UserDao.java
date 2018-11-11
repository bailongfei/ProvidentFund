package com.zys.dao;


import java.util.List;
import java.util.Map;

import com.zys.entity.User;


public interface UserDao {
	public List<Map<String,Object>> queryAll();
	public int updatePwd(User us);
	public User findByAccount(String account);
    public User queryById(int id);//¸ù¾Ýid²éÑ¯
}