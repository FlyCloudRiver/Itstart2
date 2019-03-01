package com.love.controller;

import com.love.pojo.Staff;
import com.love.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;



@SessionAttributes(value ={"currentUser"})
@Controller
public class StaffController {
    @Autowired
    private StaffService staffService;

    @RequestMapping(value={"mylogin"},method = RequestMethod.POST)
    @ModelAttribute("currentUser")
    public ModelAndView login(Staff loginStaff){
        /*成功登录的视图*/
        String view="blank2";
        System.out.println("------------------");
        Staff currentUser=staffService.login(loginStaff);
        String errorView="error";
        if(currentUser!=null){
            ModelAndView modelAndView=new ModelAndView(view);
            modelAndView.addObject("currentUser",currentUser);
            return modelAndView;
        }
        return new ModelAndView(errorView);
    }

}
