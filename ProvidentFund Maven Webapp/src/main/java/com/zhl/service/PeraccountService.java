package com.zhl.service;

import java.util.List;
import java.util.Map;

import com.entity.Peraccount;
import com.zhl.pager.Pager;

public interface PeraccountService {
	//¼��
	public int insert(Peraccount peraccount);
	//��¼
	public Peraccount login(Map<String, Object> map);
	//�˻��ϲ�
	public void AccountMerge(Map<String, Object> account1,Map<String, Object> account2);
	//��ҳ��ѯ�˻�
	public Pager findbyPager(Map<String, Object> map,Pager p);
	//�޸��˻�״̬
	public void UpdateStates(Integer zhztbh,Integer grzhbh);
    //���ݹ������˺Ų�ѯԱ��������λ��Ϣ
    public Map<String, Object> findUnitName(String peracId);	
}
