package com.aaa.service;


import java.util.List;
import java.util.Map;

import com.aaa.entity.User;
public interface UserService {
	public List<Map<String,Object>> queryAll();
	public int updatePwd(User us);
	public User findByAccount(String account);
    public User queryById(int id);//����id��ѯ
}
