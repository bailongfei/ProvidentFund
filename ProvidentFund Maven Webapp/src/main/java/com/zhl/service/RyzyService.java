package com.zhl.service;

import java.util.List;
import java.util.Map;

import com.entity.ryzy;
import com.zhl.pager.Pager;

public interface RyzyService {	
	//������Աת������
	public int SaveRyzyApply(ryzy ryzy);
	//��ѯ��Աת������
    public Pager queryapply(Map<String, Object> map, Pager p);
    //��ѯ��Աת�����
    public Pager queryryzysh(Map<String, Object> map, Pager p);
    //���ͨ��
    public int CheckRyzy(ryzy ryzy);
    //���ͨ��
    public int CheckRyzy2(ryzy ryzy);
}
