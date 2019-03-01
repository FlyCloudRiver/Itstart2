package com.love.mapper;

import com.love.pojo.Client;
import com.love.pojo.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderMapper {
    int deleteByPrimaryKey(Integer orderId);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer orderId);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);


    /**
     * 查询进班学生信息
     */
    List<Order> selectInClassStudentsById(@Param(value = "order")Order order,@Param(value = "pageStart")Integer pageStart,@Param(value = "pageSize")Integer pageSize);

//    查询进班学生信息条数
     Integer getInClassStudentsCounts(Order order);
}