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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;
import javax.servlet.http.HttpServletRequest;

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
	
	@RequestMapping("/dologin") //url  
	public String dologin(@RequestBody Usertable user, Model model){  
	    String info = loginUser(user);  
	    if (!"SUCC".equals(info)) {  
	        model.addAttribute("failMsg", "�û������ڻ��������");  
	        System.out.println("�û������ڻ��������111111111111");
	        return "fail";  
	    }else{  
	        model.addAttribute("successMsg", "��½�ɹ���");//���ص�ҳ��˵�д��Ĳ���  
	        model.addAttribute("name", user.getUserName());  
	        return "success";//���ص�ҳ��  
	    }  
	  }  
	  
	@RequestMapping("/logout.do")  
	public void logout(HttpServletRequest request,HttpServletResponse response) throws IOException{  
	    Subject subject = SecurityUtils.getSubject();  
	    if (subject != null) {  
	        try{  
	            subject.logout();  
	        }catch(Exception ex){  
	        }  
	    }  
	    response.sendRedirect("/index.jsp");  
	}  
	  
	private String loginUser(Usertable user) {  
	        if (isRelogin(user)) return "SUCC"; // ����Ѿ���½���������µ�¼  
	          
	        return shiroLogin(user); // ����shiro�ĵ�½��֤  
	}  
	private String shiroLogin(Usertable user) {  
	        // ��װtoken�������ͻ���˾���ơ���ơ��ͻ���š��û����ƣ�����  
		System.out.println("����shiroLogin-------------------------");
	    UsernamePasswordToken token = new UsernamePasswordToken(user.getUserName(), user.getPassword().toCharArray(), null);   
	    token.setRememberMe(true);  
	      
	    // shiro��½��֤  
	    try {  
	        SecurityUtils.getSubject().login(token);  
	    } catch (UnknownAccountException ex) {  
	    	System.out.println("�û������ڻ��������222222222222");
	        return "�û������ڻ����������";  
	    } catch (IncorrectCredentialsException ex) {  
	    	System.out.println("�û������ڻ��������333333333333");
	        return "�û������ڻ����������";  
	    } catch (AuthenticationException ex) {  
	        return ex.getMessage(); // �Զ��屨����Ϣ  
	    } catch (Exception ex) {  
	        ex.printStackTrace();  
	        return "�ڲ����������ԣ�";  
	    }  
	    return "SUCC";  
	}  
	  
	private boolean isRelogin(Usertable user) {  
	    Subject us = SecurityUtils.getSubject();  
	        if (us.isAuthenticated()) {  
	           return true; // ����δ�ı䣬�������µ�¼��Ĭ��Ϊ�Ѿ���¼�ɹ�  
	        }  
	        return false; // ��Ҫ���µ�½  
	}  
     //�������ע��
	@RequestMapping("/regUser")
	public void regUser(@RequestBody Usertable user){
		adminService.createUser(user);
	}
	

	// ��ѯ��֤��½
	/*@ResponseBody
	@RequestMapping("/login.action")
	public String dologin(@RequestBody Usertable user, HttpSession session) {

		List<Map<String, Object>> list = adminService.queryUser(user.getUserName());
		String nameString = (String) list.get(0).get("userName");
		String pwdString = (String) list.get(0).get("password");
		if (user != null) {
			if (user.getUserName().equals(nameString) && user.getPassword().equals(pwdString)) {
				System.out.println("������ȷ");
				session.setAttribute("adminUsers", user.getUserName());
				return "1";
			}
		}
		return "2";

	}*/

	// ��ѯģ��
	@RequestMapping("/queryMenu")
	@ResponseBody
	public List<Map<String, Object>> queryMenu(HttpSession session) {
		String username = (String) session.getAttribute("adminUsers");
		System.out.println(username + "session-------------");
		List<Map<String, Object>> list = adminService.findModules(username);
		return list;
	}

	// ��ѯ����Ȩ��ģ��
	@RequestMapping("/findAllModules")
	@ResponseBody
	public List<Map<String, Object>> findAllModules(@RequestParam int rolesId) {
		System.out.println("��ѯ����Ȩ��ģ��-----------------------");
		List<Map<String, Object>> list = adminService.findAllMenusByRoleId(rolesId);
		return list;

	}

	// �޸�Ȩ��
	@ResponseBody
	@RequestMapping("/dropMenu")
	public void dropMenu(String menuIds, int rolesId) {
		System.out.println("�޸�Ȩ��---------------------------------------");
		adminService.addOrdeleteRolesModule(menuIds, rolesId);
	}

	// ��ѯ��ɫ
	@RequestMapping("/queryAllRoles")
	@ResponseBody
	public PageInfo<Map<String, Object>> queryAllRoles(
			@RequestParam(required = false, defaultValue = "1") Integer startPage) {
		// @RequestParam(required = false, defaultValue = "3") Integer PageSize
		System.out.println("�����ҳ----------------------------");
		PageHelper.startPage(startPage, 3);
		List<Map<String, Object>> roles = adminService.queryAllRoles();
		PageInfo<Map<String, Object>> rolesPageInfo = new PageInfo<Map<String, Object>>(roles);
		return rolesPageInfo;
	}

	// ��ɫɾ��
	@ResponseBody
	@RequestMapping("/deleteRoles")
	public void deleteRoles(Integer rolesId) {
		adminService.deleteRoles(rolesId);
	}

	// ��ɫ�޸�ǰ�Ĳ�ѯ
	@RequestMapping("/updateBeforeQuery")
	@ResponseBody
	public List<Map<String, Object>> updateBeforeQuery(Integer rolesId) {
		List<Map<String, Object>> list = adminService.findByIdRoles(rolesId);
		System.out.println(list.toString());
		return list;
	}

	// �޸Ļ�����
	@ResponseBody
	@RequestMapping("/saveOrUpdate")
	public void saveOrUpdate(@RequestBody Roles roles) {
		System.out.println("�޸Ļ�ɾ��---------------------------------");
		adminService.saveOrUpdate(roles);
	}

	// ��ѯԱ��
	@RequestMapping("/queryAllUsers")
	@ResponseBody
	public PageInfo<Map<String, Object>> queryAllUsers(
			@RequestParam(required = false, defaultValue = "1") Integer startPage) {
		PageHelper.startPage(startPage, 3);
		List<Map<String, Object>> usersList = adminService.findUsertables();
		System.out.println(usersList.toString() + "Ա��---------------------");
		PageInfo<Map<String, Object>> usersPageInfo = new PageInfo<Map<String, Object>>(usersList);
		return usersPageInfo;

	}

	// ɾ��Ա��
	@ResponseBody
	@RequestMapping("/deleteUsers")
	public void deleteUsers(Integer userId) {
		adminService.deleteUsers(userId);
	}

	// �޸Ļ��߱���
	@RequestMapping("/saveOrUpdateUsers")
	@ResponseBody
	public void saveOrUpdateUsers(@RequestBody Map<String, Object> map) {
		System.out.println(map + "�޸�----------------------------");
		adminService.saveOrUpdateUsers(map);
	}

	// �޸�ǰ�Ĳ�ѯ
	@ResponseBody
	@RequestMapping("/updateBeforeQueryUsers")
	public List<Map<String, Object>> updateBeforeQueryUsers(Integer userId) {
		List<Map<String, Object>> list = adminService.findUsersById(userId);
		return list;
	}

	// ��ѯ��ɫ
	@ResponseBody
	@RequestMapping("/queryRoles")
	public List<Map<String, Object>> queryRoles() {
		List<Map<String, Object>> list = adminService.queryAllRoles();
		System.out.println(list.toString() + "------------------------------------------------��ɫ��ѯ");
		return list;
	}

}
