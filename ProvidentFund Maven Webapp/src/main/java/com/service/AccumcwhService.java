package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Accumulation;
import com.entity.Individualpay;

public interface AccumcwhService {
	//查询所有
    public List<Map>queryAllcwh();
    //修改状态
    public void updatecwh(Accumulation accumulation);    

}
