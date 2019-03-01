package com.love.service;

import com.love.pojo.Staff;

import java.util.List;
import java.util.Map;

public interface StaffService {
    Staff login(Staff loginStaff);

    List<Staff> findHeadmaster();


    int updateStaff(Map<String, Object> map);

    /*查看校区员工列表*/
    List<Staff> viewStaffs(Map<String, Object> map);
}
