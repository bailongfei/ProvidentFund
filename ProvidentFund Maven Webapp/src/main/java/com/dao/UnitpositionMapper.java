package com.dao;

import com.entity.Unitposition;

public interface UnitpositionMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table unitposition
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int deleteByPrimaryKey(Integer unitpositionid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table unitposition
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int insert(Unitposition record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table unitposition
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int insertSelective(Unitposition record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table unitposition
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    Unitposition selectByPrimaryKey(Integer unitpositionid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table unitposition
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int updateByPrimaryKeySelective(Unitposition record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table unitposition
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int updateByPrimaryKey(Unitposition record);
}