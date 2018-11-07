package com.llt.util;


import org.apache.log4j.Logger;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.entity.Usertable;
import com.llt.service.AdminService;

/**
 * <p>User: Zhang Kaitao
 * <p>Date: 14-1-28
 * <p>Version: 1.0
 */
public class MyShiroRealm extends AuthorizingRealm {

    @Autowired
    private AdminService userService;

 
	
	@Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        String username = (String)principals.getPrimaryPrincipal();

        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
       /* authorizationInfo.setRoles(userService.findRoles(username));
        authorizationInfo.setStringPermissions(userService.findPermissions(username));*/
        return authorizationInfo;
    }

	Logger log=Logger.getLogger(MyShiroRealm.class);
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

        String username = (String)token.getPrincipal();

        Usertable user = userService.queryUser(username);
        log.debug(user);
        if(user == null) {
            throw new UnknownAccountException();//û�ҵ��ʺ�
        }

        if(Boolean.TRUE.equals(user.getLocked())) {
            throw new LockedAccountException(); //�ʺ�����
        }

        //����AuthenticatingRealmʹ��CredentialsMatcher��������ƥ�䣬��������˼ҵĲ��ÿ����Զ���ʵ��
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
                user.getUserName(), //�û���
                user.getPassword(), //����
                ByteSource.Util.bytes(user.getCredentialsSalt()),//salt=username+salt
                getName()  //realm name
        );
        return authenticationInfo;
    }

    
}