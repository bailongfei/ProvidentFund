package com.dao;

import com.entity.Loaninfo;

public interface LoaninfoMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table loaninfo
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */

	public int Loansave(Loaninfo lo);
    int deleteByPrimaryKey(Integer dkxxbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table loaninfo
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int insert(Loaninfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table loaninfo
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int insertSelective(Loaninfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table loaninfo
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    Loaninfo selectByPrimaryKey(Integer dkxxbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table loaninfo
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int updateByPrimaryKeySelective(Loaninfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table loaninfo
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int updateByPrimaryKey(Loaninfo record);
}