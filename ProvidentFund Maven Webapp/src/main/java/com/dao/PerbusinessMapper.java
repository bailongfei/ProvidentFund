package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Perbusiness;

public interface PerbusinessMapper {
    int deleteByPrimaryKey(Integer perbuid);

    int insert(Perbusiness record);

    int insertSelective(Perbusiness record);

    Perbusiness selectByPrimaryKey(Integer perbuid);

    int updateByPrimaryKeySelective(Perbusiness record);

    int updateByPrimaryKey(Perbusiness record);
    //��ҳ��ѯ
    public List<Perbusiness> findpage(Integer grzhbhs);
    //��ѯ���б������
    public Integer findcount(Map<String, Object> condition);
    //������ѯ	//���� ҵ������ Integer grzhbhs,String grperbuType,Date date1,Date date2
    public List<Map<String, Object>> findbycondition(Map<String, Object> condition);

	public List<Map> queryAll();     
}