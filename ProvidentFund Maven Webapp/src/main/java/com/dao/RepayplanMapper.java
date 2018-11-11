package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Repayplan;

public interface RepayplanMapper {

	//¸ù¾Ýid²éÑ¯
		public List<Map<String, Object>> queryDyhtxx(int dkbh);

    int deleteByPrimaryKey(Integer jhbh);

    int insert(Repayplan record);

    int insertSelective(Repayplan record);

    Repayplan selectByPrimaryKey(Integer jhbh);

    int updateByPrimaryKeySelective(Repayplan record);

    int updateByPrimaryKey(Repayplan record);
}