package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Fjlxb;

public interface FjlxbMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table fjlxb
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */

	public List<Map<String,Object>> queryFjlx();
    int deleteByPrimaryKey(Integer fubh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table fjlxb
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int insert(Fjlxb record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table fjlxb
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int insertSelective(Fjlxb record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table fjlxb
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    Fjlxb selectByPrimaryKey(Integer fubh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table fjlxb
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int updateByPrimaryKeySelective(Fjlxb record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table fjlxb
     *
     * @mbg.generated Wed Oct 31 09:19:01 CST 2018
     */
    int updateByPrimaryKey(Fjlxb record);
}