package com.zhl.service;

import java.util.List;
import java.util.Map;

import com.entity.Perbusiness;
import com.zhl.pager.Pager;

public interface PerbusinessService {
	//查询所有
    public List<Perbusiness> findbypage(Integer grzhbhs);
    public List<Map> queryAll();

    //查询所有表的数量
    public Integer findcount(Map<String, Object> condition);
    //条件查询	 Integer personNO,String grperbuType,Date date1,Date date2
    public Pager findbycondition(Map<String, Object> condition,Pager p);   
}
