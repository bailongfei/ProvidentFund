package com.llt.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Sys_menuMapper;
import com.dao.Sys_roleMapper;
import com.entity.Sys_menu;
import com.entity.Sys_role_menu;
@Service
public class RoalServiceImpl implements RoalService {
@Autowired
private Sys_roleMapper roalDao;
@Autowired
private Sys_menuMapper menuDao;
	@Override
	public List<Map<String, Object>> queryRoal(String account) {
		// TODO Auto-generated method stub
		return roalDao.queryRole(account);
	}

	@Override
	public List<Map<String, Object>> queryMemu(String account) {
		// TODO Auto-generated method stub
		return menuDao.queryMenu(account);
	}

}
