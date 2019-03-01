package com.love.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;
@Component
public class Classes implements Serializable {
    //班级id
    private Integer classesId;
    //班级名称
    private String classesName;
    //开班时间
    private Date classesStarttime;
    //结班时间
    private Date classesEndtime;
    //班级容纳人数
    private Integer classesCapacity;
    //班级实际人数
    private Integer classesInclude;
    //开班状态
    private Integer classesStatus;
    //班级编号
    private String classesNumber;

    //班主任（counselors_staff_id）
    private Staff staff;
    //课程(counselors_staff_id)
    private Lesson lesson;
    //讲师
    private Staff staffTeacher ;
    //班级类型
    private ClassesType classesType;
    //教室
    private Classroom classroom;
    //所属校区
    private Campus campus;

    public Classes(Integer classesId, String classesName, Date classesStarttime, Date classesEndtime, Integer classesCapacity, Integer classesInclude, Integer classesStatus, String classesNumber) {
        this.classesId = classesId;
        this.classesName = classesName;
        this.classesStarttime = classesStarttime;
        this.classesEndtime = classesEndtime;
        this.classesCapacity = classesCapacity;
        this.classesInclude = classesInclude;
        this.classesStatus = classesStatus;
        this.classesNumber = classesNumber;
    }

    public Classes() {
        super();
    }

    public Integer getClassesId() {
        return classesId;
    }

    public void setClassesId(Integer classesId) {
        this.classesId = classesId;
    }

    public String getClassesName() {
        return classesName;
    }

    public void setClassesName(String classesName) {
        this.classesName = classesName == null ? null : classesName.trim();
    }
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getClassesStarttime() {
        return classesStarttime;
    }

    public void setClassesStarttime(Date classesStarttime) {
        this.classesStarttime = classesStarttime;
    }
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getClassesEndtime() {
        return classesEndtime;
    }

    public void setClassesEndtime(Date classesEndtime) {
        this.classesEndtime = classesEndtime;
    }

    public Integer getClassesCapacity() {
        return classesCapacity;
    }

    public void setClassesCapacity(Integer classesCapacity) {
        this.classesCapacity = classesCapacity;
    }

    public Integer getClassesInclude() {
        return classesInclude;
    }

    public void setClassesInclude(Integer classesInclude) {
        this.classesInclude = classesInclude;
    }

    public Integer getClassesStatus() {
        return classesStatus;
    }

    public void setClassesStatus(Integer classesStatus) {
        this.classesStatus = classesStatus;
    }

    public String getClassesNumber() {
        return classesNumber;
    }

    public void setClassesNumber(String classesNumber) {
        this.classesNumber = classesNumber == null ? null : classesNumber.trim();
    }

    public Staff getStaff() {
        return staff;
    }

    public void setStaff(Staff staff) {
        this.staff = staff;
    }

    public Staff getStaffTeacher() {
        return staffTeacher;
    }

    public void setStaffTeacher(Staff staffTeacher) {
        this.staffTeacher = staffTeacher;
    }

    public Lesson getLesson() {
        return lesson;
    }

    public void setLesson(Lesson lesson) {
        this.lesson = lesson;
    }

    public ClassesType getClassesType() {
        return classesType;
    }

    public void setClassesType(ClassesType classesType) {
        this.classesType = classesType;
    }

    public Classroom getClassroom() {
        return classroom;
    }

    public void setClassroom(Classroom classroom) {
        this.classroom = classroom;
    }

    public Campus getCampus() {
        return campus;
    }

    public void setCampus(Campus campus) {
        this.campus = campus;
    }

    @Override
    public String toString() {
        return "Classes{" + "classesId=" + classesId + ", classesName='" + classesName + '\'' + ", classesStarttime=" + classesStarttime + ", classesEndtime=" + classesEndtime + ", classesCapacity=" + classesCapacity + ", classesInclude=" + classesInclude + ", classesStatus=" + classesStatus + ", classesNumber='" + classesNumber + '\'' + ", staff=" + staff + ", lesson=" + lesson + ", staffTeacher=" + staffTeacher + ", classesType=" + classesType + ", classroom=" + classroom + ", campus=" + campus + '}';
    }
}