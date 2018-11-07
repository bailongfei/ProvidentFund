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
import com.entity.Usertable;
import com.llt.util.PasswordHelper;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDao dao;
@Autowired
private PasswordHelper passwordHelper;
	
	 public Usertable createUser(Usertable user) {
	        //加密密码
	        passwordHelper.encryptPassword(user);
	        return dao.createUser(user);
	    }
	@Override
	public Usertable queryUser(String username) {
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
	public List<Map<String, Object>> findByIdRoles(Integer rolesId) {

		return (List<Map<String, Object>>) dao.findByIdRoles(rolesId);
	}

	@Override
	public void deleteRoles(Integer rolesId) {
		dao.deleteRoles(rolesId);

	}

	@Override
	public List<Map<String, Object>> findAllMenusByRoleId(int rolesId) {

		return dao.findAllMenusByRoleId(rolesId);
	}

	@Transactional
	@Override
	public void addOrdeleteRolesModule(String menuIds, int rolesId) {
		// 思路分析：先删除该角色id对应的中间 表中所有数据，再把需要录入的数据录入到中间表
		if (menuIds != null && menuIds.length() > 0) {
			dao.deleteRolesModule(rolesId);// 先删除
			System.out.println("删除权限------------------------------");
			String[] idAry = menuIds.split(",");// 分割
			System.out.println(idAry.toString()+"++++++++++++++++++++++++++++++++++++"+idAry.length);
			for (int i = 0; i < idAry.length; i++) {
				// 菜单对象
				Modules mo = new Modules();
				mo.setModulesId(idAry[i]);
				// 角色对象
				Roles ro = new Roles();
				ro.setRolesId(rolesId);
				// 创建中间表对象
				Rolesmodule rm = new Rolesmodule();
				rm.setModules(mo);
				rm.setRoles(ro);
				// 插入中间表对象
				System.out.println("执行添加----------------------------------------");
				dao.saveRolesModule(rm);
			}
		}
	}
	//查询所有角色
    public List<Map<String, Object>> queryAllRoles(){
    	return dao.queryAllRoles();
    }

	@Override
	public List<Map<String, Object>> findUsertables() {
		// TODO Auto-generated method stub
		return dao.findUsertables();
	}

	@Override
	public void saveOrUpdateUsers(Map<String, Object> map) {
		// TODO Auto-generated method stub
		if (!map.get("userId").equals("")) {
			dao.updateUsertable(map);
		}else {
			dao.saveUsers(map);
		}
	}

	@Override
	public List<Map<String, Object>> findUsersById(Integer userId) {
		// TODO Auto-generated method stub
		return dao.findUsersById(userId);
	}

	@Override
	public void deleteUsers(Integer userId) {
		// TODO Auto-generated method stub
		dao.deleteUsers(userId);
	}

}
