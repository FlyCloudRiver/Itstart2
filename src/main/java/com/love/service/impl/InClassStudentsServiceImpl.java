package com.love.service.impl;


import com.love.mapper.LessonLevelMapper;
import com.love.mapper.OrderMapper;
import com.love.pojo.Client;
import com.love.pojo.LessonLevel;
import com.love.pojo.Order;
import com.love.service.InClassStudentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("InClassStudentsService")
public class InClassStudentsServiceImpl implements InClassStudentsService {
    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private LessonLevelMapper lessonLevelMapper;


    @Override
    public List<Order> selectInClassStudentsById(Order order,Integer pageStart,Integer pageSize) {
        List<Order> orderList = orderMapper.selectInClassStudentsById(order,pageStart,pageSize);
        return orderList;
    }

    @Override
    public Integer getInClassStudentsCounts(Order order) {
        Integer inClassStudentsCounts = orderMapper.getInClassStudentsCounts(order);

        return inClassStudentsCounts;
    }

    @Override
    public List<LessonLevel> getLessonLevelGrade(LessonLevel lessonLevel) {

        return lessonLevelMapper.getLessonLevelGrade(lessonLevel);
    }

    @Override
    public List<LessonLevel> getLessonLevelType(LessonLevel lessonLevel) {
        return lessonLevelMapper.getLessonLevelType(lessonLevel);
    }

}
