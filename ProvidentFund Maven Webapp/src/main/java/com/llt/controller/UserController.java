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

	//shiro�Ȳ��ã���������
	//@RequestMapping("/shiroLogin")
	public String dologin(Sys_user user, Model model){  
		System.out.println(user.getUserAccount()+"---"+user.getUserPwd());
	    String info = loginUser(user);  
	    if (!"SUCC".equals(info)) {  
	        model.addAttribute("failMsg", "�û������ڻ��������");  
	        return "fail";  
	    }else{  
	        model.addAttribute("successMsg", "��½�ɹ���");//���ص�ҳ��˵�д��Ĳ���  
	        model.addAttribute("name", user.getUserAccount());
	        return "success";//���ص�ҳ��  
	    }  
	  }  
	
	public String shiroLogin(Sys_user user) {
		// ��װtoken�������ͻ���˾���ơ���ơ��ͻ���š��û����ƣ�����
		System.out.println("6666666666666666666666"+user.getUserPwd());
		UsernamePasswordToken token = new UsernamePasswordToken(user.getUserAccount(), user.getUserPwd().toCharArray(),
				null);
		token.setRememberMe(true);
		//System.out.println(SecurityUtils.class);
		// shiro��½��֤
		try {
			SecurityUtils.getSubject().login(token);
			System.out.println("www");
		} catch (UnknownAccountException ex) {
			return "�û������ڻ����������";
		} catch (IncorrectCredentialsException ex) {
			return "�û������ڻ����������";
		} catch (AuthenticationException ex) {
			return ex.getMessage(); // �Զ��屨����Ϣ
		} catch (Exception ex) {
			ex.printStackTrace();
			return "�ڲ����������ԣ�";
		}
		
		return "t1";
	}
	
	private String loginUser(Sys_user user) {  
        if (isRelogin(user)) return "SUCC"; // ����Ѿ���½���������µ�¼  
          
        return shiroLogin(user); // ����shiro�ĵ�½��֤  
} 
	
	private boolean isRelogin(Sys_user user) {  
	    Subject us = SecurityUtils.getSubject();  
	        if (us.isAuthenticated()) {  
	           return true; // ����δ�ı䣬�������µ�¼��Ĭ��Ϊ�Ѿ���¼�ɹ�  
	        }  
	        return false; // ��Ҫ���µ�½  
	}  
	
	
	@RequestMapping("/findMenu")
	public String findMemu(String account, HttpServletRequest request, Map map) {
		List<Map<String, Object>> menuList = userService.queryMenu(account);
		map.put("menu", menuList);
		return "frame/views/index";

	}
}
