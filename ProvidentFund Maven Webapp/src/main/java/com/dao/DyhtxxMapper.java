package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Dyhtxx;

public interface DyhtxxMapper {

	public int Dyhtxxsave(Dyhtxx dt);
	    int deleteByPrimaryKey(Integer dbhtbh);


    int insert(Dyhtxx record);


    int insertSelective(Dyhtxx record);

    Dyhtxx selectByPrimaryKey(Integer dbhtbh);

    int updateByPrimaryKeySelective(Dyhtxx record);


    int updateByPrimaryKey(Dyhtxx record);
}