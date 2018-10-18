package com.dao;

import com.entity.lenderspou;

public interface lenderspouMapper {
    int deleteByPrimaryKey(Integer pobh);

    int insert(lenderspou record);

    int insertSelective(lenderspou record);

    lenderspou selectByPrimaryKey(Integer pobh);

    int updateByPrimaryKeySelective(lenderspou record);

    int updateByPrimaryKey(lenderspou record);
}