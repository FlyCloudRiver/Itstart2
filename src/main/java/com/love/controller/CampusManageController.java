package com.love.controller;

import com.love.pojo.Campus;
import com.love.pojo.Staff;
import com.love.pojo.fqByPageObject.BaseQo;
import com.love.pojo.fqByPageObject.BaseVo;
import com.love.service.CampusManageService;
import com.love.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("campusmanage")
public class CampusManageController {
    @Autowired
    private CampusManageService campusManageService;
    @Autowired
    private StaffService staffService;
/*fq查询校区*/
    @RequestMapping(value = {"searchCampus"},method = RequestMethod.POST)
    public @ResponseBody
    BaseVo<Campus> searchCampus(@RequestBody BaseQo<Campus> qo){
        qo.count();
        System.out.println(qo);
        BaseVo<Campus> vo=   campusManageService.searchCampus(qo);
        System.out.println(vo);
        return vo;

    }
/*fq添加校区*/
    @RequestMapping("addCampus")
    public @ResponseBody String addCampus(@RequestBody Campus campus){
        campus.setCampusAddTime(new Date());
        campus.setCampusUpdateTime(new Date());
        System.out.println(campus);
        int i=campusManageService.addCampus(campus);
        if (i>0)
           return "success";
        return "error";

    }
    /*fq查找 教务主任*/
    @RequestMapping("findHeadmaster")
    public @ResponseBody List<Staff> findHeadmaster(){
        return staffService.findHeadmaster();
    }
    /*fq 编辑校区*/
    @RequestMapping("editCampus")
    public @ResponseBody String editCampus(@RequestBody Map<String,Object> map){
        map.put("campusUpdateTime",new Date());
       int i= campusManageService.updateCampus(map);
       int j=staffService.updateStaff(map);
        return "success";
    }

    @RequestMapping("openCampus")
    public @ResponseBody String openCampus(@RequestBody Map<String,Object> map){
        int i=campusManageService.openCampus(map);
        return "success";
    }

    @RequestMapping("deleteCampus")
    public @ResponseBody String deleteCampus(@RequestBody Map<String,Object> map){
        int i=campusManageService.deleteCampus(map);
        if (i>0)
            return "success";
        else
            return "error";
    }

    @RequestMapping("viewStaffs")
    public @ResponseBody List<Staff> viewStaffs(@RequestBody Map<String,Object> map){
        return staffService.viewStaffs(map);
    }

}
