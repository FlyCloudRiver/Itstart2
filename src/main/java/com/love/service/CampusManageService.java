package com.love.service;

import com.love.pojo.Campus;
import com.love.pojo.fqByPageObject.BaseQo;
import com.love.pojo.fqByPageObject.BaseVo;

import java.util.Map;

public interface CampusManageService {

    BaseVo<Campus> searchCampus(BaseQo<Campus> qo);

    int addCampus(Campus campus);

    int updateCampus(Map<String, Object> map);

    int openCampus(Map<String, Object> map);

    int deleteCampus(Map<String, Object> map);
}
