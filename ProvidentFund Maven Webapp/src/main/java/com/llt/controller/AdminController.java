package com.llt.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Sys_role;
import com.entity.Sys_user;
import com.llt.service.UserService;

@Controller
@RequestMapping("/login")
public class AdminController {
	@Autowired
	private UserService service;

	public String login(@RequestBody Sys_user user) {
		System.out.println(user.getUserAccount() + "---" + user.getUserPwd());
		Sys_user users = service.queryByAccount(user.getUserAccount());
		System.out.println(users.getUserAccount() + "----------" + users.getUserPwd());
		return "";
	}
	@RequestMapping("/logindo")
	@ResponseBody
	public String dologin(@RequestBody Sys_user user, HttpSession session) {

		List<Map<String, Object>> list = service.queryUser(user.getUserAccount());
		/*
		 * System.out.println(list.toString());
		 * System.out.println(list.get(0).get("userId"));
		 * System.out.println(list.get(0).get("user_account"));
		 */
		String nameString = (String) list.get(0).get("user_account");
		String pwdString = (String) list.get(0).get("user_pwd");
		// System.out.println(list.get(0).get("user_pwd"));
		if (user != null) {
			if (user.getUserAccount().equals(nameString) && user.getUserPwd().equals(pwdString)) {
				System.out.println("密码正确");
				session.setAttribute("adminUsers", user.getUserAccount());
				return "1";
			}
		}
		// return "${pageContext.request.contextPath}/index";
		return "2";

	}
	@RequestMapping("/getSession")
	@ResponseBody
	public String getSession(HttpSession session){
		String userAccount=(String) session.getAttribute("adminUsers");
		return userAccount;
	}

	//查询模块
	
	
    
}
