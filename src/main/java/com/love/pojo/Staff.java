package com.love.pojo;

import org.springframework.stereotype.Component;

@Component
public class Staff {
    private Integer staffId;

    private Integer staffBoss;

    private String staffName;

    private String staffNumber;

    private String staffPassword;

    private StaffPower staffPower;

    private Campus campus;


    public Staff(Integer staffId, Integer staffBoss, String staffName, String staffNumber, String staffPassword) {
        this.staffId = staffId;
        this.staffBoss = staffBoss;
        this.staffName = staffName;
        this.staffNumber = staffNumber;
        this.staffPassword = staffPassword;
    }

    public Campus getCampus() {
        return campus;
    }

    public void setCampus(Campus campus) {
        this.campus = campus;
    }
    public StaffPower getStaffPower() {
        return staffPower;
    }

    public void setStaffPower(StaffPower staffPower) {
        this.staffPower = staffPower;
    }
    public Integer getStaffBoss() {
        return staffBoss;
    }

    public void setStaffBoss(Integer staffBoss) {
        this.staffBoss = staffBoss;
    }


    public Staff() {
        super();
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName == null ? null : staffName.trim();
    }

    public String getStaffNumber() {
        return staffNumber;
    }

    public void setStaffNumber(String staffNumber) {
        this.staffNumber = staffNumber == null ? null : staffNumber.trim();
    }

    public String getStaffPassword() {
        return staffPassword;
    }

    public void setStaffPassword(String staffPassword) {
        this.staffPassword = staffPassword == null ? null : staffPassword.trim();
    }

    @Override
    public String toString() {
        return "Staff{" +
                "staffId=" + staffId +
                ", staffBoss=" + staffBoss +
                ", staffName='" + staffName + '\'' +
                ", staffNumber='" + staffNumber + '\'' +
                ", staffPassword='" + staffPassword + '\'' +
                ", staffPower=" + staffPower +
                ", campus=" + campus +
                '}';
    }
}