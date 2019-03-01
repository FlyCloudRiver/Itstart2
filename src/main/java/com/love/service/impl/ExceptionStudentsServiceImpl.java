package com.love.service.impl;

import com.love.mapper.ClientMapper;
import com.love.pojo.Client;
import com.love.service.ExceptionStudentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("exceptionStudents")
public class ExceptionStudentsServiceImpl implements ExceptionStudentsService {

    @Autowired
   private ClientMapper  clientMapper;


    @Override
    public List<Client> selectExceptionStudents(Client client,Integer pageStart,Integer pageSize) {
        System.out.println("我被执行了");
        System.out.println(client.getClasses().getClassesStatus());
         List<Client> clientList=clientMapper.selectExceptionStudents(client,pageStart,pageSize);
        return clientList;
    }

    @Override
    public Integer getExceptionStudentsCounts(Client client) {
        Integer exceptionStudentsCounts = clientMapper.getExceptionStudentsCounts(client);

        return exceptionStudentsCounts;
    }
}
