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


import com.entity.Modules;
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
	@RequestMapping("/logindo")
	@ResponseBody
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
			}
		}
		return "2";

	}
/*
	// 获取session
	@RequestMapping("/getSession")
	@ResponseBody
	public String getSession(HttpSession session) {
		String userAccount = (String) session.getAttribute("adminUsers");
		return userAccount;
	}
*/
	
	
	
	// 查询模块
	@RequestMapping("/queryMenu")
	@ResponseBody
	public List<Map<String, Object>> queryMenu(HttpSession session) {
		String username = (String) session.getAttribute("adminUsers");
		System.out.println(username + "session-------------");
		List<Map<String, Object>> list = adminService.findModules(username);
		System.out.println(list.toString());
		return list;
	}

	// 查询所有权限模块
	@RequestMapping("/findAllModules")
	@ResponseBody
	public List<Map<String, Object>> findAllModules(@RequestParam int rolesId) {
		System.out.println("findAllModules88888888888888888888888888");
		List<Map<String, Object>> list = adminService.findAllMenusByRoleId(rolesId);
		return list;

	}

	// 修改权限--删除所有再添加
	public void allotRight(Modules menuIds, Roles roles) {
		int result = adminService.addOrdeleteRolesModule(menuIds.getModulesId(), roles.getRolesId());
	}

	
	 //添加员工-查询角色
	@RequestMapping("/queryAllRoles")
	@ResponseBody
	  public PageInfo<Map<String, Object>> queryAllRoles(@RequestParam(required = false, defaultValue = "1") Integer startPage){
		 //@RequestParam(required = false, defaultValue = "3") Integer PageSize
		System.out.println("进入分页");
		PageHelper.startPage(startPage, 3);
		List<Map<String, Object>> roles=adminService.queryAllRoles();
		PageInfo<Map<String, Object>> rolesPageInfo=new PageInfo<Map<String,Object>>(roles);
		return rolesPageInfo;
	  }
	
	//员工自增序列
	  /*public void getStuId(){
		  System.out.println("getStuId");
		  String id=ps.getStuId();
		  this.getPrintWriter().print(JSON.toJSONString(id));
	  }*/
	  //添加员工和账户
	 /* public void addStuff(){
		  
		  ps.addStuffAndUsers(list, list2);
		  Message message=new Message(list2.size(),"操作成功!");
		  this.getPrintWriter().print(JSON.toJSONString(message));
	  }
	 */
	
}
