package com.love.mapper;

import com.love.pojo.LessonLevel;

import java.util.List;

public interface LessonLevelMapper {
    int deleteByPrimaryKey(Integer lessonLevelId);

    int insert(LessonLevel record);

    int insertSelective(LessonLevel record);

    LessonLevel selectByPrimaryKey(Integer lessonLevelId);

    int updateByPrimaryKeySelective(LessonLevel record);

    int updateByPrimaryKey(LessonLevel record);

    //            获取课程年级
    List<LessonLevel> getLessonLevelGrade(LessonLevel lessonLevel);

    //            获取课程分类
    List<LessonLevel> getLessonLevelType(LessonLevel lessonLevel);

}