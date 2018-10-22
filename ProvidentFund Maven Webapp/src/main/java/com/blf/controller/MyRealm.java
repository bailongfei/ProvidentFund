package com.blf.controller;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.entity.Sys_user;
import com.dao.Sys_userMapper;

public class MyRealm extends AuthorizingRealm {
    @Autowired
    private Sys_userMapper userdao;    
    String pass;

    /**
     * ��Ȩ:
     * 
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();        
        Object principal = principalCollection.getPrimaryPrincipal();//��ȡ��¼���û���    
        if("admin".equals(principal)){               //����if�����жϸ����¼�û�Ȩ��
            info.addRole("admin");
        }
        if("user".equals(principal)){
            info.addRole("list");
        }
        
        info.addRole("user");
        
        return info;
    }

    /*
     * �û���֤
     * 
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {   
        //1. token �л�ȡ��¼�� username! ע�ⲻ��Ҫ��ȡpassword.
        Object principal = token.getPrincipal();
                
        //2. ���� username ��ѯ���ݿ�õ��û�����Ϣ. 
       /* Sys_user user=userdao.findbyname((String) principal);
        if(user!=null){
            pass=user.getPass();
        }*/
        String credentials = pass;
        //3.������ֵ �������ܵĵ��ϣ��ü��ܳ����Ķ������߰�ȫ�ԣ�һ����ͨ�����ݿ��ѯ�����ġ� �򵥵�˵�����ǰ���������ض��Ķ��������ж�̬���ܣ�������˲�֪�������ֵ���ͽⲻ��������룩
        String source = "abcdefg";
        ByteSource credentialsSalt = new Md5Hash(source);
   
        
        //��ǰ Realm ��name
        String realmName = getName();
        //����ֵʵ����
        SimpleAuthenticationInfo info = 
                new SimpleAuthenticationInfo(principal, credentials, 
                        credentialsSalt, realmName);
        
        return info;
    }

    //init-method ����. 
    public void setCredentialMatcher(){
        HashedCredentialsMatcher  credentialsMatcher = new HashedCredentialsMatcher();    
        credentialsMatcher.setHashAlgorithmName("MD5");//MD5�㷨����
        credentialsMatcher.setHashIterations(1024);//1024��ѭ������      
        setCredentialsMatcher(credentialsMatcher);
    }
    
    
    //�������Ե��������password��ֵ���ܺ�Ľ�������淽�����������û���ӵ����ݿ�����ģ��������ֱ����main��ã�ֱ�����ݿ�����ˣ�ʡʱ��
    public static void main(String[] args) {
        String saltSource = "abcdef";    
        String hashAlgorithmName = "MD5";
        String credentials = "passwor";
        Object salt = new Md5Hash(saltSource);
        int hashIterations = 1024;            
        Object result = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations);
        System.out.println(result);
    }

}
