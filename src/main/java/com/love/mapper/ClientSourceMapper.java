package com.love.mapper;

import com.love.pojo.ClientSource;

import java.util.List;

public interface ClientSourceMapper {
    int deleteByPrimaryKey(Integer clientSourceId);

    int insert(ClientSource record);

    int insertSelective(ClientSource record);

    ClientSource selectByPrimaryKey(Integer clientSourceId);

    int updateByPrimaryKeySelective(ClientSource record);

    int updateByPrimaryKey(ClientSource record);

    List<ClientSource> selectAll();
    //liulei
    List<ClientSource> selectAllClientSource();
}