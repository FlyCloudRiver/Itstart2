package com.love.controller;

import com.love.pojo.Client;
import com.love.service.ExceptionStudentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ExceptionStudentsController {

    @Autowired
    private ExceptionStudentsService  exceptionStudentsService;



    /**
     * 查询异常学生列表
     */
     @RequestMapping(value = {"/selectExceptionStudents.action"})
     @ResponseBody
    public List<Client> selectExceptionStudents(HttpServletRequest request,Client client) {
         Integer pageSize =Integer.valueOf(request.getParameter("pageSize")) ;
         Integer pageStart =Integer.valueOf(request.getParameter("pageStart"));

         System.out.println("页面大小"+pageSize);
         System.out.println(pageStart);
         System.out.println("前端控制器"+client);
        List<Client> clientList = exceptionStudentsService.selectExceptionStudents(client,pageStart,pageSize);
        for (Client clients:clientList){
            System.out.println("我的值呢？"+clients);
        }
        return clientList;
    }


//    //   获取异常学生列表总数
    @RequestMapping(value = {"/getExceptionStudentsCounts.action"})
    @ResponseBody
    Integer getExceptionStudentsCounts(Client client){

        Integer exceptionStudentsCounts = exceptionStudentsService.getExceptionStudentsCounts(client);
        System.out.println("查询到的异常学生条数："+exceptionStudentsCounts);
        return exceptionStudentsCounts;
    }


}
