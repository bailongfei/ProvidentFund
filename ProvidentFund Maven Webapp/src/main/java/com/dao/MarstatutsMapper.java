package com.dao;

import com.entity.Marstatuts;

public interface MarstatutsMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table marstatuts
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table marstatuts
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int insert(Marstatuts record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table marstatuts
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int insertSelective(Marstatuts record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table marstatuts
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    Marstatuts selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table marstatuts
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int updateByPrimaryKeySelective(Marstatuts record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table marstatuts
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int updateByPrimaryKey(Marstatuts record);
}