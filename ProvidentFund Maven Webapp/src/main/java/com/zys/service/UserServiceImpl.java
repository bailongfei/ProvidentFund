package com.zys.service;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserDao;
import com.entity.User;

@Service
public class UserServiceImpl implements UserService{
@Autowired
private UserDao dao;
@Override
public List<Map<String,Object>> queryAll() {
	return dao.queryAll();
}
@Override
public User findByAccount(String account) {
	return dao.findByAccount(account);
}
@Override
public int updatePwd(User us) {
	return dao.updatePwd(us);
}
@Override
public User queryById(int id) {
	// TODO Auto-generated method stub
	return dao.queryById(id);
}

}
