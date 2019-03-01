package com.love.pojo.vg;

import org.springframework.stereotype.Component;

import java.io.Serializable;

/**
 * wy
 * 这是一个更新体验课表的封装类
 */
@Component
public class LessonUpdateTools implements Serializable {

    private Integer campusId; //校区id

    private String lessonDetail;  //课程详情

    private Integer classesInclude;  //班级实际人数

    private Integer teacherId;  //讲师id

    private Integer classroomId;  //教室id

    private String classNumber;  //班级编号

    public Integer getCampusId() {
        return campusId;
    }

    public void setCampusId(Integer campusId) {
        this.campusId = campusId;
    }

    public String getLessonDetail() {
        return lessonDetail;
    }

    public void setLessonDetail(String lessonDetail) {
        this.lessonDetail = lessonDetail;
    }

    public Integer getClassesInclude() {
        return classesInclude;
    }

    public void setClassesInclude(Integer classesInclude) {
        this.classesInclude = classesInclude;
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public Integer getClassroomId() {
        return classroomId;
    }

    public void setClassroomId(Integer classroomId) {
        this.classroomId = classroomId;
    }

    public String getClassNumber() {
        return classNumber;
    }

    public void setClassNumber(String classNumber) {
        this.classNumber = classNumber;
    }


    @Override
    public String toString() {
        return "LessonUpdateTools{" +
                "campusId=" + campusId +
                ", lessonDetail='" + lessonDetail + '\'' +
                ", classesInclude=" + classesInclude +
                ", teacherId=" + teacherId +
                ", classroomId=" + classroomId +
                ", classNumber='" + classNumber + '\'' +
                '}';
    }
}

