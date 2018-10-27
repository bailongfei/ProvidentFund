package com.llt.service;

import java.util.List;
import java.util.Map;

import com.entity.Roles;

public interface AdminService {
	//��ѯģ��
	public List findModules(String userName);
    //��ѯȫ����ɫ
	public List<Roles> findAllRoles();
    //��������޸Ľ�ɫ
	public void saveOrUpdate(Roles roles);
	//��ѯ��ɫ
	public Map findByIdRoles(Roles roles);
    //ɾ����ɫ
	public void deleteRoles(Roles roles);
	//ͨ����ɫid��ѯģ��
	public List findAllMenusByRoleId(int rolesId);
	//��ӻ���ɾ����ɫģ���м��
	public int addOrdeleteRolesModule(String menuIds, int rolesId);
}
