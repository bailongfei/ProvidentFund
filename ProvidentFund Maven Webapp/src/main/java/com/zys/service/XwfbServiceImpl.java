package com.zys.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zys.dao.XwfbDao;
import com.zys.entity.Xwfb;

@Service
public class XwfbServiceImpl implements XwfbService{
@Autowired
private XwfbDao dao;
//��ѯ����
@Override
public List<Xwfb> queryXwfb() {
	return dao.queryXwfb();
}
//���
	@Override
	public int insertXwfb(Xwfb xw) {
		return dao.insertXwfb(xw);
	}
//ɾ��
	@Override
	public int deleteXwfb(int id) {
		return dao.deleteXwfb(id);
	}
//����id��ѯ
	@Override
	public Xwfb queryById(int id) {
		return dao.queryById(id);
	}
//�޸�
	@Override
	public int updateXwfb(Xwfb xw) {
		return dao.updateXwfb(xw);
	}
	
}
