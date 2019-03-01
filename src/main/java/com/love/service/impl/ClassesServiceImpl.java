package com.love.service.impl;

import com.love.mapper.*;
import com.love.pojo.*;
import com.love.service.ClassesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ClassesServiceImpl implements ClassesService {
    @Autowired
    private CampusMapper campusMapper;
    @Autowired
    private ClassesMapper classesMapper;
    @Autowired
    private LessonMapper lessonMapper;
    @Autowired
    private ClassesTypeMapper classesTypeMapper;
    @Autowired
    private StaffMapper staffMapper;
    @Autowired
    private ClassroomMapper classroomMapper;
    @Override
    public List<Classes> selectClassesList(Classes classes,Integer pageCount,Integer pageSize) {
        List<Classes> classes1 = classesMapper.selectClassesList(classes,pageCount,pageSize);
        return classes1;
    }

    //新增班级
    @Override
    public Integer insertClass(Classes classes) {

        /*进行判断  是否重名*/
        Classes classes1 = classesMapper.selecClassesByname(classes.getClassesName());
        if (classes1!=null){
            return -1;
        }else{

            System.out.println("前一刻！");
            classesMapper.insertClass(classes);
            return 1;
        }

    }

    @Override
    public Integer deleteClass(Integer id) {
        return classesMapper.deleteByPrimaryKey(id);
    }

    @Override
    public List<Campus> selectCampusName() {
        List<Campus> list = campusMapper.selectAll();
        return list;
    }

    @Override
    public List<Lesson> selectLessonName() {
        List<Lesson> list = lessonMapper.selectLessonName();
        return list;
    }


    @Override
    public List<ClassesType> selectClassesType() {
        List<ClassesType> list = classesTypeMapper.selectClassesType();
        return list;
    }

    @Override
    public List<Staff> findAllStaff() {
        return staffMapper.findAllStaff();
    }

    @Override
    public List<Staff> findAllLectorr() {
        return staffMapper.findAllLectorr();
    }

    /*查找所有教室*/
    @Override
    public List<Classroom> findAllClassesRoom() {
        return classroomMapper.findAllClassesRoom();
    }

    @Override
    public Integer selectClassesCount(Classes classes) {
        return classesMapper.selectClassesCount(classes);
    }

    @Override
    public Integer selectClassStudentCount(Classes classes) {
        return classesMapper.selectClassStudentCount(classes);
    }

    /*班级容纳人数*/
    @Override
    public List<Integer> findClassclassesCapacity() {
        return classesMapper.findClassclassesCapacity();
    }

    /*实际进班人数*/
    @Override
    public List<Integer> findclassesInclude() {
        return classesMapper.findclassesInclude();
    }

    /*班级名称*/
    @Override
    public List<String> findclassesName() {
        return classesMapper.findclassesName();
    }

    @Override
    public List<Classes> findClassStudend(Classes classes, Integer pageCount, Integer pageSize) {
        return classesMapper.findClassStudend(classes,pageCount, pageSize);
    }

    @Override
    public Integer startClass(Integer id) {
        return classesMapper.startClass(id);
    }

    @Override
    public Integer finishClass(Integer id) {
        return classesMapper.finishClass(id);
    }

    /*更新班级*/
    @Override
    public Integer updateClasses(Classes classes) {
        classesMapper.updateClasses(classes);
        return classes.getClassesId();
    }

}
