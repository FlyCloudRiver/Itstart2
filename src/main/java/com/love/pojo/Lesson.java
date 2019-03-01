package com.love.pojo;

import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class Lesson {
    private Integer lessonId;

    private String lessonName;

    private Integer lessionLevelId;

    private Float lessionPrice;


    private  LessonLevel lessonLevel;

    private List<LessonDetail> lessonDetailList;


    public Lesson(Integer lessonId, String lessonName, Integer lessionLevelId, Float lessionPrice) {
        this.lessonId = lessonId;
        this.lessonName = lessonName;
        this.lessionLevelId = lessionLevelId;
        this.lessionPrice = lessionPrice;
    }


    public Lesson() {
        super();
    }

    public List<LessonDetail> getLessonDetailList() {
        return lessonDetailList;
    }

    public void setLessonDetailList(List<LessonDetail> lessonDetailList) {
        this.lessonDetailList = lessonDetailList;
    }

    public LessonLevel getLessonLevel() {
        return lessonLevel;
    }

    public void setLessonLevel(LessonLevel lessonLevel) {
        this.lessonLevel = lessonLevel;
    }

    public Integer getLessonId() {
        return lessonId;
    }

    public void setLessonId(Integer lessonId) {
        this.lessonId = lessonId;
    }

    public String getLessonName() {
        return lessonName;
    }

    public void setLessonName(String lessonName) {
        this.lessonName = lessonName == null ? null : lessonName.trim();
    }

    public Integer getLessionLevelId() {
        return lessionLevelId;
    }

    public void setLessionLevelId(Integer lessionLevelId) {
        this.lessionLevelId = lessionLevelId;
    }

    public Float getLessionPrice() {
        return lessionPrice;
    }

    public void setLessionPrice(Float lessionPrice) {
        this.lessionPrice = lessionPrice;
    }


    @Override
    public String toString() {
        return "Lesson{" +
                "lessonId=" + lessonId +
                ", lessonName='" + lessonName + '\'' +
                ", lessionLevelId=" + lessionLevelId +
                ", lessionPrice=" + lessionPrice +
                ", lessonLevel=" + lessonLevel +
                ", lessonDetailList=" + lessonDetailList +
                '}';
    }
}