package com.dao;

import com.entity.Perdetails;

public interface PerdetailsMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table perdetails
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int deleteByPrimaryKey(Integer personno);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table perdetails
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int insert(Perdetails record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table perdetails
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int insertSelective(Perdetails record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table perdetails
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    Perdetails selectByPrimaryKey(Integer personno);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table perdetails
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int updateByPrimaryKeySelective(Perdetails record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table perdetails
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int updateByPrimaryKey(Perdetails record);
}