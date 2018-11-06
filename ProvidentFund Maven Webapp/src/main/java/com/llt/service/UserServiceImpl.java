package com.llt.service;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Sys_userMapper;
import com.entity.Sys_user;
@Service
public class UserServiceImpl implements UserService {
@Autowired
private Sys_userMapper userDao;
@Autowired
private RoalService RoalService; 
	@Override
	public Sys_user queryByAccount(String account) {
		// TODO Auto-generated method stub
		System.out.println("ÓÃ»§Ãû"+account);
		return userDao.queryByAccount(account);
	}
	@Override
	public List<Map<String, Object>> queryByRoal(String account) {
		Sys_user user=queryByAccount(account);
		if (user==null) {
			return Collections.EMPTY_LIST;
		}
		return RoalService.queryRoal(account);
	}
	@Override
	public List<Map<String, Object>> queryMenu(String account) {
		Sys_user user=queryByAccount(account);
		if (user==null) {
			return Collections.EMPTY_LIST;
		}
		return RoalService.queryMemu(account);
	}
	@Override
	public List<Map<String, Object>> queryUser(String account) {
		// TODO Auto-generated method stub
		return userDao.queryUser(account);
	}
	

}
