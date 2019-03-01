package com.love.mapper;

import com.love.pojo.Interview;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface InterviewMapper {
    int deleteByPrimaryKey(Integer interviewId);

    int insert(Interview record);

    int insertSelective(Interview record);

    Interview selectByPrimaryKey(Integer interviewId);

    int updateByPrimaryKeySelective(Interview record);

    int updateByPrimaryKey(Interview record);


//    查询家长访谈列表
    List<Interview> selectParentInterview(@Param(value = "pageStart")Integer pageStart, @Param(value = "pageSize")Integer pageSize);

//    查询家长访谈列表数量
    Integer getParentInterviewCounts();
}