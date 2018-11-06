package com.llt.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Sys_user;
import com.llt.service.UserService;
import com.llt.service.UserServiceImpl;

@Controller
@RequestMapping("/login")
public class UserController {
	@Autowired
	private UserService userService;

	//shiro先不用！！！！！
	//@RequestMapping("/shiroLogin")
	public String dologin(Sys_user user, Model model){  
		System.out.println(user.getUserAccount()+"---"+user.getUserPwd());
	    String info = loginUser(user);  
	    if (!"SUCC".equals(info)) {  
	        model.addAttribute("failMsg", "用户不存在或密码错误！");  
	        return "fail";  
	    }else{  
	        model.addAttribute("successMsg", "登陆成功！");//返回到页面说夹带的参数  
	        model.addAttribute("name", user.getUserAccount());
	        return "success";//返回的页面  
	    }  
	  }  
	
	public String shiroLogin(Sys_user user) {
		// 组装token，包括客户公司名称、简称、客户编号、用户名称；密码
		System.out.println("6666666666666666666666"+user.getUserPwd());
		UsernamePasswordToken token = new UsernamePasswordToken(user.getUserAccount(), user.getUserPwd().toCharArray(),
				null);
		token.setRememberMe(true);
		//System.out.println(SecurityUtils.class);
		// shiro登陆验证
		try {
			SecurityUtils.getSubject().login(token);
			System.out.println("www");
		} catch (UnknownAccountException ex) {
			return "用户不存在或者密码错误！";
		} catch (IncorrectCredentialsException ex) {
			return "用户不存在或者密码错误！";
		} catch (AuthenticationException ex) {
			return ex.getMessage(); // 自定义报错信息
		} catch (Exception ex) {
			ex.printStackTrace();
			return "内部错误，请重试！";
		}
		
		return "t1";
	}
	
	private String loginUser(Sys_user user) {  
        if (isRelogin(user)) return "SUCC"; // 如果已经登陆，无需重新登录  
          
        return shiroLogin(user); // 调用shiro的登陆验证  
} 
	
	private boolean isRelogin(Sys_user user) {  
	    Subject us = SecurityUtils.getSubject();  
	        if (us.isAuthenticated()) {  
	           return true; // 参数未改变，无需重新登录，默认为已经登录成功  
	        }  
	        return false; // 需要重新登陆  
	}  
	
	
	@RequestMapping("/findMenu")
	public String findMemu(String account, HttpServletRequest request, Map map) {
		List<Map<String, Object>> menuList = userService.queryMenu(account);
		map.put("menu", menuList);
		return "frame/views/index";

	}
}
