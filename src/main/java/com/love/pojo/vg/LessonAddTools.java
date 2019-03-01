package com.love.pojo.vg;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

@Component
public class LessonAddTools implements Serializable {

    private Integer campusId; //校区id

    private String lessonDetail;  //课程详情

    private Integer classesInclude;  //班级实际人数

    private Integer teacherId;  //讲师id

    private Integer classroomId;  //教室id

    private String classNumber;  //班级编号

    private Date startTime;  //开课时间

    private Date endTime;  //结课时间

    private String lessonName; //课程名

    private Integer lessonHour; //课时

    private Integer headerTeacherId;  //班主任id

    private String classesName;  //班级名

    private Integer lessonId;  //课程id

    public Integer getLessonId() {
        return lessonId;
    }

    public void setLessonId(Integer lessonId) {
        this.lessonId = lessonId;
    }

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

    @DateTimeFormat(pattern="yyyy-MM-dd")
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    @DateTimeFormat(pattern="yyyy-MM-dd")
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public String getLessonName() {
        return lessonName;
    }

    public void setLessonName(String lessonName) {
        this.lessonName = lessonName;
    }

    public Integer getLessonHour() {
        return lessonHour;
    }

    public void setLessonHour(Integer lessonHour) {
        this.lessonHour = lessonHour;
    }

    public Integer getHeaderTeacherId() {
        return headerTeacherId;
    }

    public void setHeaderTeacherId(Integer headerTeacherId) {
        this.headerTeacherId = headerTeacherId;
    }

    public String getClassesName() {
        return classesName;
    }

    public void setClassesName(String classesName) {
        this.classesName = classesName;
    }

    @Override
    public String toString() {
        return "LessonAddTools{" +
                "campusId=" + campusId +
                ", lessonDetail='" + lessonDetail + '\'' +
                ", classesInclude=" + classesInclude +
                ", teacherId=" + teacherId +
                ", classroomId=" + classroomId +
                ", classNumber='" + classNumber + '\'' +
                ", startTime=" + startTime +
                ", endTime=" + endTime +
                ", lessonName='" + lessonName + '\'' +
                ", lessonHour=" + lessonHour +
                ", headerTeacherId=" + headerTeacherId +
                ", classesName='" + classesName + '\'' +
                '}';
    }
}
