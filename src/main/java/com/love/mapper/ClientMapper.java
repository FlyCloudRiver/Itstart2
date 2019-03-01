package com.love.mapper;

import com.love.pojo.Client;
import com.love.pojo.fqByPageObject.BaseVo;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface ClientMapper {
    int deleteByPrimaryKey(Integer clientId);

    int insert(Client record);

    int insertSelective(Client record);

    Client selectByPrimaryKey(Integer clientId);

    int updateByPrimaryKeySelective(Client record);

    int updateByPrimaryKey(Client record);

    /*fq信息分配 获取客户*/
    List<Client> getClientByEmaple(Map<String, Object> map);
    /*fq 分配学生*/
    int updateClient(@Param("distributeTime") Date distributeTime, @Param("staffId") Integer staffId, @Param("ids") int[] ids);
    /*fq信息分配 获取客户 分页 查询客户总记录数*/
    Integer count(Map<String, Object> map);



    /**
     * 根据查询条件获取该校区所有异常学生列表
     */
    List<Client> selectExceptionStudents(@Param(value = "client")Client client,@Param(value ="pageStart")Integer pageStart,@Param(value = "pageSize")Integer pageSize);

//   获取异常学生列表总数
    Integer getExceptionStudentsCounts(Client client);
    /**
     * liulei
     */
    //获取所有等级
    List<Client> selectAllGrade();
    //获取所有用户电话状态
    List<Client> selectAllClientStatus();
    //获取所有用户状态
    List<Client> selectAllClientState();
    //获取所有跟踪次数
    List<Client> selectAllClientTrack();
    //根据组合条件查询
    List<Client> selectByCondition(Client client);
    //修改数据
    int updateClientData(Client client);
    /*查询所有数据*/
    List<Client> selectAll(@Param(value="start")Integer start,@Param(value="end")Integer end);
    /*获取总的数据条数*/
    Integer selectCount();


}