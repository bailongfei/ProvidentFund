package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Returnpay;

public interface ReturnpayMapper {
	//���ݵ�λid��ѯ�����˺���Ϣ
    public List<Map<String,Object>> findaccountinfo2(Map<String,Object> map);

    int deleteByPrimaryKey(Integer chbh);
    
    int insert(Returnpay record);

    int insertSelective(Returnpay record);

    Returnpay selectByPrimaryKey(Integer chbh);

    int updateByPrimaryKeySelective(Returnpay record);

    int updateByPrimaryKey(Returnpay record);
    //��ҳ��ѯ��ɼ�¼
    public List<Map<String, Object>> findbypager(Map<String, Object> map);
    //��ѯ���������з�ҳ
    public int findcount(Map<String, Object> map);
}