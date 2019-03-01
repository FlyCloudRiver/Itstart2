<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/1/2
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的所有信息</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/buttons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/AllInformation.css">
    <script src="${pageContext.request.contextPath}/assets/js/jquery-2.1.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

</head>

<div class="container-fluid">
    <%--综合查询--%>
    <div class="top">
        <%--标题--%>
        <div class="row">
            <div class="col-md-12 top-head">
                <h4 class="title"><span><strong>综合查询</strong></span></h4>
            </div>
        </div>
        <%--隔空--%>
        <div class="col-md-12 blank"></div>
        <div class="row">
            <div class="col-md-3 col-md-offset-1">
                <div class="form-group">
                    <label for="school-name" class="col-sm-3 control-label">就读学校</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" id="school-name" placeholder="请输入关键字">
                    </div>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="student-name" class="col-sm-3 control-label">学生姓名</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" id="student-name" placeholder="学生姓名">
                    </div>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="mobile-phone" class="col-sm-3 control-label">手机号码</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" id="mobile-phone" >
                    </div>
                </div>
            </div>
        </div>
        <%--隔空--%>
        <div class="col-md-12 blank"></div>
        <div class="row">
            <div class="col-md-3 col-md-offset-1">
                <div class="form-group">
                    <label for="information-source" class="col-sm-3 control-label">信息来源</label>
                    <div class="col-sm-9">
                        <select class="form-control" id="information-source"  >
                            <option>请选择</option>
                            <option>微信后台</option>
                            <option>网络投放</option>
                            <option>学习社区</option>
                            <option>搜索SEM</option>
                            <option>搜索SEO</option>
                            <option>网络直访</option>
                            <option>校园活动</option>
                            <option>主动上门</option>
                            <option>其他来源</option>
                            <option>活动推广</option>
                            <option>主动电话</option>
                            <option>搜索引擎</option>
                            <option>口碑介绍</option>
                            <option>陌生电话</option>
                            <option>异业合作</option>
                            <option>地推活动</option>
                            <option>线上投放</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="class-roomSchool" class="col-sm-3 control-label">客户等级</label>
                    <div class="col-sm-9">
                        <select class="form-control" id="class-roomSchool">
                            <option>请选择</option>
                            <option>A</option>
                            <option>B</option>
                            <option>C</option>
                            <option>D</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="phone-state" class="col-sm-3 control-label">电话状态</label>
                    <div class="col-sm-9">
                        <select  class="form-control" id="phone-state" >
                            <option>请选择</option>
                            <option>接通</option>
                            <option>占线</option>
                            <option>无人接听</option>
                            <option>停机</option>
                            <option>号码错误</option>
                            <option>关机</option>
                            <option>挂断</option>
                            <option>待定</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <%--隔空--%>
        <div class="col-md-12 blank"></div>

        <div class="row">
            <div class="col-md-3 col-md-offset-1">
                <div class="form-group has-success has-feedback">
                    <label for="add-time-start" class="col-sm-3 control-label">添加时间(起)</label>
                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                                        </span>
                        <input type="text" class="form-control" id="add-time-start" aria-describedby="inputGroupSuccess3Status">
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group has-success has-feedback">
                    <label for="phone-state" class="col-sm-3 control-label">添加时间(止)</label>
                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                                        </span>
                        <input type="text" class="form-control" id="add-time-end" aria-describedby="inputGroupSuccess3Status">
                    </div>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="Market-person" class="col-sm-3 control-label">市场人员</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" id="Market-person" placeholder="请输入关键字">
                    </div>
                </div>
            </div>
        </div>
        <%--隔空--%>
        <div class="col-md-12 blank"></div>
        <div class="row">
            <div class="col-md-3 col-md-offset-1">
                <div class="form-group">
                    <label for="Course-Consultant" class="col-sm-3 control-label">课程顾问</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" id="Course-Consultant" placeholder="请输入关键字">
                    </div>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="state" class="col-sm-3 control-label">状态</label>
                    <div class="col-md-9">
                        <select class="form-control" id="state" >
                            <option>请选择</option>
                            <option>初始分配</option>
                            <option>邀约成功</option>
                            <option>邀约失败</option>
                            <option>已上门</option>
                            <option>已报名</option>
                            <option>已缴费</option>
                            <option>已进班</option>
                            <option>已退学</option>
                            <option>已退费</option>
                            <option>已休学</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="Tracking-times" class="col-sm-3 control-label">跟踪次数</label>
                    <div class="col-md-9">
                        <select class="form-control" id="Tracking-times" placeholder="请选择">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                            <option>10次以上</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <%--隔空--%>
        <div class="col-md-12 blank"></div>
        <div class="row">
            <div class="top-operate col-md-3 col-md-offset-8">
                <a class="button button-primary button-rounded  button-tiny " href="#">
                    <span>查 询</span></a>
                <a class="button button-border button-rounded button-primary button-tiny" href="#">
                    <span>重 置</span>
                </a>
            </div>
        </div>
    </div>


</div>

<div class="font">
    <div class="col-md-12 bottom-top">
        <h4 class="title"><span><strong>我的所有信息</strong></span></h4>
    </div>
    <table border="1" style="padding: 0px;border-collapse:collapse;background-color: #F6F6F6;" class="title">
        <thead>
        <tr style="height: 45px; text-align: center" >
            <th width="50">编号</th>
            <th >学生姓名</th>
            <th width="40">性别</th>
            <th width="120">分配时间</th>
            <th width="120">预约上门</th>
            <th width="120">下次回访</th>
            <th width="140">最近操作</th>
            <th width="150">状态</th>
            <th width="320">操作</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>110</td>
            <td>张三</td>
            <td>男</td>
            <td>2018年12月25日</td>
            <td>--:--:--</td>
            <td>2019年1月25日</td>
            <td>2019年12月24日</td>
            <td>邀约成功</td>
            <td class="operate" >
                <a class="button  button-rounded  button-tiny" data-toggle="modal" data-target="#edit1" style="background-color: #FFA830;color: white">
                    <span>编 辑</span>
                </a>
                <a class="button  button-rounded  button-tiny" data-toggle="modal2" data-target="#edit2" style="background-color: #0DA294;color: white">
                    <span>优惠申请</span>
                </a>
                <a class="button button-rounded button-tiny" data-toggle="modal2" data-target="#edit3" style="background-color: #0DA294;color: white">
                    <span>报名缴费</span>
                </a>
                <a class="button button-rounded  button-tiny button-border" data-toggle="modal2" data-target="#edit4" style="background-color: #ffffff;color: #0DA294;">
                    <span>转校区</span>
                </a>
            </td>
        </tr>
        </tbody>
    </table>
 </div>
<div class="modal fade" id="edit1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" >

            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-8 col-md-offset-1">
                        <div class="form-group">
                            <label for="edit-class-roomName" class="col-sm-3 control-label">教室名称*</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="edit-class-roomName" placeholder="教室名称">
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-8 col-md-offset-1">
                        <div class="form-group">
                            <label for="edit-class-room-School" class="col-sm-3 control-label">所在校区</label>
                            <div class="col-sm-9">
                                <select class="form-control" id="edit-class-room-School">
                                    <option>1</option>
                                    <option>2</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-8 col-md-offset-1">
                        <div class="form-group">
                            <label for="edit-class-people" class="col-sm-3 control-label">容纳人数</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="edit-class-people" placeholder="容纳人数">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-info">保存</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">放弃</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<div class="modal fade" id="edit2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
</body>
</html>
