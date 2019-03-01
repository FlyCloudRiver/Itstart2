package com.love.pojo;

import java.io.Serializable;

public class StaffPower  implements Serializable {
    private Integer staffPowerId;

    private String staffPowerDetail;

    public StaffPower(Integer staffPowerId, String staffPowerDetail) {
        this.staffPowerId = staffPowerId;
        this.staffPowerDetail = staffPowerDetail;
    }

    public StaffPower() {
        super();
    }

    public Integer getStaffPowerId() {
        return staffPowerId;
    }

    public void setStaffPowerId(Integer staffPowerId) {
        this.staffPowerId = staffPowerId;
    }

    public String getStaffPowerDetail() {
        return staffPowerDetail;
    }

    public void setStaffPowerDetail(String staffPowerDetail) {
        this.staffPowerDetail = staffPowerDetail == null ? null : staffPowerDetail.trim();
    }

    @Override
    public String toString() {
        return "StaffPower{" +
                "staffPowerId=" + staffPowerId +
                ", staffPowerDetail='" + staffPowerDetail + '\'' +
                '}';
    }
}