package com.dao;

import com.entity.Gshylx;

public interface GshylxMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gshylx
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int deleteByPrimaryKey(Integer gshylxbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gshylx
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int insert(Gshylx record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gshylx
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int insertSelective(Gshylx record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gshylx
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    Gshylx selectByPrimaryKey(Integer gshylxbh);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gshylx
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int updateByPrimaryKeySelective(Gshylx record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table gshylx
     *
     * @mbg.generated Sun Oct 21 20:42:37 CST 2018
     */
    int updateByPrimaryKey(Gshylx record);
}