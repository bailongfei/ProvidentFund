package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Perbusiness;

public interface PerbusinessMapper {
	public List<Map<String, Object>> quertPeraccs(Map<String,Object> map);
    public int queryCountPeraccs(Map<String,Object> map);
	int deleteByPrimaryKey(Integer perbuid);
    public int savePeress(Map<String,Object> map);
    int insert(Perbusiness record);

   public int insertSelective(Perbusiness record);

    Perbusiness selectByPrimaryKey(Integer perbuid);

    int updateByPrimaryKeySelective(Perbusiness record);

    int updateByPrimaryKey(Perbusiness record);
}