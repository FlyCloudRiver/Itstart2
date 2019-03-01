package com.love.service;

import com.love.pojo.Client;
import com.love.pojo.LessonLevel;
import com.love.pojo.Order;

import java.util.List;

public interface InClassStudentsService {



    /**
     * 查询进班学生信息
     */
    List<Order> selectInClassStudentsById(Order order,Integer pageStart,Integer pageSize);

    //    查询进班学生信息条数
    Integer getInClassStudentsCounts(Order order);

    //            获取课程年级
    List<LessonLevel> getLessonLevelGrade(LessonLevel lessonLevel);


    //            获取课程分类
    List<LessonLevel> getLessonLevelType(LessonLevel lessonLevel);
}
