package com.dao;

import com.entity.Hjmx;

public interface HjmxMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table hjmx
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int deleteByPrimaryKey(Integer hjmxbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table hjmx
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int insert(Hjmx record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table hjmx
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int insertSelective(Hjmx record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table hjmx
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    Hjmx selectByPrimaryKey(Integer hjmxbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table hjmx
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int updateByPrimaryKeySelective(Hjmx record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table hjmx
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int updateByPrimaryKey(Hjmx record);
}