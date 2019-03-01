package com.love.service.impl;

import com.love.mapper.CampusMapper;
import com.love.mapper.ClientMapper;
import com.love.mapper.ClientSourceMapper;
import com.love.mapper.StaffMapper;
import com.love.pojo.Campus;
import com.love.pojo.Client;
import com.love.pojo.ClientSource;
import com.love.pojo.Staff;
import com.love.pojo.fqByPageObject.BaseVo;
import com.love.service.InfoDistributeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service("infoManageService")
public class InfoDistributeServiceImpl implements InfoDistributeService {
    @Autowired
    private CampusMapper campusMapper;

    @Autowired
    private ClientSourceMapper clientSourceMapper;

    @Autowired
    private StaffMapper staffMapper;
    @Autowired
    private ClientMapper clientMapper;
    @Override
    public Map<String, List<?>> loadCondition(Staff currentUser) {
        Map<String, List<?>> map=new HashMap<>();
        /*获取所有校区信息*/
        List<Campus> listCampus=campusMapper.selectAll();
        //System.out.println(Arrays.toString(listCampus.toArray()));
        /*获取所有信息来源*/
       List<ClientSource> listClientSource= clientSourceMapper.selectAll();
        //System.out.println(Arrays.toString(listClientSource.toArray()));
        /*获取咨询师*/
        List<Staff> consults=staffMapper.getConsultByCampus(currentUser);
        System.out.println(Arrays.toString(consults.toArray()));
       map.put("campus",listCampus);
       map.put("clientSource",listClientSource);
       map.put("consults",consults);
       return map;
    }

    @Override
    public BaseVo<Client> getClientByEmaple(Map<String, Object> map) {
        Integer count=clientMapper.count(map);
       List<Client> list =clientMapper.getClientByEmaple(map);
        BaseVo<Client> vo=new BaseVo<>();
        vo.setRows(list);
        vo.setRecords(count);
        vo.count();
        return vo;
    }

    @Override
    public int updateClient(Date distributeTime, Integer staffId, int[] ids) {
        return clientMapper.updateClient(distributeTime,staffId,ids);
    }






}
