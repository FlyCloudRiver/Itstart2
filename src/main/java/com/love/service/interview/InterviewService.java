package com.love.service.interview;

import com.love.pojo.Client;
import com.love.pojo.ClientSource;
import com.love.pojo.Interview;
import com.love.pojo.Staff;
import com.love.pojo.vg.ShowData;

import java.sql.ResultSet;
import java.util.List;

public interface InterviewService {
   // public ResultSet selectInfo();
//    public List<ShowData> selectInfo();

//    public List<ClientSource> selectInfo();

    /**
     * 查询所有来源，不重复的
     * @return
     */
    public List<ClientSource> selectAll();

    /**
     * 查询所有的客户等级
     *
     * @return
     */
    public List<Client> selectAllGrades();
    /**
     * 查询所有的用户电话状态
     */
    public List<Client> selectAllStatus();
    /**
     * 查询所有的客户状态
     */
    public List<Client> selectAllState();
    /**
     * 查询所有的跟踪次数
     */
    public List<Client> selectAllTrack();
    /**
     * 根据不定的条件，动态查询数据
     */
    public List<Client> selectCondition(Client client);
    /**
     * 模糊查询获取id
     */
//    public List<Staff> selectByName(String name);
    /**
     * 根据咨询师名称获取咨询师id
     */
    public Staff selectByZiName(String name);

    /**
     * 修改数据，返回整型数据
     * @param client
     * @return
     */
    public int updateClientData(Client client);
    /**
     * 查询所有数据
     */
    public List<Client> selectAllData(Integer start, Integer end);
    /**
     * h获取总的数据条数
     */
    public Integer selectAllCountData();
}
