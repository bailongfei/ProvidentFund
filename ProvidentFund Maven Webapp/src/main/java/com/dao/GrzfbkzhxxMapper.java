package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Grzfbkzhxx;

public interface GrzfbkzhxxMapper {

	//��ѯ����״̬Ϊ0δ����
	public List<Map<String,Object>> Grzfquery();
	//��ѯ���л���״̬Ϊ1
	public List<Map<String, Object>> Grzfquerytwo();
	//�޸�״̬
	public int updatestatic(int dkbh);
	//����id ��ѯ
	public List<Map<String, Object>> queryGrzgId(int dkbh);
	
	//��ҳģ����ѯ
	public List<Map<String, Object>> findbygrzfbk(Map<String, Object> grzfbk);
	//��ѯ�����������
    public Integer findcount(Map<String, Object> grzfbk);
    
	public int updateGrzfb(Map<String, Object> map);/*��̬�޸�*/

    int deleteByPrimaryKey(Integer dkbh);

    int insert(Grzfbkzhxx record);

    int insertSelective(Grzfbkzhxx record);

    Grzfbkzhxx selectByPrimaryKey(Integer dkbh);

    int updateByPrimaryKeySelective(Grzfbkzhxx record);

    int updateByPrimaryKey(Grzfbkzhxx record);
}