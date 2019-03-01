package com.love.mapper;

import com.love.pojo.ClassesType;

import java.util.List;

public interface ClassesTypeMapper {
    int deleteByPrimaryKey(Integer classesTypeId);

    int insert(ClassesType record);

    int insertSelective(ClassesType record);

    ClassesType selectByPrimaryKey(Integer classesTypeId);

    int updateByPrimaryKeySelective(ClassesType record);

    int updateByPrimaryKey(ClassesType record);

    //查询所有班级类型
    List<ClassesType> selectClassesType();
}