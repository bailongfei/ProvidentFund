package com.zhl.service;

import java.util.List;

import com.entity.Accumulation;
import com.entity.Gjjtqyyb;

public interface AccumulationService {
	//��ӹ�������ȡ����
	public void SaveAccmulation(Accumulation accumulation);
	//��ѯ������ȡԭ��
    public List<Gjjtqyyb> findtqyy();
}
