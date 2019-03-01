package com.love.mapper;

import com.love.pojo.Lesson;

import java.util.List;

public interface LessonMapper {
    int deleteByPrimaryKey(Integer lessonId);

    int insert(Lesson record);

    int insertSelective(Lesson record);

    Lesson selectByPrimaryKey(Integer lessonId);

    int updateByPrimaryKeySelective(Lesson record);

    int updateByPrimaryKey(Lesson record);

    //查询所有课程类型
    List<Lesson> selectLessonName();

}