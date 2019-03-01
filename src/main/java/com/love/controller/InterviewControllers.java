package com.love.controller;
import com.love.pojo.Client;
import com.love.pojo.ClientSource;
import com.love.pojo.Staff;
import com.love.pojo.vg.Condition;
import com.love.service.interview.InterviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * 关于访谈的控制器
 *
 * @author liulei on 2019/1/8
 */
@Controller
public class InterviewControllers {
    @Autowired
    private InterviewService interview;

    /**
     * 获取所有数据来源，不重复的
     * @param response
     * @param request
     * @return
     * @throws SQLException
     * @throws IOException
     */
    @RequestMapping("/showCSou")
    @ResponseBody
    public List<ClientSource> selectAllSource(HttpServletResponse response, HttpServletRequest request){
        List<ClientSource> clientSources = interview.selectAll();
        System.out.println(clientSources.toString());
        return clientSources;
    }
    /**
     * 查询所有用户等级
     */
    @RequestMapping("/showCGra")
    @ResponseBody
    public List<Client> selectAllClientGrade(){
        List<Client> clients = interview.selectAllGrades();
        return clients;
    }
    /**
     * 查询所有的用户电话的状态
     */
    @RequestMapping("/showCSta")
    @ResponseBody
    public List<Client> selectAllStatusTel(){
        List<Client> clients = interview.selectAllStatus();
//        System.out.println(clients);
        return clients;
    }
    /**
     * 查询所有的客户状态
     */
    @RequestMapping("/showCState")
    @ResponseBody
    public List<Client> selectAllClientState(){
        List<Client> clients = interview.selectAllState();
//        System.out.println(clients);
        return clients;
    }
    /**
     * 查询所有的跟踪次数
     */
    @RequestMapping("/showCTrack")
    @ResponseBody
    public List<Client> selectAllCliTrack(){
        List<Client> clients = interview.selectAllTrack();
        System.out.println(clients);
        return clients;
    }

    /**
     * 根据不确定个数条件查询数据
     */
    @RequestMapping("/selectData")
    @ResponseBody
    public List<Client> selectConClients(Condition condition){
        System.out.println("奇迹啊。。");
        System.out.println(condition.toString());
//        List<Staff> staff = interview.selectByName(marketing);
//        System.out.println(staff.toString());
        System.out.println("12345");
        Staff staff1 = interview.selectByZiName(condition.getCourseAnswer());
        Client client=new Client();
        ClientSource clientSource=new ClientSource();
        if(condition.getInfosource()==0){
            Staff staff2=new Staff();
            staff2.setStaffId(staff1.getStaffId());
            client.setStaffs(staff2);
            if(condition.getMarketing()!=null){
                client.setClientName(condition.getMarketing());
            }
            if(!condition.getClientGrade().equals("0")){
                client.setClientGrade(condition.getClientGrade());
            }
            if(condition.getClientstate()!=-1)
            {
                client.setClientState(condition.getClientstate());
            }
            if(condition.getTracktimes()!=-1){
                client.setClientTrack(condition.getTracktimes());
            }
            if(condition.getClientStatus()!=-1)
            {
                client.setClientStatus(condition.getClientStatus());
            }
            System.out.println("控制层。。。");
            List<Client> clients = interview.selectCondition(client);
            return clients;
        }else{
            clientSource.setClientSourceId(condition.getInfosource());
            Staff staff2=new Staff();
            staff2.setStaffId(staff1.getStaffId());
            client.setStaffs(staff2);
            if(condition.getMarketing()!=null){
                client.setClientName(condition.getMarketing());
            }
            if(!condition.getClientGrade().equals("0")){
                client.setClientGrade(condition.getClientGrade());
            }
            if(condition.getClientstate()!=-1)
            {
                client.setClientState(condition.getClientstate());
            }
            if(condition.getTracktimes()!=-1){
                client.setClientTrack(condition.getTracktimes());
            }
            if(condition.getClientStatus()!=-1)
            {
                client.setClientStatus(condition.getClientStatus());
            }
            System.out.println("控制层。。。");
            List<Client> clients = interview.selectCondition(client);
            return clients;
        }
    }
    /**
     * 修改数据
     */
    @RequestMapping("/updateData")
    @ResponseBody
    public int updateData(Client client){
        System.out.println("111");
        System.out.println(client.toString());
        System.out.println("222");
        int i = interview.updateClientData(client);
       return i;
    }
    /**
     * 获取所有数据
     */
    @RequestMapping("/selectAllData")
    @ResponseBody
    public List<Client> selectAllClientData(HttpServletRequest request,HttpServletResponse response,Condition condition){
        System.out.println("123---:"+condition.toString());

        String pagenum = request.getParameter("pagenum");
        int pagenum2=Integer.parseInt(pagenum);
       System.out.println("页数："+pagenum2);
        String pagesize = request.getParameter("pagesize");
        int pagesize2=Integer.parseInt(pagesize);
       System.out.println("每一页数据条数："+pagesize2);
//        Staff staff1 = interview.selectByZiName(condition.getCourseAnswer());
//        Client client=new Client();
//        ClientSource clientSource=new ClientSource();
//        if(condition.getInfosource()==0){
//            Staff staff2=new Staff();
//            staff2.setStaffId(staff1.getStaffId());
//            client.setStaffs(staff2);
//            if(condition.getMarketing()!=null){
//                client.setClientName(condition.getMarketing());
//            }
//            if(!condition.getClientGrade().equals("0")){
//                client.setClientGrade(condition.getClientGrade());
//            }
//            if(condition.getClientstate()!=-1)
//            {
//                client.setClientState(condition.getClientstate());
//            }
//            if(condition.getTracktimes()!=-1){
//                client.setClientTrack(condition.getTracktimes());
//            }
//            if(condition.getClientStatus()!=-1)
//            {
//                client.setClientStatus(condition.getClientStatus());
//            }
//        }else{
//            clientSource.setClientSourceId(condition.getInfosource());
//            Staff staff2=new Staff();
//            staff2.setStaffId(staff1.getStaffId());
//            client.setStaffs(staff2);
//            if(condition.getMarketing()!=null){
//                client.setClientName(condition.getMarketing());
//            }
//            if(!condition.getClientGrade().equals("0")){
//                client.setClientGrade(condition.getClientGrade());
//            }
//            if(condition.getClientstate()!=-1)
//            {
//                client.setClientState(condition.getClientstate());
//            }
//            if(condition.getTracktimes()!=-1){
//                client.setClientTrack(condition.getTracktimes());
//            }
//            if(condition.getClientStatus()!=-1)
//            {
//                client.setClientStatus(condition.getClientStatus());
//            }
//        }

        List<Client> clients = interview.selectAllData(pagenum2*pagesize2+1,pagesize2);
        System.out.println(clients.toString());
        return clients;
    }
    @RequestMapping("/selectDataCount")
    @ResponseBody
    public Integer selectCountClient(){
        Integer count = interview.selectAllCountData();
        System.out.println(count);
        count=count/8;
        return count;
    }
}