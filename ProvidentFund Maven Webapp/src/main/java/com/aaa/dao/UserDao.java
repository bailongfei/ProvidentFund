package com.aaa.dao;


import java.util.List;
import java.util.Map;

import com.aaa.entity.User;

public interface UserDao {
	public List<Map<String,Object>> queryAll();
	public int updatePwd(User us);
	public User findByAccount(String account);
    public User queryById(int id);//����id��ѯ
}