package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Roles;
import com.entity.Rolesmodule;
import com.entity.Usertable;

public interface AdminDao {
	// ��֤��½
	public Usertable queryUser(String username);

	public int createUser(Usertable user);

	// ��Ȩ�޲�ѯ��ӵ�е�ģ��
	public List<Map<String, Object>> findModules(String userName);

	// ��ѯ���н�ɫ
	public List<Roles> findAllRoles();

	// ��ӽ�ɫ
	public void saveRoles(Roles roles);

	// �޸�ǰ�Ĳ�ѯ
	public List<Map<String, Object>> findByIdRoles(Integer rolesId);

	// �޸�
	public void updateRoles(Roles roles);

	// ɾ��
	public void deleteRoles(Integer rolesId);

	// ��ѯ����Ա��
	public List<Map<String, Object>> findUsertables();

	// ���Ա��
	public void saveUsers(Map<String, Object> map);

	// �޸�ǰ�ĵĲ�ѯ
	public List<Map<String, Object>> findUsersById(Integer userId);

	// �޸�Ա����Ϣ
	public void updateUsertable(Map<String, Object> map);

	// ɾ��Ա��
	public void deleteUsers(Integer userId);

	// ��ѯ���в˵������ȡ����Ӧ��ɫ��ŵĲ˵�
	public List<Map<String, Object>> findAllMenusByRoleId(int rolesId);

	// ɾ���м����ָ����ɫid��Ӧ������
	public void deleteRolesModule(int rolesId);

	// ����ɫ�˵��м���в�������
	public void saveRolesModule(Rolesmodule rolModue);

	// ��ѯ���н�ɫ
	public List<Map<String, Object>> queryAllRoles();
	// public String getStuId();

}
