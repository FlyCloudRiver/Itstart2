package com.love.pojo;

public class LessonLevel {
    private Integer lessonLevelId;

    private Integer lessonLevelSchool;

    private Integer lessonLevelType;

    private Integer lessonLevelGrade;

    public LessonLevel(Integer lessonLevelId, Integer lessonLevelSchool, Integer lessonLevelType, Integer lessonLevelGrade) {
        this.lessonLevelId = lessonLevelId;
        this.lessonLevelSchool = lessonLevelSchool;
        this.lessonLevelType = lessonLevelType;
        this.lessonLevelGrade = lessonLevelGrade;
    }

    public LessonLevel() {
        super();
    }

    public Integer getLessonLevelId() {
        return lessonLevelId;
    }

    public void setLessonLevelId(Integer lessonLevelId) {
        this.lessonLevelId = lessonLevelId;
    }

    public Integer getLessonLevelSchool() {
        return lessonLevelSchool;
    }

    public void setLessonLevelSchool(Integer lessonLevelSchool) {
        this.lessonLevelSchool = lessonLevelSchool;
    }

    public Integer getLessonLevelType() {
        return lessonLevelType;
    }

    public void setLessonLevelType(Integer lessonLevelType) {
        this.lessonLevelType = lessonLevelType;
    }

    public Integer getLessonLevelGrade() {
        return lessonLevelGrade;
    }

    public void setLessonLevelGrade(Integer lessonLevelGrade) {
        this.lessonLevelGrade = lessonLevelGrade;
    }

    @Override
    public String toString() {
        return "LessonLevel{" +
                "lessonLevelId=" + lessonLevelId +
                ", lessonLevelSchool=" + lessonLevelSchool +
                ", lessonLevelType=" + lessonLevelType +
                ", lessonLevelGrade=" + lessonLevelGrade +
                '}';
    }
}