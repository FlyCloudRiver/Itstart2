package com.love.pojo;

import org.springframework.stereotype.Component;

import java.util.Date;
@Component
public class Classroom {
    private Integer classroomId;

    private Integer classroomCapacity;

    private String classroomName;

    private Date classroomAddtime;

    private Integer classroomState;

    public Classroom(Integer classroomId, Integer classroomCapacity, String classroomName, Date classroomAddtime, Integer classroomState) {
        this.classroomId = classroomId;
        this.classroomCapacity = classroomCapacity;
        this.classroomName = classroomName;
        this.classroomAddtime = classroomAddtime;
        this.classroomState = classroomState;
    }

    public Classroom() {
        super();
    }

    public Integer getClassroomId() {
        return classroomId;
    }

    public void setClassroomId(Integer classroomId) {
        this.classroomId = classroomId;
    }

    public Integer getClassroomCapacity() {
        return classroomCapacity;
    }

    public void setClassroomCapacity(Integer classroomCapacity) {
        this.classroomCapacity = classroomCapacity;
    }

    public String getClassroomName() {
        return classroomName;
    }

    public void setClassroomName(String classroomName) {
        this.classroomName = classroomName == null ? null : classroomName.trim();
    }

    public Date getClassroomAddtime() {
        return classroomAddtime;
    }

    public void setClassroomAddtime(Date classroomAddtime) {
        this.classroomAddtime = classroomAddtime;
    }

    public Integer getClassroomState() {
        return classroomState;
    }

    public void setClassroomState(Integer classroomState) {
        this.classroomState = classroomState;
    }

    @Override
    public String toString() {
        return "Classroom{" + "classroomId=" + classroomId + ", classroomCapacity=" + classroomCapacity + ", classroomName='" + classroomName + '\'' + ", classroomAddtime=" + classroomAddtime + ", classroomState=" + classroomState + '}';
    }
}