package com.love.controller;

import com.love.pojo.Staff;
import com.love.service.TestLoginIn;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestLoginController {

    @Autowired
    private TestLoginIn testLoginIn;

    @RequestMapping(value={"/testLogin.action"})
    public String testLogin(Staff staff){

        Staff staff1 = testLoginIn.find(1);

        if(staff.getStaffNumber().equals(staff1.getStaffNumber())&&staff.getStaffPassword().equals(staff1.getStaffPassword())){
            System.out.println("欢迎");
            return "blank2";
        }

        return null;
    }
}
