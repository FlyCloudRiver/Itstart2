package com.love.pojo;


import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import javax.validation.constraints.Future;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Component
public class Campus  implements Serializable{
    private Integer campusId;

    @NotNull
    private String campusName;

    @NotNull
    private String campusNumber;

    @NotNull
    private Date campusAddTime;

    private Date campusUpdateTime;

    @NotNull
    private Integer campusStatus;
    private List<Staff> campusStaffs;

    public Campus(Integer campusId, String campusName, String campusNumber, Date campusAddTime, Date campusUpdateTime, Integer campusStatus) {
        this.campusId = campusId;
        this.campusName = campusName;
        this.campusNumber = campusNumber;
        this.campusAddTime = campusAddTime;
        this.campusUpdateTime = campusUpdateTime;
        this.campusStatus = campusStatus;
    }

    public Campus() {
        super();
    }

    public Integer getCampusId() {
        return campusId;
    }

    public void setCampusId(Integer campusId) {
        this.campusId = campusId;
    }

    public String getCampusName() {
        return campusName;
    }

    public void setCampusName(String campusName) {
        this.campusName = campusName == null ? null : campusName.trim();
    }

    public String getCampusNumber() {
        return campusNumber;
    }

    public void setCampusNumber(String campusNumber) {
        this.campusNumber = campusNumber == null ? null : campusNumber.trim();
    }
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getCampusAddTime() {
        return campusAddTime;
    }

    public void setCampusAddTime(Date campusAddTime) {
        this.campusAddTime = campusAddTime;
    }

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getCampusUpdateTime() {
        return campusUpdateTime;
    }

    public void setCampusUpdateTime(Date campusUpdateTime) {
        this.campusUpdateTime = campusUpdateTime;
    }

    public Integer getCampusStatus() {
        return campusStatus;
    }

    public void setCampusStatus(Integer campusStatus) {
        this.campusStatus = campusStatus;
    }

    @Override
    public String toString() {
        return "Campus{" +
                "campusId=" + campusId +
                ", campusName='" + campusName + '\'' +
                ", campusNumber='" + campusNumber + '\'' +
                ", campusAddTime=" + campusAddTime +
                ", campusUpdateTime=" + campusUpdateTime +
                ", campusStatus=" + campusStatus +
                ", campusStaffs=" + campusStaffs +
                '}';
    }

    public List<Staff> getCampusStaffs() {
        return campusStaffs;
    }

    public void setCampusStaffs(List<Staff> campusStaffs) {
        this.campusStaffs = campusStaffs;
    }
}