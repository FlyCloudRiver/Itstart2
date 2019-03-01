package com.love.service.impl;

import com.love.mapper.InterviewMapper;
import com.love.pojo.Interview;
import com.love.service.ParentInterviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ParentInterviewService")
public class ParentInterviewServiceImpl implements ParentInterviewService {

    @Autowired
      private InterviewMapper interviewMapper;
    @Override
    public List<Interview> selectParentInterview(Integer pageStart,Integer pageSize) {
        List<Interview> interviews = interviewMapper.selectParentInterview(pageStart,pageSize);
        return interviews;
    }

    @Override
    public Integer getParentInterviewCounts() {
        Integer parentInterviewCounts = interviewMapper.getParentInterviewCounts();

        return parentInterviewCounts;
    }
}
