package com.love.pojo.vg;

import java.io.Serializable;

/**
 * 查询条件的实体类
 *
 * @author liulei on 2019/1/9
 */
public class ShowData implements Serializable {
    private String clientSource;
    private Integer clientState;
    private String clientGrade;
    private Integer clientStatus;
    private Integer clientTrack;

    public ShowData() {
    }

    public ShowData(String clientSource, Integer clientState, String clientGrade, Integer clientStatus, Integer clientTrack) {
        this.clientSource = clientSource;
        this.clientState = clientState;
        this.clientGrade = clientGrade;
        this.clientStatus = clientStatus;
        this.clientTrack = clientTrack;
    }

    public String getClientSource() {
        return clientSource;
    }

    public void setClientSource(String clientSource) {
        this.clientSource = clientSource;
    }

    public Integer getClientState() {
        return clientState;
    }

    public void setClientState(Integer clientState) {
        this.clientState = clientState;
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

    public Integer getClientTrack() {
        return clientTrack;
    }

    public void setClientTrack(Integer clientTrack) {
        this.clientTrack = clientTrack;
    }
}