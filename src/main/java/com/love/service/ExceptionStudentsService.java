package com.love.service;

import com.love.pojo.Client;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ExceptionStudentsService {

   /**
    * 根据查询条件获取该校区所有异常学生列表
    */
   List<Client> selectExceptionStudents(Client client,Integer pageStart,Integer pageSize);


   //   获取异常学生列表总数
   Integer getExceptionStudentsCounts(Client client);

}
