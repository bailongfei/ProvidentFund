package com.zhl.service;

import java.util.List;
import java.util.Map;

import com.entity.Perbusiness;

public interface PerbusinessService {
	//��ѯ����
    public List<Perbusiness> findbypage(Integer grzhbhs);
    public List<Map> queryAll();

    //��ѯ���б������
    public Integer findcount(Map<String, Object> condition);
    //������ѯ	 Integer personNO,String grperbuType,Date date1,Date date2
    public List<Map<String, Object>> findbycondition(Map<String, Object> condition);    
}
