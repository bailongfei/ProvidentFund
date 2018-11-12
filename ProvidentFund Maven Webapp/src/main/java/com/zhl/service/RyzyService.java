package com.zhl.service;

import java.util.List;
import java.util.Map;

import com.entity.ryzy;
import com.zhl.pager.Pager;

public interface RyzyService {	
	//保存人员转移申请
	public int SaveRyzyApply(ryzy ryzy);
	//查询人员转移申请
    public Pager queryapply(Map<String, Object> map, Pager p);
    //查询人员转移审核
    public Pager queryryzysh(Map<String, Object> map, Pager p);
    //审核通过
    public int CheckRyzy(ryzy ryzy);
    //审核通过
    public int CheckRyzy2(ryzy ryzy);
}
