package com.love.service;

import com.love.pojo.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface ClassesService {

    //综合查询班级详情
    List<Classes> selectClassesList(Classes classes,Integer pageCount,Integer pageSize);
    //添加班级
    Integer insertClass(Classes classes);
    //删除班级
    Integer deleteClass(Integer id);
    /*根据传入参数更新班级*/
    Integer updateClasses(Classes classes);

    //查询所有校区名字
    List<Campus> selectCampusName();

    //查询所有课程类型
    List<Lesson> selectLessonName();

    //查询所有班级类型
    List<ClassesType> selectClassesType();

    /*查找所有班主任*/
    List<Staff> findAllStaff();
    /*查找所有讲师*/
    List<Staff> findAllLectorr();
    /*查找所有教室*/
    List<Classroom> findAllClassesRoom();

    /*查找所有班级数量*/
    Integer selectClassesCount(Classes classes);
    /*班级学生管理*/
    Integer selectClassStudentCount(Classes classes);



    /*班级学院管理部分*/

    /*班级容纳人数*/
    List<Integer> findClassclassesCapacity();

    /*实际进班人数*/
    List<Integer> findclassesInclude();

    /*班级名称*/
    List<String> findclassesName();

    /*分页查询*/
    List<Classes> findClassStudend(Classes classes,Integer pageCount,Integer pageSize);

    /*去开班*/
    Integer startClass(Integer id);
    /*去接班*/
   Integer finishClass(Integer id);
}
