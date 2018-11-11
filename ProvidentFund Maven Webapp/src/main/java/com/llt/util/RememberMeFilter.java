package com.llt.util;

import java.security.Principal;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.springframework.beans.factory.annotation.Autowired;

import com.entity.Usertable;
import com.llt.service.AdminService;

public class RememberMeFilter extends FormAuthenticationFilter {
	@Autowired
	private AdminService AdminService;

	@Override
	protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) {
		Subject subject = getSubject(request, response);
		Session session = subject.getSession();
		// 记住我功能isAuthenticated肯定为false，subject.isRemembered为true
		// sessioin.getAttribute("adminUsers")为空的情况再去获取，不然就会频繁执行下面代码
		if (!subject.isAuthenticated() && subject.isRemembered() && session.getAttribute("adminUsers") == null) {
			// 说明是记住我功能
			Object principal = subject.getPrincipal();
			// 不为空再去获取用户操作
			if (principal != null) {
				String username = principal.toString();
				Usertable usertable = AdminService.queryUser(username);
				session.setAttribute("adminUsers", usertable);
			}
		}
		return subject.isAuthenticated() || subject.isRemembered();
	}
}
