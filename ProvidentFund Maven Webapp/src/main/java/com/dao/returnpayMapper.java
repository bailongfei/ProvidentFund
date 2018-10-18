package com.dao;

import com.entity.returnpay;

public interface returnpayMapper {
    int deleteByPrimaryKey(Integer chbh);

    int insert(returnpay record);

    int insertSelective(returnpay record);

    returnpay selectByPrimaryKey(Integer chbh);

    int updateByPrimaryKeySelective(returnpay record);

    int updateByPrimaryKey(returnpay record);
}