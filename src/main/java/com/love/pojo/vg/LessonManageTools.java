package com.love.pojo.vg;

import org.springframework.stereotype.Component;

import java.io.Serializable;

/**
 * 这是一个用于课程管理的工具类
 */
@Component
public class LessonManageTools implements Serializable {

    private String teacherStaffName;  //讲师名

    private String lessonDtlName;  //课程详情

    private String campusName;  //校区名

    public String getTeacherStaffName() {
        return teacherStaffName;
    }

    public void setTeacherStaffName(String teacherStaffName) {
        this.teacherStaffName = teacherStaffName;
    }

    public String getLessonDtlName() {
        return lessonDtlName;
    }

    public void setLessonDtlName(String lessonDtlName) {
        this.lessonDtlName = lessonDtlName;
    }

    public String getCampusName() {
        return campusName;
    }

    public void setCampusName(String campusName) {
        this.campusName = campusName;
    }
}
