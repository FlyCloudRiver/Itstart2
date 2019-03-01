package com.love.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 这是一个用于左边的导航条加载load函数的跳转
 */
@Controller
public class TestControllers {

    @RequestMapping("/today-return.action")
    public String jumpTodatReturn(){

        System.out.println("来跳转生意了today-return");

        return "today-return";
    }

    @RequestMapping("/today-already-return.action")
    public String jumpTodayAlreadyReturn(){

        System.out.println("来跳转生意了today-already-return");

        return "today-already-return";
    }

    @RequestMapping("/week-addInfo.action")
    public String jumpWeekAddInfo(){

        System.out.println("来跳转生意了week-addInfo");

        return "week-addInfo";
    }

    @RequestMapping("/classRoom.action")
    public String jumpClassRoom(){

        System.out.println("来跳转生意了classRoom");

        return "classRoom";
    }

    @RequestMapping("/month-return.action")
    public String jumpMonthReturn(){

        System.out.println("来跳转生意了month-return");

        return "month-return";
    }

    @RequestMapping("/month-already-return.action")
    public String jumpMonthAlreadyReturn(){

        System.out.println("来跳转生意了month-already-return");

        return "month-already-return";
    }


    @RequestMapping("/interview.action")
    public String jumpInterview(){

        System.out.println("来跳转生意了interview");

        return "interview";
    }


    @RequestMapping("/waitInterview.action")
    public String jumpWaitInterview(){

        System.out.println("来跳转生意了waitInterview");

        return "waitInterview";
    }

    @RequestMapping("/newAddInfo.action")
    public String jumpNewAddInfo(){

        System.out.println("来跳转生意了newAddInfo");

        return "newAddInfo";
    }

    @RequestMapping("/exceptionStudents.action")
    public String jumpExceptionStudents(){

        System.out.println("来跳转生意了exceptionStudents");

        return "exceptionStudents";
    }


    @RequestMapping("/classManagement.action")
    public String jumpClassManagement(){

        System.out.println("来跳转生意了classManagement");

        return "classManagement";
    }

    @RequestMapping("/parentInterview.action")
    public String jumpParentInterview(){

        System.out.println("来跳转生意了parentInterview");

        return "parentInterview";
    }

    @RequestMapping("/managementClass.action")
    public String jumpManagementClass(){

        System.out.println("来跳转生意了managementClass");

        return "managementClass";
    }


    @RequestMapping("/InforImportAndcheckout.action")
    public String jumpInfoImportAndcheckout(){

        System.out.println("来跳转生意了InforImportAndcheckout");

        return "InforImportAndcheckout";
    }


    @RequestMapping("/managementStudent.action")
    public String jumpManagementStudent(){

        System.out.println("来跳转生意了managementStudent");

        return "managementStudent";
    }

    @RequestMapping("/info_manage.action")
    public String jumpInfoManage(){

        System.out.println("来跳转生意了info_manage");

        return "info_manage";
    }

    @RequestMapping("/campus_manage.action")
    public String jumpCampusManage(){

        System.out.println("来跳转生意了campus_manage");

        return "campus_manage";
    }

    @RequestMapping("/info_distribute.action")
    public String jumpInfoDistribute(){

        System.out.println("来跳转生意了nfo_distribute");

        return "info_distribute";
    }

    @RequestMapping("/AllInformation.action")
    public String jumpAllInformation(){

        System.out.println("来跳转生意了AllInformation");

        return "AllInformation";
    }

    @RequestMapping("/day_new.action")
    public String jumpDayNew(){

        System.out.println("来跳转生意了day_new");

        return "day-new";
    }

    @RequestMapping("/openClass.action")
    public String jumpOpenClass(){
        System.out.println("来跳转生意了openClass");

        return "openClass";
    }

    @RequestMapping("/experienceClass")
    public String jumpExeperienceClass(){
        System.out.println("来跳转生意了experienceClass");

        return "experienceClass";
    }

    @RequestMapping("/preheatClass.action")
    public String jumpPreheatClass(){
        System.out.println("来跳转生意了preheatClass");

        return "preheatClass";
    }


    @RequestMapping("/formalClass.action")
    public String jumpFormalClass(){
        System.out.println("来跳转生意了formalClass");

        return "formalClass";
    }


}
