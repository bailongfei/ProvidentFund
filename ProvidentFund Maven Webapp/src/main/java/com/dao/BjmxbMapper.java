package com.dao;

import com.entity.Bjmxb;

public interface BjmxbMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bjmxb
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int deleteByPrimaryKey(Integer bjmxbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bjmxb
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int insert(Bjmxb record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bjmxb
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int insertSelective(Bjmxb record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bjmxb
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    Bjmxb selectByPrimaryKey(Integer bjmxbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bjmxb
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int updateByPrimaryKeySelective(Bjmxb record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bjmxb
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int updateByPrimaryKey(Bjmxb record);
}