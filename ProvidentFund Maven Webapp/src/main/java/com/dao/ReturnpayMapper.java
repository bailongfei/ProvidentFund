package com.dao;

import java.util.List;

import com.entity.Returnpay;

public interface ReturnpayMapper {
    int deleteByPrimaryKey(Integer chbh);

    int insert(Returnpay record);

    int insertSelective(Returnpay record);

    Returnpay selectByPrimaryKey(Integer chbh);

    int updateByPrimaryKeySelective(Returnpay record);

    int updateByPrimaryKey(Returnpay record);
    //��ҳ��ѯ��ɼ�¼
    public List<Returnpay> findbypager(Integer grzhbhs);    
}