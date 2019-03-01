package com.love.mapper;

import com.love.pojo.Classroom;

import java.util.List;

import java.util.HashMap;
import java.util.List;

public interface ClassroomMapper {
    int deleteByPrimaryKey(Integer classroomId);

    int insert(Classroom record);

    int insertSelective(Classroom record);

    Classroom selectByPrimaryKey(Integer classroomId);

    int updateByPrimaryKeySelective(Classroom record);

    int updateByPrimaryKey(Classroom record);
    /*查找所有教室*/
    List<Classroom> findAllClassesRoom();

    //获取所有的教室
    List<HashMap<String,Object>> getAllWyClassroom();
}