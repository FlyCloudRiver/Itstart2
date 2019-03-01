package com.love.pojo;

import org.springframework.stereotype.Component;

@Component
public class LessonDetail {
    private Integer lessonDtlId;

    private String lessonDtlName;

    private Integer lessonDtlHour;

    private Lesson lesson;

    public Lesson getLesson() {
        return lesson;
    }

    public void setLesson(Lesson lesson) {
        this.lesson = lesson;
    }


    public LessonDetail(Integer lessonDtlId, String lessonDtlName, Integer lessonDtlHour) {
        this.lessonDtlId = lessonDtlId;
        this.lessonDtlName = lessonDtlName;
        this.lessonDtlHour = lessonDtlHour;
    }

    public LessonDetail() {
        super();
    }




    public Integer getLessonDtlId() {
        return lessonDtlId;
    }

    public void setLessonDtlId(Integer lessonDtlId) {
        this.lessonDtlId = lessonDtlId;
    }

    public String getLessonDtlName() {
        return lessonDtlName;
    }

    public void setLessonDtlName(String lessonDtlName) {
        this.lessonDtlName = lessonDtlName == null ? null : lessonDtlName.trim();
    }

    public Integer getLessonDtlHour() {
        return lessonDtlHour;
    }

    public void setLessonDtlHour(Integer lessonDtlHour) {
        this.lessonDtlHour = lessonDtlHour;
    }
}