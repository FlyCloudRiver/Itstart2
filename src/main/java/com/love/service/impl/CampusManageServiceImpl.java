package com.love.service.impl;

import com.love.mapper.CampusMapper;
import com.love.pojo.Campus;
import com.love.pojo.fqByPageObject.BaseQo;
import com.love.pojo.fqByPageObject.BaseVo;
import com.love.service.CampusManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CampusManageServiceImpl implements CampusManageService {
    @Autowired
    private CampusMapper campusMapper;



    @Override
    public BaseVo<Campus> searchCampus(BaseQo<Campus> qo) {
       Integer counts= campusMapper.count(qo);
       List<Campus> campusList=campusMapper.searchCampus(qo);
       BaseVo<Campus> vo=new BaseVo<>();
       vo.setRecords(counts);
        //System.out.println(vo+"------");
       vo.count();
       vo.setRows(campusList);
        return vo;
    }

    @Override
    public int addCampus(Campus campus) {
        return campusMapper.addCampus(campus);
    }

    @Override
    public int updateCampus(Map<String, Object> map) {
        return campusMapper.updateCampus(map);
    }

    @Override
    public int openCampus(Map<String, Object> map) {
        return campusMapper.openCampus(map);
    }

    @Override
    public int deleteCampus(Map<String, Object> map) {
      Campus campus=  campusMapper.findCampusById(map);
        System.out.println(campus+"-----------");
        int i=-1;
      if (campus.getCampusStatus()==0&& campus.getCampusStaffs().size()<1)
         i=campusMapper.deleteCampus(campus);
      return i;
    }
}
