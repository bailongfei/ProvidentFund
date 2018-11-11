package com.llt.service;

import java.util.List;
import java.util.Map;

import com.entity.Roles;
import com.entity.Usertable;

public interface AdminService {
	// ��֤��½
	public Usertable queryUser(String username);

	public int createUser(Usertable user);

	// ��ѯģ��
	public List<Map<String, Object>> findModules(String userName);

	// ��ѯȫ����ɫ
	public List<Roles> findAllRoles();

	// ��������޸Ľ�ɫ
	public void saveOrUpdate(Roles roles);

	// ��ѯ��ɫ
	public List<Map<String, Object>> findByIdRoles(Integer roles);

	// ɾ����ɫ
	public void deleteRoles(Integer rolesId);

	// ͨ����ɫid��ѯģ��
	public List<Map<String, Object>> findAllMenusByRoleId(int rolesId);

	// ��ӻ���ɾ����ɫģ���м��
	public void addOrdeleteRolesModule(String menuIds, int rolesId);

	// ��ѯ���н�ɫ
	public List<Map<String, Object>> queryAllRoles();

	// ��ѯ����Ա��
	public List<Map<String, Object>> findUsertables();

	// ��ӻ����޸�Ա��
	public void saveOrUpdateUsers(Map<String, Object> map);

	// �޸�ǰ�ĵĲ�ѯ
	public List<Map<String, Object>> findUsersById(Integer userId);

	// ɾ��Ա��
	public void deleteUsers(Integer userId);
}
