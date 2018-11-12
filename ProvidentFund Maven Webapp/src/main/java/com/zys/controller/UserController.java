package com.zys.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.User;
import com.zys.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService service;
	
	@RequestMapping("/queryAll")
	@ResponseBody
	public List<Map<String,Object>> queryAll(){
		List<Map<String,Object>> list=service.queryAll();
		System.out.println(list.get(0));
		return list;
	}
	//修改密码
	 @RequestMapping("/updatePwd")
	 @ResponseBody
	  public void updatePwd(User us,HttpServletResponse response) throws IOException{
		 response.setContentType("text/html;charset=utf-8");
		 PrintWriter out=response.getWriter();
		  int i=service.updatePwd(us);
		  System.out.println(us);
		  if(i>0){
			  out.print("修改成功！");
		  }else{
			  out.print("修改失败！");
		  }
	 }
	 @RequestMapping("/queryByAccount")
	 @ResponseBody
	 public User findByAccount(User us){
		 User tt=service.findByAccount(us.getUser_account());
		return tt;
	 }
	 //根据id查询
	 @RequestMapping("/queryById")
	 @ResponseBody
	 public User queryById(User us){
		 User uu=service.queryById(us.getUserId());
		return uu;
	 }
}
