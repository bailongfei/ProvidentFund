package com.dao;
import java.util.List;
import java.util.Map;

import java.util.List;
import java.util.Map;

import java.util.List;
import java.util.Map;

import com.entity.Peraccount;
import com.entity.Unitinfo;
import com.zhl.pager.Pager;


public interface PeraccountMapper {
	public int insertPercc(Map<String,Object> map);
	public int updatePercc(Map<String,Object> map);
	public int savePercc(Peraccount per);

	
	 public int save(Peraccount tb);
    public List<Map<String, Object>> queryTbid(int grzhbh);

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
    //���ݴ����Ų�ѯ������Ϣ�͹�����Ϣ
    public Map<String, Object> finddkInfo(Integer dkxxbh);
    //��ѯ���е�λ
    public List<Unitinfo> queryUnitinfos();
    //���ݵ�λid��ѯ�����˺���Ϣ
    public List<Map<String, Object>> findaccountinfo(Map<String, Object> map);
    //��ѯ��ҳ��������
    public int findaccountnum(Map<String, Object> map);
    //�������֤�����ѯ���˼���λ��Ϣ
    public List<Map<String, Object>> findbyIdnumber(String IdNumber);
    //����������ѯ�˻������˻���Ϣ
    public List<Map<String, Object>> findbyname(Map<String, Object> map);
    //����������ѯ��������
    public int findbynamecount(Map<String, Object> map);
  //��ѯ����
    public List<Map>queryAllcwh();
    //��ѯ����
    public List<Map>queryAllzgcwh();
  //id��ѯ
    public List<Peraccount> queryByIdcwh(int grzhbh);
    public List<Map> getallcwh(Integer grzhbh);
    
//�޸�
    public int updatecwh(List<Map> list);
//���
    public int savecwh(Peraccount u);
    //��ѯ����
    public List<Map>queryAlltycwh();
  //ģ��
    public List<Map> querymhcwh();

}