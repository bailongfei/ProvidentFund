package com.llt.util;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Filter extends HttpServlet implements javax.servlet.Filter{

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		 HttpServletRequest request= (HttpServletRequest) req;
		 HttpServletResponse response=(HttpServletResponse) resp;
		 HttpSession session = request.getSession(true);  
		 String url = request.getRequestURI();  
		 String admin =  (String) session.getAttribute("adminUsers");  
	        if (admin == null && url.indexOf("/frame/views/user/login.jsp") == -1  
	               /* && !url.equals("/html/") && !url.equals("/html/admin.do")*/) {  
	            String location = "/frame/views/user/login.jsp";  
	            request.getRequestDispatcher(location).forward(request, response);  
	  
	            System.out.println("�ɹ����ص���������ͼ������վ��̨  :" + url);  
	            response.setHeader("Cache-Control", "no-store");  
	            response.setDateHeader("Expires", 0);  /*���ҳ�滺��*/
	            response.setHeader("Pragma", "no-cache");  
	        } else {  
	            chain.doFilter(request, response);  
	        }  
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
		
	}

}
