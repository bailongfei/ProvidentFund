package com.cwh.service;

import java.util.List;
import java.util.Map;

import com.entity.Unitinfo;

public interface UnitinfoService {
	//��ѯ����
    public List<Map>queryAllcwh();
  //���
    public int savecwh(Unitinfo u);
    //ɾ��
    public int deletecwh(int UnitInfoId);
   //�޸�
    public int updateunitinfocwh(Unitinfo u);
    //����id��ѯ
    public List<Unitinfo> queryByUnitinfoIdcwh(int unitinfoid);
}
