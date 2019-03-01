package com.love.controller;

import com.love.mapper.ClientMapper;
import com.love.pojo.Client;
import com.love.pojo.Staff;
import com.love.pojo.fqByPageObject.BaseQo;
import com.love.pojo.fqByPageObject.BaseVo;
import com.love.service.InfoDistributeService;
import com.love.service.InfoDistributeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.spel.ast.NullLiteral;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
@RequestMapping("/infodistribute/*")
public class InfoDistributeController {

    @Autowired
    private InfoDistributeService infoDistributeService;
    @ModelAttribute
    public void getCurrUser(Map<String,Object> map,HttpSession session){
        Staff staff= (Staff) session.getAttribute("currentUser");
        map.put("currentUser",staff);
    }

    /*分配学生*/
    @RequestMapping(value = {"distribute"},method=RequestMethod.POST)
    public @ResponseBody String  distribute(@RequestBody Map<String,Object> content,HttpSession session){
        Date distributeTime=new Date();
        System.out.println(content.get("staffId"));
        System.out.println(content.get("clients"));
        Integer staffId= Integer.parseInt((String) content.get("staffId"));
        String clients = (String) content.get("clients");
        String[] split = clients.split("#");
        int[] ids=new int[split.length-1];
        for (int i = 1; i <split.length ; i++) {
            ids[i-1]=Integer.parseInt(split[i]);
        }

        Staff currentUser = (Staff) session.getAttribute("currentUser");
        int i=infoDistributeService.updateClient(distributeTime,staffId,ids);
        if (i>0){

            return "success";
        }else{
            return "error";
        }
    }


    /*获取查询条件 ：校区、咨询师、客户来源*/
    @RequestMapping(value={"loadCondition"},method=RequestMethod.GET)
    public @ResponseBody
    Map<String, List<?>> loadCondition(HttpSession session){

//        System.out.println("asdasdasasd----"+session.getAttribute("currentUser"));
//        System.out.println("loadCondition...");
        Staff currentUser= (Staff) session.getAttribute("currentUser");
       // System.out.println(currentUser);
       Map<String, List<?>> conList=infoDistributeService.loadCondition(currentUser);
        return conList;
    }
    /*获取符合条件的客户*/
    @RequestMapping(value = {"getClientByEmaple"},method=RequestMethod.POST)
    public @ResponseBody
    BaseVo<Client> getClientByEmaple(HttpSession session, @RequestBody BaseQo<Client> result){
        System.out.println(result);
        Staff currentUser= (Staff) session.getAttribute("currentUser");
        result.count();
        Map<String,Object> map=new HashMap<>();
        map.put("staff",currentUser);
        map.put("client",result);
        BaseVo<Client> vo=infoDistributeService.getClientByEmaple(map);
        System.out.println("vooooooooooo"+vo);
        return vo;
    }
}
