package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Peraccount;

public interface PeraccountMapper {
    int deleteByPrimaryKey(Integer grzhbh);

    int insert(Peraccount record);

    int insertSelective(Peraccount record);

    Peraccount selectByPrimaryKey(Integer grzhbh);

    int updateByPrimaryKeySelective(Peraccount record);

    int updateByPrimaryKey(Peraccount record);
    //�����˺������ѯ
    public Peraccount findbyaccount(Map<String, Object> map);
    //��ѯ�����˻�
    public List<Map<String, Object>> findbyPager(Map<String, Object> map);
    //��ѯ������
    public int findPagercount(Map<String, Object> map);
    //���ݹ������˺Ų�ѯԱ��������λ��Ϣ
    public Map<String, Object> findUnitName(String peracId);	
}