package com.love.service;

import com.love.pojo.Interview;

import java.util.List;

public interface ParentInterviewService {

//    查询家长访谈列表
    List<Interview> selectParentInterview(Integer pageStart,Integer pageSize);



    //    查询家长访谈列表数量
    Integer getParentInterviewCounts();
}
