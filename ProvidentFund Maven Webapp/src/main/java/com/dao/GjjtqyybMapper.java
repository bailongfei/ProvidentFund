package com.dao;

import com.entity.Gjjtqyyb;

public interface GjjtqyybMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gjjtqyyb
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int deleteByPrimaryKey(Integer tqyyid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gjjtqyyb
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int insert(Gjjtqyyb record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gjjtqyyb
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int insertSelective(Gjjtqyyb record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gjjtqyyb
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    Gjjtqyyb selectByPrimaryKey(Integer tqyyid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gjjtqyyb
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int updateByPrimaryKeySelective(Gjjtqyyb record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gjjtqyyb
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int updateByPrimaryKey(Gjjtqyyb record);
}