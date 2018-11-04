package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Gshylx;
import com.entity.Gslxb;
import com.entity.Jjlxb;
import com.entity.Unitinfo;
import com.entity.Unitsaccount;

public interface UnitinfoDao {
	//��ӵ�λ��Ϣ
	public int insertUnitinfo(Unitinfo u);
	//��ӵ�λ1��Ϣ
	public int insertUnitinfo1(Unitinfo u);
	//�޸�
	public int updateUnitinfo(Unitinfo u);
	//��ӵ�λ�˻���Ϣ
	public int insertUnitsaccount(Unitsaccount n);
	/*	//����id��ѯ
	public List<Unitinfo> selectUnitinfoId(Integer unitinfoid);*/
	//��ѯ
	public Map selectUnitinfot(Unitinfo u);
	
	//��ѯ��λ��ҵ����
	public List selectGshylx(Gshylx g);
	
	//��ѯ��λ��ҵ����
   public List selectGslxb(Gslxb s);
 
 //��ѯ��λ��������
   public List selectJjlxb(Jjlxb j);
}
