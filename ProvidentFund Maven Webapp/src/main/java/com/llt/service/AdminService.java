package com.llt.service;

import java.util.List;
import java.util.Map;

import com.entity.Roles;
import com.entity.Usertable;

public interface AdminService {
	// 验证登陆
	public Usertable queryUser(String username);

	public int createUser(Usertable user);

	// 查询模块
	public List<Map<String, Object>> findModules(String userName);

	// 查询全部角色
	public List<Roles> findAllRoles();

	// 保存或者修改角色
	public void saveOrUpdate(Roles roles);

	// 查询角色
	public List<Map<String, Object>> findByIdRoles(Integer roles);

	// 删除角色
	public void deleteRoles(Integer rolesId);

	// 通过角色id查询模块
	public List<Map<String, Object>> findAllMenusByRoleId(int rolesId);

	// 添加或者删除角色模块中间表
	public void addOrdeleteRolesModule(String menuIds, int rolesId);

	// 查询所有角色
	public List<Map<String, Object>> queryAllRoles();

	// 查询所有员工
	public List<Map<String, Object>> findUsertables();

	// 添加或者修改员工
	public void saveOrUpdateUsers(Map<String, Object> map);

	// 修改前的的查询
	public List<Map<String, Object>> findUsersById(Integer userId);

	// 删除员工
	public void deleteUsers(Integer userId);
}
