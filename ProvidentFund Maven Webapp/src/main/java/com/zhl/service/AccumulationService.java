package com.zhl.service;

import java.util.List;
import java.util.Map;

import com.entity.Accumulation;
import com.entity.Gjjtqyyb;

public interface AccumulationService {
	//��ӹ�������ȡ����
	public void SaveAccmulation(Accumulation accumulation);
	//��ѯ������ȡԭ��
    public List<Gjjtqyyb> findtqyy();
    //�鿴����������
    public List<Map<String, Object>> findbyperaccount(String peracId);
}
