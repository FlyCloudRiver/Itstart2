package com.love.controller;

import com.love.pojo.Interview;
import com.love.service.ParentInterviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ParentStudentInterviewController {
    @Autowired
    private ParentInterviewService parentInterviewService;



    /**
     查询家长访谈列表
    */

    @RequestMapping(value = {"/selectParentInterview.action"},method = RequestMethod.POST)
    @ResponseBody
    List<Interview> selectParentInterview(Integer pageStart,Integer pageSize){
        List<Interview> interviewList = parentInterviewService.selectParentInterview(pageStart,pageSize);
        for (Interview interview:interviewList){
            System.out.println(interview);
        }
        return  interviewList;
    }


//    查询家长访谈列表总数

    @RequestMapping(value = {"/getParentInterviewCounts.action"})
    @ResponseBody
    Integer getParentInterviewCounts(){
        Integer parentInterviewCounts = parentInterviewService.getParentInterviewCounts();
        return parentInterviewCounts;

    }
}
