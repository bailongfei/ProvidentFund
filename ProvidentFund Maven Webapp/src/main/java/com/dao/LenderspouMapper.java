package com.dao;

import com.entity.Lenderspou;

public interface LenderspouMapper {
    int deleteByPrimaryKey(Integer pobh);

    int insert(Lenderspou record);

    int insertSelective(Lenderspou record);

    Lenderspou selectByPrimaryKey(Integer pobh);

    int updateByPrimaryKeySelective(Lenderspou record);

    int updateByPrimaryKey(Lenderspou record);
}