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

	// ��ѯ��֤��½
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
				System.out.println("������ȷ");
				session.setAttribute("adminUsers", user.getUserName());
				return "1";
			}
		}
		return "2";

	}
/*
	// ��ȡsession
	@RequestMapping("/getSession")
	@ResponseBody
	public String getSession(HttpSession session) {
		String userAccount = (String) session.getAttribute("adminUsers");
		return userAccount;
	}
*/
	
	
	
	// ��ѯģ��
	@RequestMapping("/queryMenu")
	@ResponseBody
	public List<Map<String, Object>> queryMenu(HttpSession session) {
		String username = (String) session.getAttribute("adminUsers");
		System.out.println(username + "session-------------");
		List<Map<String, Object>> list = adminService.findModules(username);
		System.out.println(list.toString());
		return list;
	}

	// ��ѯ����Ȩ��ģ��
	@RequestMapping("/findAllModules")
	@ResponseBody
	public List<Map<String, Object>> findAllModules(@RequestParam int rolesId) {
		System.out.println("findAllModules88888888888888888888888888");
		List<Map<String, Object>> list = adminService.findAllMenusByRoleId(rolesId);
		return list;

	}

	// �޸�Ȩ��--ɾ�����������
	public void allotRight(Modules menuIds, Roles roles) {
		int result = adminService.addOrdeleteRolesModule(menuIds.getModulesId(), roles.getRolesId());
	}

	
	 //���Ա��-��ѯ��ɫ
	@RequestMapping("/queryAllRoles")
	@ResponseBody
	  public PageInfo<Map<String, Object>> queryAllRoles(@RequestParam(required = false, defaultValue = "1") Integer startPage){
		 //@RequestParam(required = false, defaultValue = "3") Integer PageSize
		System.out.println("�����ҳ");
		PageHelper.startPage(startPage, 3);
		List<Map<String, Object>> roles=adminService.queryAllRoles();
		PageInfo<Map<String, Object>> rolesPageInfo=new PageInfo<Map<String,Object>>(roles);
		return rolesPageInfo;
	  }
	
	//Ա����������
	  /*public void getStuId(){
		  System.out.println("getStuId");
		  String id=ps.getStuId();
		  this.getPrintWriter().print(JSON.toJSONString(id));
	  }*/
	  //���Ա�����˻�
	 /* public void addStuff(){
		  
		  ps.addStuffAndUsers(list, list2);
		  Message message=new Message(list2.size(),"�����ɹ�!");
		  this.getPrintWriter().print(JSON.toJSONString(message));
	  }
	 */
	
}
