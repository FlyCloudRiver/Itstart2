package com.love.service.impl;

import com.love.mapper.StaffMapper;
import com.love.pojo.Staff;
import com.love.service.TestLoginIn;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TestLoginInImpl implements TestLoginIn {

    @Autowired
    private StaffMapper staffMapper;

    public Staff find(Integer i){
        Staff staff = staffMapper.selectByPrimaryKey(i);

        return staff;
    }
}
