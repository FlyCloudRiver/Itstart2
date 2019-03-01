package com.love.service.interview.impl;

import com.love.mapper.ClientMapper;
import com.love.mapper.ClientSourceMapper;

import com.love.mapper.StaffMapper;
import com.love.pojo.Client;
import com.love.pojo.ClientSource;
import com.love.pojo.Staff;
import com.love.pojo.vg.ShowData;
import com.love.service.interview.InterviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

/**
 * interview的实现类
 *
 * @author liulei on 2019/1/8
 */
@Service
public class InterviewServiceImpl implements InterviewService {
    @Autowired
    private ClientSourceMapper clientSourceMapper;
    @Autowired
    private ClientMapper clientMapper;
    @Autowired
    private StaffMapper staffMapper;

    /**
     * 查询所有用户来源
     * @return
     */
    @Override
    public List<ClientSource> selectAll() {
        List<ClientSource> clientSources = clientSourceMapper.selectAllClientSource();
        return clientSources;
    }

    /**
     * 查询所有用户等级
     * @return
     */
    @Override
    public List<Client> selectAllGrades() {
        List<Client> clients = clientMapper.selectAllGrade();
        return clients;
    }

    /**
     * 查询所有的用户电话状态
     * @return
     */
    @Override
    public List<Client> selectAllStatus() {
        List<Client> clients = clientMapper.selectAllClientStatus();
        return clients;
    }

    /**
     * 查询所有的客户状态
     * @return
     */
    @Override
    public List<Client> selectAllState() {
        List<Client> clients = clientMapper.selectAllClientState();
        return clients;
    }

    @Override
    public List<Client> selectAllTrack() {
        List<Client> clients = clientMapper.selectAllClientTrack();
        return clients;
    }

    @Override
    public List<Client> selectCondition(Client client) {
        System.out.println("进入service");
        List<Client> clients = clientMapper.selectByCondition(client);
        System.out.println("service完成");
        System.out.println(clients.size());
        return clients;
    }

//    @Override
//    public List<Staff> selectByName(String name) {
//        List<Staff> staff = staffMapper.selectByVague(name);
//        return staff;
//    }

    /**
     * 根据咨询师的名称获取其id
     * @param name
     * @return
     */
    @Override
    public Staff selectByZiName(String name) {
        Staff staff = staffMapper.selectByName(name);
        return staff;
    }

    @Override
    public int updateClientData(Client client) {
        int i = clientMapper.updateClientData(client);
        return i;
    }

    @Override
    public List<Client> selectAllData(Integer start,Integer end) {
        List<Client> clients = clientMapper.selectAll(start,end);
        return clients;
    }

    @Override
    public Integer selectAllCountData() {
        return clientMapper.selectCount();
    }

}