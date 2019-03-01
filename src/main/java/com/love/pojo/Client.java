package com.love.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

public class Client {
    private Integer clientId;

    private String clientName;

    private String clientTel;

    private Integer clientStatus;

    private String clientLinkman;

    private String clientAddress;

    private String clientGender;

    private String clientLinkmanTel;

    private String clientNumber;

    private String clientGrade;

    private Integer clientState;

    private Integer clientPursure;

    private Date clientVisitedTime;

    private Date clientDistributeTime;

    private Date clientInterviewTime;

    private Integer clientTrack;

    private Date clientAddtime;

    private  Classes classes;
    private ClientSource clientSource;
    private Campus campus;
    private Staff saleStaff;
    private Staff staffs;//咨询师
    public Staff getStaffs() {
        return staffs;
    }

    public void setStaffs(Staff staffs) {
        this.staffs = staffs;
    }


    public Staff getSaleStaff() {
        return saleStaff;
    }

    public void setSaleStaff(Staff saleStaff) {
        this.saleStaff = saleStaff;
    }

    public ClientSource getClientSource() {
        return clientSource;
    }

    public void setClientSource(ClientSource clientSource) {
        this.clientSource = clientSource;
    }

    public Campus getCampus() {
        return campus;
    }

    public void setCampus(Campus campus) {
        this.campus = campus;
    }


    public Client(Integer clientId, String clientName, String clientTel, Integer clientStatus, String clientLinkman, String clientAddress, String clientGender,
                  String clientLinkmanTel, String clientNumber, String clientGrade, Integer clientState, Integer clientPursure,
                  Date clientVisitedTime, Date clientDistributeTime, Date clientInterviewTime, Integer clientTrack, Date clientAddtime) {
        this.clientId = clientId;
        this.clientName = clientName;
        this.clientTel = clientTel;
        this.clientStatus = clientStatus;
        this.clientLinkman = clientLinkman;
        this.clientAddress = clientAddress;
        this.clientGender = clientGender;
        this.clientLinkmanTel = clientLinkmanTel;
        this.clientNumber = clientNumber;
        this.clientGrade = clientGrade;
        this.clientState = clientState;
        this.clientPursure = clientPursure;
        this.clientVisitedTime = clientVisitedTime;
        this.clientDistributeTime = clientDistributeTime;
        this.clientInterviewTime = clientInterviewTime;
        this.clientTrack = clientTrack;
        this.clientAddtime = clientAddtime;
    }

    public Client() {
    }




    public Integer getClientId() {
        return clientId;
    }

    public void setClientId(Integer clientId) {
        this.clientId = clientId;
    }

    public String getClientName() {
        return clientName;
    }

    public void setClientName(String clientName) {
        this.clientName = clientName;
    }

    public String getClientTel() {
        return clientTel;
    }

    public void setClientTel(String clientTel) {
        this.clientTel = clientTel;
    }

    public Integer getClientStatus() {
        return clientStatus;
    }

    public void setClientStatus(Integer clientStatus) {
        this.clientStatus = clientStatus;
    }

    public String getClientLinkman() {
        return clientLinkman;
    }

    public void setClientLinkman(String clientLinkman) {
        this.clientLinkman = clientLinkman;
    }

    public String getClientAddress() {
        return clientAddress;
    }

    public void setClientAddress(String clientAddress) {
        this.clientAddress = clientAddress;
    }

    public String getClientGender() {
        return clientGender;
    }

    public void setClientGender(String clientGender) {
        this.clientGender = clientGender;
    }

    public String getClientLinkmanTel() {
        return clientLinkmanTel;
    }

    public void setClientLinkmanTel(String clientLinkmanTel) {
        this.clientLinkmanTel = clientLinkmanTel;
    }

    public String getClientNumber() {
        return clientNumber;
    }

    public void setClientNumber(String clientNumber) {
        this.clientNumber = clientNumber;
    }

    public String getClientGrade() {
        return clientGrade;
    }

    public void setClientGrade(String clientGrade) {
        this.clientGrade = clientGrade;
    }

    public Integer getClientState() {
        return clientState;
    }

    public void setClientState(Integer clientState) {
        this.clientState = clientState;
    }

    public Integer getClientPursure() {
        return clientPursure;
    }

    public void setClientPursure(Integer clientPursure) {
        this.clientPursure = clientPursure;
    }

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getClientVisitedTime() {
        return clientVisitedTime;
    }

    public void setClientVisitedTime(Date clientVisitedTime) {
        this.clientVisitedTime = clientVisitedTime;
    }

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getClientDistributeTime() {
        return clientDistributeTime;
    }

    public void setClientDistributeTime(Date clientDistributeTime) {
        this.clientDistributeTime = clientDistributeTime;
    }

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getClientInterviewTime() {
        return clientInterviewTime;
    }

    public void setClientInterviewTime(Date clientInterviewTime) {
        this.clientInterviewTime = clientInterviewTime;
    }

    public Integer getClientTrack() {
        return clientTrack;
    }

    public void setClientTrack(Integer clientTrack) {
        this.clientTrack = clientTrack;
    }

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getClientAddtime() {
        return clientAddtime;
    }

    public void setClientAddtime(Date clientAddtime) {
        this.clientAddtime = clientAddtime;
    }

    public Classes getClasses() {
        return classes;
    }

    public void setClasses(Classes classes) {
        this.classes = classes;
    }

    @Override
    public String toString() {
        return "Client{" +
                "clientId=" + clientId +
                ", clientName='" + clientName + '\'' +
                ", clientTel='" + clientTel + '\'' +
                ", clientStatus=" + clientStatus +
                ", clientLinkman='" + clientLinkman + '\'' +
                ", clientAddress='" + clientAddress + '\'' +
                ", clientGender='" + clientGender + '\'' +
                ", clientLinkmanTel='" + clientLinkmanTel + '\'' +
                ", clientNumber='" + clientNumber + '\'' +
                ", clientGrade='" + clientGrade + '\'' +
                ", clientState=" + clientState +
                ", clientPursure=" + clientPursure +
                ", clientVisitedTime=" + clientVisitedTime +
                ", clientDistributeTime=" + clientDistributeTime +
                ", clientInterviewTime=" + clientInterviewTime +
                ", clientTrack=" + clientTrack +
                ", clientAddtime=" + clientAddtime +
                ", classes=" + classes +
                ", clientSource=" + clientSource +
                ", campus=" + campus +
                ", saleStaff=" + saleStaff +
                '}';
    }
}