package com.love.mapper;

import com.love.pojo.LessonDetail;

public interface LessonDetailMapper {
    int deleteByPrimaryKey(Integer lessonDtlId);

    int insert(LessonDetail record);

    int insertSelective(LessonDetail record);

    LessonDetail selectByPrimaryKey(Integer lessonDtlId);

    int updateByPrimaryKeySelective(LessonDetail record);

    int updateByPrimaryKey(LessonDetail record);

    //wy添加课程详情
    Integer insertWyClassesDetal(LessonDetail record);
}