package com.llt.service;

import java.util.List;
import java.util.Map;

import com.entity.Sys_user;

public interface UserService {
	//��ѯ�û�
   Sys_user queryByAccount(String account);
   List<Map<String, Object>> queryUser(String account);
   //��ѯ��ɫ
   List<Map<String, Object>> queryByRoal(String account);
   //��ѯ�˵�
   List<Map<String, Object>> queryMenu(String account);
}
