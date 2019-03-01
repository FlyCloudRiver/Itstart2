package com.love.mapper;

import com.love.pojo.Staff;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface StaffMapper {
    int deleteByPrimaryKey(Integer staffId);

    int insert(Staff record);

    int insertSelective(Staff record);

    Staff selectByPrimaryKey(Integer staffId);

    int updateByPrimaryKeySelective(Staff record);

    int updateByPrimaryKey(Staff record);

    /*员工登录*/
    Staff login(Staff loginStaff);

    /*获取校区咨询师*或全部咨询师 */
    List<Staff> getConsultByCampus(Staff currentUser);

    //获取wy所有的讲师
    List<HashMap<String,Object>> getAllWyTeachersName();

    //获取wy所有的班主任
    List<HashMap<String,Object>> getAllWyHeaderTeachersName();


    /*查找所有班主任*/
    List<Staff> findAllStaff();
    /*查找所有讲师*/
    List<Staff> findAllLectorr();

    Staff selectStaffById(Integer id);

    Staff selectByName(String name);

    /*fq查找 教务主任*/
    List<Staff> findHeadmaster();

    /*fq 更新教务主任为校长*/
    int updateStaff(Map<String, Object> map);

    /*fq 查看校区员工*/
    List<Staff> viewStaffs(Map<String, Object> map);
}