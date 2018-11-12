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
	//��ӵ�λ2��Ϣ
	public int insertUnitinfo2(Unitinfo u);
	//�޸�
	public int updateUnitinfo(Unitinfo f);
		//��ӵ�λ�˻���Ϣ
	public int insertUnitsaccount(Unitsaccount n);
		//��ӵ�λ�˻�1��Ϣ
	public int insertUnitsaccount1(Unitsaccount n);
	//��ѯ��λ�˻���Ϣ
		public List selectUnitsaccount(Unitsaccount n);
		//����id�鵥λ�˻�����
		public Map selectUnitsaccountid(int UnitInfoId);
		//�޸ĵ�λ�˻���Ϣ
	public int updateUnitsaccount(Unitsaccount record,Unitinfo record1);
	
	public int updateUnitsaccount1(Unitsaccount a);
	//ģ����ѯname
		public List<Map<String,Object>> queryPageUnfo(Map<String, Object> map);
		//��ҳ
	    public int getPageCount(Map<String, Object> map);
	    
	    //���� ���ĵ�λ״̬
	    public int updateUaccount(Unitsaccount a);
	  //ɾ�� �˻���Ϣ
	    public int deleteUnitsaccount(Unitsaccount s,Unitinfo o);
	  //����������ô����ѯ������ô��� ��֤Ψһ
		public int selectunitinfocredit(String  unitinfocredit);

	//��ѯ��λ��Ϣ
	public Map selectUnitinfo(Unitinfo u);
	
	public Map selectPeraccount(Peraccount p);
	public Map selectUnitinfot(Unitinfo u);
	//��ѯ��λ��ҵ����
		public List selectGshylx(Gshylx g);
		//��λ��˾����
		 public List selectGslxb(Gslxb s);
		//��ѯ��λ��������
		   public List selectJjlxb(Jjlxb j);
		
		
		
}
