package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Unitinfo;

public interface UnitinfoMapper {
    int deleteByPrimaryKey(Integer unitinfoid);

    int insert(Unitinfo record);

    int insertSelective(Unitinfo record);

    Unitinfo selectByPrimaryKey(Integer unitinfoid);

    int updateByPrimaryKeySelective(Unitinfo record);

    int updateByPrimaryKey(Unitinfo record);
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