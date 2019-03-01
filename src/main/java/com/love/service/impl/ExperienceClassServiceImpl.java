package com.love.service.impl;

import com.love.mapper.*;
import com.love.pojo.*;
import com.love.pojo.vg.LessonAddTools;
import com.love.pojo.vg.LessonManageTools;
import com.love.pojo.vg.LessonUpdateTools;
import com.love.service.ExperienceClassService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class ExperienceClassServiceImpl implements ExperienceClassService {

    @Autowired
    private CampusMapper campusMapper;

    @Autowired
    private ClassesMapper classesMapper;

    @Autowired
    private StaffMapper staffMapper;

    @Autowired
    private ClassroomMapper classroomMapper;

    @Autowired
    private LessonMapper lessonMapper;

    @Autowired
    private LessonDetailMapper lessonDetailMapper;

    @Override
    public List<Campus> selectAll() {
        return campusMapper.selectAll();
    }

    @Override
    public void showExperienceClassByPage(HttpServletRequest request, Model model) {

        String pageNow = request.getParameter("pageNow");

        PageTools pageTools = null;

        List<Classes> classesList = new ArrayList<>();

        int totalCount = (int)classesMapper.getWyExperience();

        if(pageNow!=null){

            pageTools = new PageTools(totalCount,Integer.parseInt(pageNow));
            classesList = this.classesMapper.getWyExeperienceByPage(pageTools.getStartPos(),pageTools.getPageSize());

        }else{
            pageTools = new PageTools(totalCount,1);
            classesList = this.classesMapper.getWyExeperienceByPage(pageTools.getStartPos(),pageTools.getPageSize());

        }

        model.addAttribute("classesList",classesList);
        model.addAttribute("pageTools",pageTools);
    }

    //wy动态查询所有体验课的信息
    @Override
    public List<HashMap<String, Object>> showExperienceClassAll(LessonManageTools lessonManageTools) {
        return classesMapper.getWyExeperienceClassesAll(lessonManageTools);
    }

    //wy动态查询所有公开课的信息
    @Override
    public List<HashMap<String, Object>> showOpenClassAll(LessonManageTools lessonManageTools) {
        return classesMapper.getWyOpenClassesAll(lessonManageTools);
    }

    //wy查询所有讲师
    @Override
    public List<HashMap<String,Object>> selectAllTeacherName() {

        return staffMapper.getAllWyTeachersName();
    }

    //wy查询所有班主任
    @Override
    public List<HashMap<String,Object>> selectAllHeaderTeacherName() {

        return staffMapper.getAllWyHeaderTeachersName();
    }

    //wy获取所有的教室
    @Override
    public List<HashMap<String,Object>> selectWyAllClassroom() {
        return classroomMapper.getAllWyClassroom();
    }


    //wy更新体验课数据
    @Override
    public Integer updateWyExperienceClasses(LessonUpdateTools lessonUpdateTools) {
        return classesMapper.updateWyExperience(lessonUpdateTools);
    }

    //wy添加体验课课程
    @Override
    public Integer InsertWyExperienceClasses(LessonAddTools lessonAddTools) {

        //先进行添加课程
        Lesson lesson = new Lesson();
        lesson.setLessonName(lessonAddTools.getLessonName());
        lesson.setLessionLevelId(3);
        int insert = lessonMapper.insert(lesson);

        System.out.println(lesson.getLessonId());

        //获取新添加课程的id
        Integer lesson_id = lesson.getLessonId();

        //添加课程详情
        LessonDetail lessonDetail = new LessonDetail();

        lessonDetail.setLessonDtlHour(lessonAddTools.getLessonHour());
        lessonDetail.setLessonDtlName(lessonAddTools.getLessonDetail());
        Lesson lesson1 = new Lesson();
        lesson1.setLessonId(lesson_id);
        lessonDetail.setLesson(lesson1);

        Integer integer = lessonDetailMapper.insertWyClassesDetal(lessonDetail);


        //添加班级
        lessonAddTools.setLessonId(lesson_id);

        Integer integer1 = classesMapper.insertWyClasses(lessonAddTools);


        return integer1;
    }


    //wy添加公开课课程
    @Override
    public Integer InsertWyOpenClasses(LessonAddTools lessonAddTools) {

        //先进行添加课程
        Lesson lesson = new Lesson();
        lesson.setLessonName(lessonAddTools.getLessonName());
        lesson.setLessionLevelId(2);
        int insert = lessonMapper.insert(lesson);

        System.out.println(lesson.getLessonId());

        //获取新添加课程的id
        Integer lesson_id = lesson.getLessonId();

        //添加课程详情
        LessonDetail lessonDetail = new LessonDetail();

        lessonDetail.setLessonDtlHour(lessonAddTools.getLessonHour());
        lessonDetail.setLessonDtlName(lessonAddTools.getLessonDetail());
        Lesson lesson1 = new Lesson();
        lesson1.setLessonId(lesson_id);
        lessonDetail.setLesson(lesson1);

        Integer integer = lessonDetailMapper.insertWyClassesDetal(lessonDetail);


        //添加公开课班级
        lessonAddTools.setLessonId(lesson_id);

        Integer integer1 = classesMapper.insertWyOpenClasses(lessonAddTools);


        return integer1;
    }

    //获取所有的体验课班级总数
    public long getWyExperienceNumber() {
        return classesMapper.getWyExperience();
    }


}
