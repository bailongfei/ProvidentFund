package com.llt.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.AdminDao;
import com.entity.Modules;
import com.entity.Roles;
import com.entity.Rolesmodule;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDao dao;

	@Override
	public List<Map<String, Object>> queryUser(String username) {
		// TODO Auto-generated method stub
		return dao.queryUser(username);
	}

	@Override
	public List<Map<String, Object>> findModules(String userName) {

		return dao.findModules(userName);
	}

	@Override
	public List<Roles> findAllRoles() {

		return dao.findAllRoles();
	}

	@Override
	public void saveOrUpdate(Roles roles) {
		if (roles.getRolesId() != null && roles.getRolesId() > 0) {
			dao.updateRoles(roles);
		} else {
			dao.saveRoles(roles);
		}

	}

	@Override
	public Map findByIdRoles(Roles roles) {

		return dao.findByIdRoles(roles);
	}

	@Override
	public void deleteRoles(Roles roles) {
		dao.deleteRoles(roles);

	}

	@Override
	public List<Map<String, Object>> findAllMenusByRoleId(int rolesId) {

		return dao.findAllMenusByRoleId(rolesId);
	}

	@Transactional
	@Override
	public int addOrdeleteRolesModule(String menuIds, int rolesId) {
		int result = -1;// ���
		// ˼·��������ɾ���ý�ɫid��Ӧ���м� �����������ݣ��ٰ���Ҫ¼�������¼�뵽�м��
		if (menuIds != null && menuIds.length() > 0) {
			dao.deleteRolesModule(rolesId);// ��ɾ��
			String[] idAry = menuIds.split(",");// �ָ�
			for (int i = 0; i < idAry.length; i++) {
				// �˵�����
				Modules mo = new Modules();
				mo.setModulesId(idAry[i]);
				// ��ɫ����
				Roles ro = new Roles();
				ro.setRolesId(rolesId);
				// �����м�����
				Rolesmodule rm = new Rolesmodule();
				rm.setModules(mo);
				rm.setRoles(ro);
				// �����м�����
				dao.saveRolesModule(rm);
				result++;
			}
		}
		return result;
	}
	//��ѯ���н�ɫ
    public List<Map<String, Object>> queryAllRoles(){
    	return dao.queryAllRoles();
    }

}
