package com.zys.service;

import java.util.List;

import com.entity.Xwfb;



public interface XwfbService {
	public List<Xwfb> queryXwfb();//��ѯ����
	public int insertXwfb(Xwfb xw);//���
	public int deleteXwfb(int id);//ɾ��
	public Xwfb queryById(int id);//����id��ѯ
	public int updateXwfb(Xwfb xw);//�޸�
	
}
