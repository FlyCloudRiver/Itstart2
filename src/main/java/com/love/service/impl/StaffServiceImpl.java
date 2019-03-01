package com.love.service.impl;

import com.love.mapper.StaffMapper;
import com.love.pojo.Staff;
import com.love.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

@Service
public class StaffServiceImpl implements StaffService {
    @Autowired
    private StaffMapper staffMapper;

    @Override
    public Staff login(Staff loginStaff) {
        return staffMapper.login(loginStaff);
    }

    @Override
    public List<Staff> findHeadmaster() {
        List<Staff> list= staffMapper.findHeadmaster();
        System.out.println(Arrays.toString(list.toArray()));
        return list;
    }

    @Override
    public int updateStaff(Map<String, Object> map) {
        return staffMapper.updateStaff(map);
    }

    @Override
    public List<Staff> viewStaffs(Map<String, Object> map) {
        return staffMapper.viewStaffs(map);
    }
}
