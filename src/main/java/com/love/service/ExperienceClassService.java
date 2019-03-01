package com.love.service;

import com.love.pojo.Campus;
import com.love.pojo.vg.LessonAddTools;
import com.love.pojo.vg.LessonManageTools;
import com.love.pojo.vg.LessonUpdateTools;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;


public interface ExperienceClassService {


    //查询所有校区
    public List<Campus> selectAll();


    void showExperienceClassByPage(HttpServletRequest request,Model model);

    //动态查询所有体验课信息
    List<HashMap<String,Object>> showExperienceClassAll(LessonManageTools lessonManageTools);

    //动态查询所有公开课信息
    List<HashMap<String,Object>> showOpenClassAll(LessonManageTools lessonManageTools);

    //查询所有讲师
    List<HashMap<String,Object>>selectAllTeacherName();

    List<HashMap<String,Object>>selectAllHeaderTeacherName();

    //查询所有的教室
    List<HashMap<String,Object>> selectWyAllClassroom();

    //wy更新体验课的数据
    Integer updateWyExperienceClasses(LessonUpdateTools lessonUpdateTools);

    //wy加体验课
    Integer InsertWyExperienceClasses(LessonAddTools lessonAddTools);

    //wy添加公开课
    Integer InsertWyOpenClasses(LessonAddTools lessonAddTools);
}
