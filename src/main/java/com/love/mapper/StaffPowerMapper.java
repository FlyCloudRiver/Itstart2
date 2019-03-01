package com.love.mapper;

import com.love.pojo.StaffPower;

public interface StaffPowerMapper {
    int deleteByPrimaryKey(Integer staffPowerId);

    int insert(StaffPower record);

    int insertSelective(StaffPower record);

    StaffPower selectByPrimaryKey(Integer staffPowerId);

    int updateByPrimaryKeySelective(StaffPower record);

    int updateByPrimaryKey(StaffPower record);


}