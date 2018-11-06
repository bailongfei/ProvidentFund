package com.llt.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Roles;
import com.entity.Usertable;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.llt.service.AdminService;

@Controller
@RequestMapping("/login")
public class AdminController {

	@Autowired
	private AdminService adminService;

	// 查询验证登陆
	@ResponseBody
	@RequestMapping("/login.action")
	public String dologin(@RequestBody Usertable user, HttpSession session) {

		List<Map<String, Object>> list = adminService.queryUser(user.getUserName());

		System.out.println(list.toString());
		System.out.println(list.get(0).get("userId"));
		System.out.println(list.get(0).get("userName"));

		String nameString = (String) list.get(0).get("userName");
		String pwdString = (String) list.get(0).get("password");
		System.out.println(list.get(0).get("password"));
		if (user != null) {
			if (user.getUserName().equals(nameString) && user.getPassword().equals(pwdString)) {
				System.out.println("密码正确");
				session.setAttribute("adminUsers", user.getUserName());
				return "1";
				// return "frame/views/index";
			}
		}
		return "2";
		// return "redirect:frame/views/user/login";

	}

	// 查询模块
	@RequestMapping("/queryMenu")
	@ResponseBody
	public List<Map<String, Object>> queryMenu(HttpSession session) {
		String username = (String) session.getAttribute("adminUsers");
		System.out.println(username + "session-------------");
		List<Map<String, Object>> list = adminService.findModules(username);
		return list;
	}

	// 查询所有权限模块
	@RequestMapping("/findAllModules")
	@ResponseBody
	public List<Map<String, Object>> findAllModules(@RequestParam int rolesId) {
		System.out.println("查询所有权限模块-----------------------");
		List<Map<String, Object>> list = adminService.findAllMenusByRoleId(rolesId);
		return list;

	}

	// 修改权限
	@ResponseBody
	@RequestMapping("/dropMenu")
	public void dropMenu(String menuIds, int rolesId) {
		System.out.println("修改权限---------------------------------------");
		adminService.addOrdeleteRolesModule(menuIds, rolesId);
	}

	// 查询角色
	@RequestMapping("/queryAllRoles")
	@ResponseBody
	public PageInfo<Map<String, Object>> queryAllRoles(
			@RequestParam(required = false, defaultValue = "1") Integer startPage) {
		// @RequestParam(required = false, defaultValue = "3") Integer PageSize
		System.out.println("进入分页----------------------------");
		PageHelper.startPage(startPage, 3);
		List<Map<String, Object>> roles = adminService.queryAllRoles();
		PageInfo<Map<String, Object>> rolesPageInfo = new PageInfo<Map<String, Object>>(roles);
		return rolesPageInfo;
	}

	// 角色删除
	@ResponseBody
	@RequestMapping("/deleteRoles")
	public void deleteRoles(Integer rolesId) {
		adminService.deleteRoles(rolesId);
	}

	// 角色修改前的查询
	@RequestMapping("/updateBeforeQuery")
	@ResponseBody
	public List<Map<String, Object>> updateBeforeQuery(Integer rolesId) {
		List<Map<String, Object>> list = adminService.findByIdRoles(rolesId);
		System.out.println(list.toString());
		return list;
	}

	// 修改或增加
	@ResponseBody
	@RequestMapping("/saveOrUpdate")
	public void saveOrUpdate(@RequestBody Roles roles) {
		System.out.println("修改或删除---------------------------------");
		adminService.saveOrUpdate(roles);
	}

	// 查询员工
	@RequestMapping("/queryAllUsers")
	@ResponseBody
	public PageInfo<Map<String, Object>> queryAllUsers(
			@RequestParam(required = false, defaultValue = "1") Integer startPage) {
		PageHelper.startPage(startPage, 3);
		List<Map<String, Object>> usersList = adminService.findUsertables();
		System.out.println(usersList.toString()+"员工---------------------");
		PageInfo<Map<String, Object>> usersPageInfo = new PageInfo<Map<String, Object>>(usersList);
		return usersPageInfo;

	}

	// 删除员工
	@ResponseBody
	@RequestMapping("/deleteUsers")
	public void deleteUsers(Integer userId) {
		adminService.deleteUsers(userId);
	}

	// 修改或者保存
	@ResponseBody
	@RequestMapping("/saveOrUpdateUsers")
	public void saveOrUpdateUsers(@RequestBody Usertable usertable) {
		adminService.saveOrUpdateUsers(usertable);
	}

	// 修改前的查询
	@ResponseBody
	@RequestMapping("/updateBeforeQueryUsers")
	public List<Map<String, Object>> updateBeforeQueryUsers(Integer userId) {
		List<Map<String, Object>> list = adminService.findUsersById(userId);
		return list;
	}

}
