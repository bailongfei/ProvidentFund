package com.dao;

import com.entity.Peraccount;

public interface PeraccountMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table peraccount
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int deleteByPrimaryKey(Integer grzhbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table peraccount
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int insert(Peraccount record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table peraccount
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int insertSelective(Peraccount record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table peraccount
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    Peraccount selectByPrimaryKey(Integer grzhbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table peraccount
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int updateByPrimaryKeySelective(Peraccount record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table peraccount
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int updateByPrimaryKey(Peraccount record);
}