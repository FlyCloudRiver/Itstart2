package com.love.controller;

import com.love.pojo.Campus;
import com.love.pojo.vg.LessonAddTools;
import com.love.pojo.vg.LessonManageTools;
import com.love.pojo.vg.LessonUpdateTools;
import com.love.service.ExperienceClassService;
import jdk.nashorn.internal.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ExperienceClassController {

    @Autowired
    private ExperienceClassService experienceClassService;

    //查询所有校区
    @RequestMapping("/selectWyCampus.action")
    @ResponseBody
    public List<Campus> selectAllCamups(){

        List<Campus> campuses = experienceClassService.selectAll();

        for(int i=0;i<campuses.size();i++){
            System.out.println(campuses.get(i).getCampusName());
        }
        return campuses;
    }


    //动态条件进行查询体验课
    @RequestMapping("/getExperienceByPage.action")
    @ResponseBody
    public List<HashMap<String, Object>>pageExperience(HttpServletRequest request, Model model, @RequestParam Map<String,String> maop){

        System.out.println("来了老弟");

        //进行查询条件处理
        String campusName = maop.get("campusName");

        String lessonDtlName = maop.get("lessonDtlName");

        String teacherStaffName = maop.get("teacherStaffName");

        LessonManageTools lessonManageTools = new LessonManageTools();

        if(campusName!=null&&!(campusName.equals("-----请选择-----"))){
            lessonManageTools.setCampusName(campusName);
        }

        if(lessonDtlName!=null){
            String trim = lessonDtlName.trim();
            lessonManageTools.setLessonDtlName(trim);
        }

        if(teacherStaffName!=null){
            String trim = teacherStaffName.trim();
            lessonManageTools.setTeacherStaffName(trim);
        }


        //experienceClassService.showExperienceClassByPage(request,model);

        List<HashMap<String, Object>> hashMaps = experienceClassService.showExperienceClassAll(lessonManageTools);

        System.out.println(hashMaps.get(0));

        return hashMaps;
    }

    //动态条件进行查询公开课
    @RequestMapping("/getOpenClassesByPage.action")
    @ResponseBody
    public List<HashMap<String, Object>>pageOpenClassesExperience(HttpServletRequest request, Model model, @RequestParam Map<String,String> maop){

        System.out.println(96358);
        System.out.println("来了老弟");

        //进行查询条件处理
        String campusName = maop.get("campusName");

        String lessonDtlName = maop.get("lessonDtlName");

        String teacherStaffName = maop.get("teacherStaffName");

        LessonManageTools lessonManageTools = new LessonManageTools();

        if(campusName!=null&&!(campusName.equals("-----请选择-----"))){
            lessonManageTools.setCampusName(campusName);
        }

        if(lessonDtlName!=null){
            String trim = lessonDtlName.trim();
            lessonManageTools.setLessonDtlName(trim);
        }

        if(teacherStaffName!=null){
            String trim = teacherStaffName.trim();
            lessonManageTools.setTeacherStaffName(trim);
        }


        List<HashMap<String, Object>> hashMaps = experienceClassService.showOpenClassAll(lessonManageTools);

        System.out.println(hashMaps.get(0));

        return hashMaps;
    }

    //模态框动态获取查询条件的初始化

    //wy查询所有讲师
    @RequestMapping("/selectWyTeacherName.action")
    @ResponseBody
    public List<HashMap<String,Object>> getAllWyTeacherName(){

        List<HashMap<String, Object>> hashMaps = experienceClassService.selectAllTeacherName();

        return hashMaps;
    }

    //wy查询所有班主任
    @RequestMapping("/selectWyHeaderTeacherName")
    @ResponseBody
    public List<HashMap<String,Object>> getAllWyHeaderTeacherName(){

        List<HashMap<String, Object>> hashMaps = experienceClassService.selectAllHeaderTeacherName();

        return hashMaps;
    }

    //查询所有教室
    @RequestMapping("/selectWyClassroom.action")
    @ResponseBody
    public List<HashMap<String,Object>> getAllWyClassroom(){

        List<HashMap<String,Object>> hashMaps = experienceClassService.selectWyAllClassroom();

        return hashMaps;
    }

    //保存修改操作
    @RequestMapping("/updateWyLesson.action")
    @ResponseBody
    public String updateWyLesson(LessonUpdateTools lessonUpdateTools){

        System.out.println(lessonUpdateTools);

        Integer integer = experienceClassService.updateWyExperienceClasses(lessonUpdateTools);
        System.out.println(integer);
        if(integer!=null){
            return "OK";
        }else {
            return "faile";
        }
    }

    //wy添加体验课操作
    @RequestMapping("/addWyExperienceClasses.action")
    @ResponseBody
    public String addWyExperience(LessonAddTools lessonAddTools){

        System.out.println("添加体验课操作来了");
        System.out.println(lessonAddTools);
        Integer integer = experienceClassService.InsertWyExperienceClasses(lessonAddTools);

        if(integer!=null){
            return "OK";
        }else {
            return "faile";
        }
    }

    //wy添加公开课操作
    @RequestMapping("/addWyOpenClasses.action")
    @ResponseBody
    public String addWyOpenClasses(LessonAddTools lessonAddTools){

        System.out.println("添加公开课操作来了");
        System.out.println(lessonAddTools);
        Integer integer = experienceClassService.InsertWyOpenClasses(lessonAddTools);

        if(integer!=null){
            return "OK";
        }else {
            return "faile";
        }
    }
}
