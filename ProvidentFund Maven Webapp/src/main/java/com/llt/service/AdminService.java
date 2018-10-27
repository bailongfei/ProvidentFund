package com.llt.service;

import java.util.List;
import java.util.Map;

import com.entity.Roles;

public interface AdminService {
	//查询模块
	public List findModules(String userName);
    //查询全部角色
	public List<Roles> findAllRoles();
    //保存或者修改角色
	public void saveOrUpdate(Roles roles);
	//查询角色
	public Map findByIdRoles(Roles roles);
    //删除角色
	public void deleteRoles(Roles roles);
	//通过角色id查询模块
	public List findAllMenusByRoleId(int rolesId);
	//添加或者删除角色模块中间表
	public int addOrdeleteRolesModule(String menuIds, int rolesId);
}
