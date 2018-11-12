package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Grzfbkzhxx;

public interface GrzfbkzhxxMapper {

	//查询还款状态为0未还清
	public List<Map<String,Object>> Grzfquery();
	//查询所有还款状态为1
	public List<Map<String, Object>> Grzfquerytwo();
	//修改状态
	public int updatestatic(int dkbh);
	//根据id 查询
	public List<Map<String, Object>> queryGrzgId(int dkbh);
	
	//分页模糊查询
	public List<Map<String, Object>> findbygrzfbk(Map<String, Object> grzfbk);
	//查询表的所有数量
    public Integer findcount(Map<String, Object> grzfbk);
    
	public int updateGrzfb(Map<String, Object> map);/*动态修改*/

    int deleteByPrimaryKey(Integer dkbh);

    int insert(Grzfbkzhxx record);

    int insertSelective(Grzfbkzhxx record);

    Grzfbkzhxx selectByPrimaryKey(Integer dkbh);

    int updateByPrimaryKeySelective(Grzfbkzhxx record);

    int updateByPrimaryKey(Grzfbkzhxx record);
}