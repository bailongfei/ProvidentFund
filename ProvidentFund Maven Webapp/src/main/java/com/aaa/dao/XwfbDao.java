package com.aaa.dao;

import java.util.List;

import com.aaa.entity.Xwfb;

public interface XwfbDao {
public List<Xwfb> queryXwfb();//��ѯ����
public int insertXwfb(Xwfb xw);//���
public int deleteXwfb(int id);//ɾ��
public Xwfb queryById(int id);//����id��ѯ
public int updateXwfb(Xwfb xw);//�޸�
}
