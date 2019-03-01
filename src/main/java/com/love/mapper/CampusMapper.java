package com.love.mapper;

import com.love.pojo.Campus;
import com.love.pojo.fqByPageObject.BaseQo;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface CampusMapper {
    int deleteByPrimaryKey(Integer campusId);

    int insert(Campus record);

    int insertSelective(Campus record);

    Campus selectByPrimaryKey(Integer campusId);

    int updateByPrimaryKeySelective(Campus record);

    int updateByPrimaryKey(Campus record);

    /*查找所有校区*/
    List<Campus> selectAll();


    /*校名模糊查询*/
    List<Campus> searchCampusByName(@Param("campusName") String campusName);

    /*分页查询 页数*/
    Integer count(BaseQo<Campus> qo);

    /*查询校区*/
    List<Campus> searchCampus(BaseQo<Campus> qo);

    /*添加校区*/
    int addCampus(Campus campus);
/*fa更新校区*/
    int updateCampus(Map<String, Object> map);
/*fq 开通校区*/
    int openCampus(Map<String, Object> map);
    /*fq 查找校区byId*/
    Campus findCampusById(Map<String, Object> map);
/*fq 删除校区*/
    int deleteCampus(Campus campus);
}