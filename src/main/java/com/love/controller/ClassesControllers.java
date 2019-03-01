package com.love.controller;

import com.love.pojo.*;
import com.love.service.ClassesService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ClassesControllers {

    @Autowired
    private ClassesService classesService;

    @RequestMapping("/selectClasses.action")
    @ResponseBody
    public List<Classes> selectClasses(Classes classes, HttpServletRequest request){
        Integer pageCount =Integer.valueOf(request.getParameter("pageCount"));
        Integer pageSize =Integer.valueOf(request.getParameter("pageSize"));

        List<Classes> classes1 = classesService.selectClassesList(classes,pageCount,pageSize);

        return classes1;
    }

    //查询所有校区名字
    @RequestMapping("/selectCampusName.action")
    @ResponseBody
    public List<Campus> selectCampusName(){
        List<Campus> campus = classesService.selectCampusName();
        return campus;
    }
    //查询所有课程类型
    @RequestMapping("/selectLessonName.action")
    @ResponseBody
    public List<Lesson> selectLessonName(){
        List<Lesson> lesson = classesService.selectLessonName();
        return lesson;
    }

    //查询所有班级类型
    @RequestMapping("/selectClassesType.action")
    @ResponseBody
    public List<ClassesType> selectClassesType(){
        List<ClassesType> classes = classesService.selectClassesType();
        return classes;
    }

    /*查找所有班主任*/
    @RequestMapping("/findAllStaff.action")
    @ResponseBody
    List<Staff> findAllStaff() {
        return classesService.findAllStaff();
    }
    /*查找所有讲师*/
    @RequestMapping("/findAllLectorr.action")
    @ResponseBody
    List<Staff> findAllLectorr() {
        return classesService.findAllLectorr();
    }
    /*查找所有教室*/
    @RequestMapping("/findAllClassesRoom.action")
    @ResponseBody
    List<Classroom> findAllClassesRoom(){
        return classesService.findAllClassesRoom();
    }
    /*更新班级*/
    @RequestMapping("/updateClasses.action")
    @ResponseBody
    Integer updateClasses(Classes classes){
        System.out.println(classes);
        return classesService.updateClasses(classes);
    }
    /*添加班级*/
    @RequestMapping("/insertClass.action")
    @ResponseBody
    Integer insertClass(Classes classes){
        Integer integer = classesService.insertClass(classes);
        return integer;
    }

    /*删除班级*/
    @RequestMapping("/deleteClass.action")
    @ResponseBody
    Integer deleteClass(HttpServletRequest request){
        Integer classesId =Integer.valueOf(request.getParameter("classesId"));
        return classesService.deleteClass(classesId);
    }
    /*查询所有班级数量  班级管理*/
    @RequestMapping("/selectClassesCount.action")
    @ResponseBody
   Integer selectClassesCount(Classes classes){
       return classesService.selectClassesCount(classes);
   }

    /*班级学生管理  查询条数*/
    @RequestMapping("/selectClassStudentCount.action")
    @ResponseBody
    Integer selectClassStudentCount(Classes classes){
        return classesService.selectClassStudentCount(classes);
    }

   /*班级学员管理部分*/

    /*班级容纳人数*/
    @RequestMapping("/findClassclassesCapacity.action")
    @ResponseBody
    List<Integer> findClassclassesCapacity(){
    return classesService.findClassclassesCapacity();
    }


    /*实际进班人数*/
    @RequestMapping("/findclassesInclude.action")
    @ResponseBody
    List<Integer> findclassesInclude(){
        return classesService.findclassesInclude();
    }

    /*班级名称*/
    @RequestMapping("/findclassesName.action")
    @ResponseBody
    List<String> findclassesName(){
        return classesService.findclassesName();
    }


    /*查找班级学生信息*/
    @RequestMapping("/findClassStudend.action")
    @ResponseBody
    List<Classes> findClassStudend(Classes classes, HttpServletRequest request){
        Integer pageCount =Integer.valueOf(request.getParameter("pageCount"));
        Integer pageSize =Integer.valueOf(request.getParameter("pageSize"));

        List<Classes> classStudend = classesService.findClassStudend(classes, pageCount, pageSize);

        return classesService.findClassStudend(classes,pageCount,pageSize);
    }

    /*去结班*/
    @RequestMapping("/finishClass.action")
    @ResponseBody
    Integer finishClass(HttpServletRequest request){
        Integer classesId = Integer.valueOf(request.getParameter("classesId"));
        return classesService.finishClass(classesId);
    }
    /*去开班*/
    @RequestMapping("/startClass.action")
    @ResponseBody
    Integer startClass(HttpServletRequest request){
        Integer classesId = Integer.valueOf(request.getParameter("classesId"));
        return classesService.startClass(classesId);
    }
}
