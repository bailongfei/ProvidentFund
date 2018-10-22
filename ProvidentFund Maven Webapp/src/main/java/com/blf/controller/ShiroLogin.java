package com.blf.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public class ShiroLogin {
	//��¼��֤
    @RequestMapping("/shiro-login")
    public String login(@RequestParam("username") String username, 
            @RequestParam("password") String password){
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);        
        try {
            //ִ����֤����. 
            subject.login(token);
        }catch (AuthenticationException ae) {
            System.out.println("��½ʧ��: " + ae.getMessage());
            return "/index";
        }
        
        return "/shiro-success";
    }
}
