package com.love.service;

import com.love.pojo.Client;
import com.love.pojo.Staff;
import com.love.pojo.fqByPageObject.BaseVo;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface InfoDistributeService {
    Map<String, List<?>> loadCondition(Staff testStaff);

    BaseVo<Client> getClientByEmaple(Map<String, Object> map);

    int updateClient(Date distributeTime, Integer staffId, int[] ids);
}
