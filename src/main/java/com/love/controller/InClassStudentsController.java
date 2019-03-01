package com.love.controller;

import com.love.pojo.Client;
import com.love.pojo.LessonLevel;
import com.love.pojo.Order;
import com.love.service.InClassStudentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class InClassStudentsController {
    @Autowired
    private InClassStudentsService inClassStudentsService;

    /**
     *  查询进班学生信息
     */
    @RequestMapping(value = {"/selectInClassStudents.action"})
    @ResponseBody
    List<Order> selectInClassStudentsById(HttpServletRequest request,Order order){
        Integer pageSize =Integer.valueOf(request.getParameter("pageSize")) ;
        Integer pageStart =Integer.valueOf(request.getParameter("pageStart"));
        System.out.println("看看前端传过来的值"+order.getOrderStatus());
        List<Order> orderList = inClassStudentsService.selectInClassStudentsById(order,pageStart,pageSize);
        for(Order order1:orderList){
            System.out.println(order1);
        }
        return  orderList;
    }


//    获取进班学生列表总数

    @RequestMapping(value = {"/getInClassStudentsCounts.action"})
    @ResponseBody
            Integer getInClassStudentsCounts(Order order){
                Integer inClassStudentsCounts = inClassStudentsService.getInClassStudentsCounts(order);
        System.out.println("查询到的异常学生条数："+inClassStudentsCounts);
                return inClassStudentsCounts;
            }


//            获取课程年级
       @RequestMapping(value = {"/getLessonLevelGrade.action"})
       @ResponseBody
        List<LessonLevel> getLessonLevelGrade(LessonLevel lessonLevel){
        System.out.println("获得的学生部门："+lessonLevel.getLessonLevelSchool());
        return inClassStudentsService.getLessonLevelGrade(lessonLevel);
        }



    //            获取课程分类
    @RequestMapping(value = {"/getLessonLevelType.action"})
    @ResponseBody
    List<LessonLevel> getLessonLevelType(LessonLevel lessonLevel){
        System.out.println("获得的课程分类："+lessonLevel.getLessonLevelGrade());
        return inClassStudentsService.getLessonLevelType(lessonLevel);
    }
}
