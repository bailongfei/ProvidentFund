package com.dao;

import com.entity.Jointborrower;

public interface JointborrowerMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table jointborrower
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
	public int save(Jointborrower tb);
    int deleteByPrimaryKey(Integer gtjkrbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table jointborrower
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int insert(Jointborrower record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table jointborrower
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int insertSelective(Jointborrower record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table jointborrower
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    Jointborrower selectByPrimaryKey(Integer gtjkrbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table jointborrower
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int updateByPrimaryKeySelective(Jointborrower record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table jointborrower
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int updateByPrimaryKey(Jointborrower record);
}