package com.llt.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;

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

	@ResponseBody
	@RequestMapping("/dologin") // url
	public String dologin(@RequestBody Usertable user,HttpSession session) {

		String info = loginUser(user);
		if (!"SUCC".equals(info)) {
			System.out.println("用户不存在或密码错误！111111111111");
			return "0";
		} else {
			Usertable user1 = adminService.queryUser(user.getUserName());
			session.setAttribute("adminUsers", user1.getUserName());
			return "1";
		}
	}

	// 查询模块
	@RequestMapping("/queryMenu")
	@ResponseBody
	public List<Map<String, Object>> queryMenu(HttpSession session) {
		String username = (String) session.getAttribute("adminUsers");
		List<Map<String, Object>> list = adminService.findModules(username);
		return list;
	}

	@ResponseBody
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Subject subject = SecurityUtils.getSubject();
		System.out.println("进入注销------------------------");
		if (subject != null) {
			try {
				System.out.println("准备注销--------------------");
				subject.logout();
				System.out.println("已经注销----------------------");
			} catch (Exception ex) {
			}
		}
		return "logout";

	}

	private String loginUser(Usertable user) {
		if (isRelogin(user))
			return "SUCC"; // 如果已经登陆，无需重新登录

		return shiroLogin(user); // 调用shiro的登陆验证
	}

	private String shiroLogin(Usertable user) {
		// 组装token，包括客户公司名称、简称、客户编号、用户名称；密码
		System.out.println("进入shiroLogin-------------------------");
		UsernamePasswordToken token = new UsernamePasswordToken(user.getUserName(), user.getPassword().toCharArray(),
				null);
		token.setRememberMe(true);

		// shiro登陆验证
		try {
			SecurityUtils.getSubject().login(token);
		} catch (UnknownAccountException ex) {
			System.out.println("用户不存在或密码错误！222222222222");
			return "用户不存在或者密码错误！";
		} catch (IncorrectCredentialsException ex) {
			System.out.println("用户不存在或密码错误！333333333333");
			return "用户不存在或者密码错误！";
		} catch (AuthenticationException ex) {
			System.out.println("自定义报错信息  ！");
			return ex.getMessage(); // 自定义报错信息
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("内部错误，请重试！");
			return "内部错误，请重试！";
		}
		return "SUCC";
	}

	private boolean isRelogin(Usertable user) {
		Subject us = SecurityUtils.getSubject();
		if (us.isAuthenticated()) {
			return true; // 参数未改变，无需重新登录，默认为已经登录成功
		}
		return false; // 需要重新登陆
	}

	// 密码加密注册
	@RequestMapping("/regUser")
	public void regUser(@RequestBody Usertable user) {
		adminService.createUser(user);
	}

	// 查询验证登陆
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("/login.action") public String dologin(@RequestBody
	 * Usertable user, HttpSession session) {
	 * 
	 * List<Map<String, Object>> list =
	 * adminService.queryUser(user.getUserName()); String nameString = (String)
	 * list.get(0).get("userName"); String pwdString = (String)
	 * list.get(0).get("password"); if (user != null) { if
	 * (user.getUserName().equals(nameString) &&
	 * user.getPassword().equals(pwdString)) { System.out.println("密码正确");
	 * session.setAttribute("adminUsers", user.getUserName()); return "1"; } }
	 * return "2";
	 * 
	 * }
	 */

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
		System.out.println(usersList.toString() + "员工---------------------");
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
	@RequestMapping("/saveOrUpdateUsers")
	@ResponseBody
	public void saveOrUpdateUsers(@RequestBody Map<String, Object> map) {
		System.out.println(map + "修改----------------------------");
		adminService.saveOrUpdateUsers(map);
	}

	// 修改前的查询
	@ResponseBody
	@RequestMapping("/updateBeforeQueryUsers")
	public List<Map<String, Object>> updateBeforeQueryUsers(Integer userId) {
		List<Map<String, Object>> list = adminService.findUsersById(userId);
		return list;
	}

	// 查询角色
	@ResponseBody
	@RequestMapping("/queryRoles")
	public List<Map<String, Object>> queryRoles() {
		List<Map<String, Object>> list = adminService.queryAllRoles();
		System.out.println(list.toString() + "------------------------------------------------角色查询");
		return list;
	}

}
