package com.dao;

import com.entity.Xwlx;

public interface XwlxMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table xwlx
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int deleteByPrimaryKey(Integer xwlxbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table xwlx
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int insert(Xwlx record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table xwlx
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int insertSelective(Xwlx record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table xwlx
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    Xwlx selectByPrimaryKey(Integer xwlxbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table xwlx
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int updateByPrimaryKeySelective(Xwlx record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table xwlx
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int updateByPrimaryKey(Xwlx record);
}