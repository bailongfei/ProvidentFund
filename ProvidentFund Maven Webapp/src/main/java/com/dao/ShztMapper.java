package com.dao;

import com.entity.Shzt;

public interface ShztMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shzt
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int deleteByPrimaryKey(Integer shbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shzt
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int insert(Shzt record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shzt
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int insertSelective(Shzt record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shzt
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    Shzt selectByPrimaryKey(Integer shbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shzt
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int updateByPrimaryKeySelective(Shzt record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table shzt
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int updateByPrimaryKey(Shzt record);
}