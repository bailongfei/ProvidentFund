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
		// ��ס�ҹ���isAuthenticated�϶�Ϊfalse��subject.isRememberedΪtrue
		// sessioin.getAttribute("adminUsers")Ϊ�յ������ȥ��ȡ����Ȼ�ͻ�Ƶ��ִ���������
		if (!subject.isAuthenticated() && subject.isRemembered() && session.getAttribute("adminUsers") == null) {
			// ˵���Ǽ�ס�ҹ���
			Object principal = subject.getPrincipal();
			// ��Ϊ����ȥ��ȡ�û�����
			if (principal != null) {
				String username = principal.toString();
				Usertable usertable = AdminService.queryUser(username);
				session.setAttribute("adminUsers", usertable);
			}
		}
		return subject.isAuthenticated() || subject.isRemembered();
	}
}
