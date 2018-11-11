package com.llt.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

    // TODO ִ��Handler֮��ִ�д˷���
    // ��ϵͳ
    // ͳһ�쳣�������з���ִ�����ܼ�أ���preHandle������һ��ʱ��㣬��afterCompletion����һ��ʱ�䣬����ʱ���Ĳ����ִ��ʱ��
    // ʵ�� ϵͳ ͳһ��־��¼
    @Override
    public void afterCompletion(HttpServletRequest request,
            HttpServletResponse response, Object object, Exception exception)
            throws Exception {

    }

    // �����Ҫ��ҳ���ṩһЩ���� �����ݻ�����һЩ��ͼ��Ϣ��ʹ�ô˷���ʵ�� ��modelAndView����
    // TODO ��ִ��Handler����modelAndView֮ǰִ��
    @Override
    public void postHandle(HttpServletRequest request,
            HttpServletResponse response, Object object,
            ModelAndView modelAndView) throws Exception {

    }

    // TODO ��ִ��Handler֮ǰִ��
    // �����û���֤У�顢�û�Ȩ��У��
    @Override
    public boolean preHandle(HttpServletRequest request,
            HttpServletResponse response, Object object) throws Exception {
        // ��ȡ����·��
        String url = request.getRequestURI();
        if (url.indexOf("frame/views/user/login.jsp") >= 0) {
            // ����ǵ�½������ַ�������
            return true;
        }
        if (request.getSession().getAttribute("adminUsers") != null) {
            // �ж��û�����session���Ƿ���ڣ����������
            return true;
        }

        request.getRequestDispatcher("index.jsp").forward(request, response);
        // ��������
        return false;
    }

}
