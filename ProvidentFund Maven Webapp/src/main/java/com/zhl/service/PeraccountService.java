package com.zhl.service;

import java.util.List;
import java.util.Map;

import com.entity.Peraccount;

public interface PeraccountService {
	/*public List<Map> findall();*/
	public int insert(Peraccount peraccount);
	//��¼
	public Peraccount login(Map<String, Object> map);
	//�˻��ϲ�
	public void AccountMerge(Map<String, Object> account1,Map<String, Object> account2);
}
