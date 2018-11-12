package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.entity.Hjqcb;
import com.entity.Individualpay;


public interface IndividualpayMapper {
	public int selectSum(Integer unitinfoaccount);
	public List<Map<String,Object>> selectBGjce(Integer unitinfoaccount);
	//public List<Individualpay> queryIpaer(Hjqcb hq);
	public List<Individualpay> queryIpaer(Integer unitinfoaccount);
	public int insertIpayPer(Map<String,Object> map);
	public int saveIpaer(Individualpay iper);

public List<Individualpay> queryIndividualpay();//zys
    int deleteByPrimaryKey(Integer grzhbhs);

   // public int updateIpar(@Param("unitinfoaccount")Integer unitinfoaccount,@Param("nhyf")Integer hjys);
    public int updateIpar(Hjqcb hq);
    public List<Map<String,Object>> queryIperRy(@Param("UnitInfoAccount")String UnitInfoAccount,@Param("bkname")String bkname);//²¹½É²éÑ¯ÈËÔ±
    public Map<String,Object> queryCheckdata(@Param("perId")String perId);
    public int BujiaoUpdateIper(@Param("personalaccount")String personalaccount,@Param("grjczes")String grjczes);//²¹½É

    int insert(Individualpay record);

    int insertSelective(Individualpay record);

    Individualpay selectByPrimaryKey(Integer grzhbhs);

    int updateByPrimaryKeySelective(Individualpay record);

    int updateByPrimaryKey(Individualpay record);
    //²éÑ¯ËùÓÐ
    public List<Map>queryAll();
    //ÐÞ¸Ä×´Ì¬
    public void update(Individualpay grzhbhs);    
    //ÐÞ¸Ä×´Ì¬
    public void updatefc(Individualpay grzhbhs);    
  //ÐÞ¸Ä×´Ì¬
    public void updateqf(Individualpay grzhbhs);    
}