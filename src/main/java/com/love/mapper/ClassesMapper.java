package com.love.mapper;


import com.love.pojo.Classes;
import com.love.pojo.vg.LessonAddTools;
import com.love.pojo.vg.LessonManageTools;
import com.love.pojo.vg.LessonUpdateTools;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

public interface ClassesMapper {


    int insert(Classes record);

    int insertSelective(Classes record);

    Classes selectByPrimaryKey(Integer classesId);

    int updateByPrimaryKeySelective(Classes record);

    int updateByPrimaryKey(Classes record);


    //综合查询班级详情
    List<Classes> selectClassesList(@Param(value = "classes")Classes classes,@Param(value = "pageCount")Integer pageCount,@Param(value = "pageSize")Integer pageSize);

    //获取所有体验课的班级总数
     long getWyExperience();

     //分页查询所有体验课的班级情况
    public List<Classes> getWyExeperienceByPage(@Param(value = "startPos") Integer startPos,@Param(value = "pageSize") Integer pageSize);


    //wy动态查询所有体验课的信息
    List<HashMap<String,Object>> getWyExeperienceClassesAll(LessonManageTools lessonManageTool);


    //动态查询所有公开课的信息
    List<HashMap<String,Object>> getWyOpenClassesAll(LessonManageTools lessonManageTool);



    /*根据传入参数更新班级*/
    Integer updateClasses(Classes classes);


    //wy更新体验课数据
    Integer updateWyExperience(LessonUpdateTools lessonUpdateTools);

    //wy添加体验课课程
    Integer insertWyClasses(LessonAddTools lessonAddTools);

    //wy添加公开课课程
    Integer insertWyOpenClasses(LessonAddTools lessonAddTools);

    /*新增班级*/
    Integer insertClass(Classes classes);

    /*查找所有班级数量*/
    Integer selectClassesCount(Classes classes);

    /*班级学生管理  查找所有班级数量*/
    Integer selectClassStudentCount(Classes classes);

    //删除班级
   /* Integer deleteClass(Integer id);*/
    int deleteByPrimaryKey(Integer classesId);

   Classes selecClassesByname(String name);


   /*///////////////////////////////*/
   /*班级容纳人数*/
     List<Integer> findClassclassesCapacity();
    /*实际进班人数*/
    List<Integer> findclassesInclude();

    /*班级名称*/
    List<String> findclassesName();

    /*分页查询*/
    List<Classes> findClassStudend(@Param(value = "classes")Classes classes,@Param(value = "pageCount")Integer pageCount,@Param(value = "pageSize")Integer pageSize);

    /*去开班*/
    Integer startClass(Integer id);
    /*去接班*/
    Integer finishClass(Integer id);
}