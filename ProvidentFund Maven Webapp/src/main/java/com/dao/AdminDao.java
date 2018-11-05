package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Roles;
import com.entity.Rolesmodule;
import com.entity.Usertable;

public interface AdminDao {
	// 验证登陆
	public List<Map<String, Object>> queryUser(String username);

	// 按权限查询所拥有的模块
	public List<Map<String, Object>> findModules(String userName);

	// 查询所有角色
	public List<Roles> findAllRoles();

	// 添加角色
	public void saveRoles(Roles roles);

	// 修改前的查询
	public List<Map<String, Object>> findByIdRoles(Integer rolesId);

	// 修改
	public void updateRoles(Roles roles);

	// 删除
	public void deleteRoles(Integer rolesId);

	// 查询所有员工
	public List<Map<String, Object>> findUsertables();

	// 添加员工
	public void saveUsers(Map<String, Object> map);

	// 修改前的的查询
	public List<Map<String, Object>> findUsersById(Integer userId);

	// 修改员工信息
	public void updateUsertable(Map<String, Object> map);

	// 删除员工
	public void deleteUsers(Integer userId);

	// 查询所有菜单项，并获取到对应角色编号的菜单
	public List<Map<String, Object>> findAllMenusByRoleId(int rolesId);

	// 删除中间表中指定角色id对应的数据
	public void deleteRolesModule(int rolesId);

	// 往角色菜单中间表中插入数据
	public void saveRolesModule(Rolesmodule rolModue);

	// 查询所有角色
	public List<Map<String, Object>> queryAllRoles();
	// public String getStuId();

}
