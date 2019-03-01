package com.love.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Interview {
    private Integer interviewId;

    private String interviewType;

    private String interviewContext;

    private Date interviewTime;

    private  Client client;

    public Interview(Integer interviewId, String interviewType, String interviewContext, Date interviewTime) {
        this.interviewId = interviewId;
        this.interviewType = interviewType;
        this.interviewContext = interviewContext;
        this.interviewTime = interviewTime;
    }


    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public Interview() {
        super();
    }

    public Integer getInterviewId() {
        return interviewId;
    }

    public void setInterviewId(Integer interviewId) {
        this.interviewId = interviewId;
    }

    public String getInterviewType() {
        return interviewType;
    }

    public void setInterviewType(String interviewType) {
        this.interviewType = interviewType == null ? null : interviewType.trim();
    }

    public String getInterviewContext() {
        return interviewContext;
    }

    public void setInterviewContext(String interviewContext) {
        this.interviewContext = interviewContext == null ? null : interviewContext.trim();
    }


    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getInterviewTime() {
        return interviewTime;
    }

    public void setInterviewTime(Date interviewTime) {
        this.interviewTime = interviewTime;
    }

    @Override
    public String toString() {
        return "Interview{" +
                "interviewId=" + interviewId +
                ", interviewType='" + interviewType + '\'' +
                ", interviewContext='" + interviewContext + '\'' +
                ", interviewTime=" + interviewTime +
                ", client=" + client +
                '}';
    }
}