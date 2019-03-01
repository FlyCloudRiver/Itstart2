package com.love.pojo;

import org.springframework.stereotype.Component;

@Component
public class ClassesType {
    private Integer classesTypeId;

    private String classesType;


    public ClassesType(Integer classesTypeId, String classesType) {
        this.classesTypeId = classesTypeId;
        this.classesType = classesType;
    }

    public ClassesType() {
        super();
    }

    public Integer getClassesTypeId() {
        return classesTypeId;
    }

    public void setClassesTypeId(Integer classesTypeId) {
        this.classesTypeId = classesTypeId;
    }

    public String getClassesType() {
        return classesType;
    }

    public void setClassesType(String classesType) {
        this.classesType = classesType == null ? null : classesType.trim();
    }

    @Override
    public String toString() {
        return "ClassesType{" + "classesTypeId=" + classesTypeId + ", classesType='" + classesType + '\'' + '}';
    }
}