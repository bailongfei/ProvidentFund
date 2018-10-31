package com.zhl.service;

import java.util.List;

import com.entity.Accumulation;
import com.entity.Gjjtqyyb;

public interface AccumulationService {
	//添加公积金提取申请
	public void SaveAccmulation(Accumulation accumulation);
	//查询所有提取原因
    public List<Gjjtqyyb> findtqyy();
}
