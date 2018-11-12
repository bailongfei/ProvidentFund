 package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Gshylx;
import com.entity.Gslxb;
import com.entity.Jjlxb;
import com.entity.Peraccount;
import com.entity.Unitinfo;
import com.entity.Unitsaccount;

public interface jym_UnitinfoMapper {
	//��ӵ�λ��Ϣ
	public int insertUnitinfo(Unitinfo u);
	//��ӵ�λ1��Ϣ
	public int insertUnitinfo1(Unitinfo u);
	//��ӵ�λ2��Ϣ
		public int insertUnitinfo2(Unitinfo u);
	//�޸ĵ�λ��Ϣ
	public int updateUnitinfo(Unitinfo f);
	//��ӵ�λ�˻���Ϣ
	public int insertUnitsaccount(Unitsaccount n);
	//��ӵ�λ�˻�1��Ϣ
	public int insertUnitsaccount1(Unitsaccount n);
	//��ѯ��λ�˻���Ϣ
	public List selectUnitsaccount(Unitsaccount n);
	//����id�鵥λ�˻�����
	public Map selectUnitsaccountid(int UnitInfoId);
	//ģ����ѯname
	public List<Map<String,Object>> queryPageUnfo(Map<String, Object> map);
	//��ҳ
    public int getPageCount(Map<String, Object> map);
    
    //ɾ�� �˻���Ϣ
    public int deleteUnitsaccount(Unitsaccount s);
    //ɾ�� ��λ��Ϣ
    public int deleteUnitinfo(Unitinfo o);

	//�޸ĵ�λ�˻���Ϣ
	public int updateUnitsaccount(Unitsaccount a);
	//����������ô����ѯ������ô��� ��֤Ψһ
	public List<Map> selectunitinfocredit(String  unitinfocredit);
	//��ѯ��λ��Ϣ
	public Map selectUnitinfo(Unitinfo u);
	
	//��ѯ
	public Map selectUnitinfot(Unitinfo u);
	
	//��ѯ��λ��ҵ����
	public List selectGshylx(Gshylx g);
	
	//��ѯ��λ��ҵ����
   public List selectGslxb(Gslxb s);
 
 //��ѯ��λ��������
   public List selectJjlxb(Jjlxb j);
}
