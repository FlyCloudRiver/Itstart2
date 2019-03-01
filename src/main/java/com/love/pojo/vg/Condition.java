package com.love.pojo.vg;

import java.io.Serializable;

/**
 * 前端的条件
 *
 * @author liulei on 2019/1/9
 */
public class Condition implements Serializable {
    //信息来源的id
     private Integer infosource;
     private String clientGrade;
     private Integer clientStatus;
     private String marketing;
     private String courseAnswer;
     private Integer clientstate;
     private Integer tracktimes;

    public Condition() {
    }

    public Condition(Integer infosource, String clientGrade, Integer clientStatus, String marketing, String courseAnswer, Integer clientstate, Integer tracktimes) {
        this.infosource = infosource;
        this.clientGrade = clientGrade;
        this.clientStatus = clientStatus;
        this.marketing = marketing;
        this.courseAnswer = courseAnswer;
        this.clientstate = clientstate;
        this.tracktimes = tracktimes;
    }

    public Integer getInfosource() {
        return infosource;
    }

    public void setInfosource(Integer infosource) {
        this.infosource = infosource;
    }

    public String getClientGrade() {
        return clientGrade;
    }

    public void setClientGrade(String clientGrade) {
        this.clientGrade = clientGrade;
    }

    public Integer getClientStatus() {
        return clientStatus;
    }

    public void setClientStatus(Integer clientStatus) {
        this.clientStatus = clientStatus;
    }

    public String getMarketing() {
        return marketing;
    }

    public void setMarketing(String marketing) {
        this.marketing = marketing;
    }

    public String getCourseAnswer() {
        return courseAnswer;
    }

    public void setCourseAnswer(String courseAnswer) {
        this.courseAnswer = courseAnswer;
    }

    public Integer getClientstate() {
        return clientstate;
    }

    public void setClientstate(Integer clientstate) {
        this.clientstate = clientstate;
    }

    public Integer getTracktimes() {
        return tracktimes;
    }

    public void setTracktimes(Integer tracktimes) {
        this.tracktimes = tracktimes;
    }

    @Override
    public String toString() {
        return "Condition{" +
                "infosource='" + infosource + '\'' +
                ", clientGrade=" + clientGrade +
                ", clientStatus=" + clientStatus +
                ", marketing='" + marketing + '\'' +
                ", courseAnswer='" + courseAnswer + '\'' +
                ", clientstate=" + clientstate +
                ", tracktimes=" + tracktimes +
                '}';
    }
}