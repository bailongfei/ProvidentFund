package com.dao;

import com.entity.Unitinfo;

public interface UnitinfoMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table unitinfo
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int deleteByPrimaryKey(Integer unitinfoid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table unitinfo
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int insert(Unitinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table unitinfo
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int insertSelective(Unitinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table unitinfo
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    Unitinfo selectByPrimaryKey(Integer unitinfoid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table unitinfo
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int updateByPrimaryKeySelective(Unitinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table unitinfo
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int updateByPrimaryKey(Unitinfo record);
}