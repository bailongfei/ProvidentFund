package com.zys.dao;

import java.util.List;

import com.zys.entity.Xwfb;


public interface XwfbDao {
public List<Xwfb> queryXwfb();//��ѯ����
public int insertXwfb(Xwfb xw);//���
public int deleteXwfb(int id);//ɾ��
public Xwfb queryById(int id);//����id��ѯ
public int updateXwfb(Xwfb xw);//�޸�
}
