package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Purchase;

public interface PurchaseMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table purchase
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int deleteByPrimaryKey(Integer gfxxbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table purchase
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int insert(Purchase record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table purchase
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int insertSelective(Purchase record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table purchase
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    Purchase selectByPrimaryKey(Integer gfxxbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table purchase
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int updateByPrimaryKeySelective(Purchase record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table purchase
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int updateByPrimaryKey(Purchase record);
    //��ѯ����
    public List<Map>queryAll();
}