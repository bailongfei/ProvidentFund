package com.jym.services;

import java.util.List;
import java.util.Map;

import com.entity.Gshylx;
import com.entity.Gslxb;
import com.entity.Jjlxb;
import com.entity.Peraccount;
import com.entity.Unitinfo;
import com.entity.Unitsaccount;

public interface PeraccountServices{
	public int insert(Peraccount p,Unitinfo u);
	//��ӵ�λ1��Ϣ
	public int insertUnitinfo1(Unitinfo u);
	//�޸�
		public int updateUnitinfo(Unitinfo u);
		//��ӵ�λ�˻���Ϣ
		public int insertUnitsaccount(Unitsaccount n);
	/*//����id��ѯ
	public List<Unitinfo> selectUnitinfoId(Integer unitinfoid);*/
	public Map selectPeraccount(Peraccount p);
	public Map selectUnitinfot(Unitinfo u);
	//��ѯ��λ��ҵ����
		public List selectGshylx(Gshylx g);
		//��λ��˾����
		 public List selectGslxb(Gslxb s);
		//��ѯ��λ��������
		   public List selectJjlxb(Jjlxb j);
}
