package com.llt.service;

import java.util.List;
import java.util.Map;

import com.entity.Roles;

public interface AdminService {
	// ��֤��½
	public List<Map<String, Object>> queryUser(String username);

	// ��ѯģ��
	public List<Map<String, Object>> findModules(String userName);

	// ��ѯȫ����ɫ
	public List<Roles> findAllRoles();

	// ��������޸Ľ�ɫ
	public void saveOrUpdate(Roles roles);

	// ��ѯ��ɫ
	public Map findByIdRoles(Roles roles);

	// ɾ����ɫ
	public void deleteRoles(Roles roles);

	// ͨ����ɫid��ѯģ��
	public List<Map<String, Object>> findAllMenusByRoleId(int rolesId);

	// ��ӻ���ɾ����ɫģ���м��
	public int addOrdeleteRolesModule(String menuIds, int rolesId);

	// ��ѯ���н�ɫ
	public List<Map<String, Object>> queryAllRoles();
}
