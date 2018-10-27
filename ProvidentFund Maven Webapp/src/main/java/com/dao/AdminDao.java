package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Roles;
import com.entity.Rolesmodule;



public interface AdminDao {
	//��Ȩ�޲�ѯ��ӵ�е�ģ��
    public	List findModules(String userName);
    //��ѯ���н�ɫ
    public List<Roles> findAllRoles();
    //��ӽ�ɫ
    public void saveRoles(Roles roles);
    //�޸�
    public Map findByIdRoles(Roles roles);
    public void updateRoles(Roles roles);
    //ɾ��
    public void deleteRoles(Roles roles);
  //��ѯ���в˵������ȡ����Ӧ��ɫ��ŵĲ˵�
    public List findAllMenusByRoleId(int rolesId);
  //ɾ���м����ָ����ɫid��Ӧ������
    public void deleteRolesModule(int rolesId);
  //����ɫ�˵��м���в�������
    public void saveRolesModule(Rolesmodule rolModue);
}
