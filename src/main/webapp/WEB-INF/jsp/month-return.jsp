<%--
  Created by IntelliJ IDEA.
  User: jiang
  Date: 2019/1/2
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/buttons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/classRoom-return-common.css">
    <script src="${pageContext.request.contextPath}/assets/js/jquery-2.1.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
</head>
<body>
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
                                <input type="text" class="form-control" id="school-name" placeholder="就读学校">
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
                                <input type="text" class="form-control" id="mobile-phone" placeholder="手机号码">
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
                                    <select class="form-control" id="information-source">
                                        <option>1</option>
                                        <option>2</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 ">
                            <div class="form-group">
                                <label for="class-roomSchool" class="col-sm-3 control-label">所属校区</label>
                                <div class="col-sm-9">
                                    <select class="form-control" id="class-roomSchool">
                                        <option>1</option>
                                        <option>2</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 ">
                            <div class="form-group">
                                <label for="phone-state" class="col-sm-3 control-label">电话状态</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="phone-state" placeholder="电话状态">
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
                                    <input type="text" class="form-control" id="Market-person" placeholder="市场人员">
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
                                <input type="text" class="form-control" id="Course-Consultant" placeholder="课程顾问">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 ">
                        <div class="form-group">
                            <label for="state" class="col-sm-3 control-label">状态</label>
                            <div class="col-md-9">
                                <select class="form-control" id="state">
                                    <option>1</option>
                                    <option>2</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 ">
                        <div class="form-group">
                            <label for="Tracking-times" class="col-sm-3 control-label">跟踪次数</label>
                            <div class="col-md-9">
                                <select class="form-control" id="Tracking-times">
                                    <option>1</option>
                                    <option>2</option>
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

        <%--表格部分--%>
        <div class="bottom">
            <div class="row">
                <div class="col-md-12 bottom-top">
                    <h4 class="title"><span>本月待回访信息</span></h4>
                </div>
                <div class="col-md-12 blank"></div>
                <div class="col-md-11 bottom-foot" >
                    <table class="table table-bordered table-striped content-table">
                        <thead>
                            <th>编号</th>
                            <th>客户姓名</th>
                            <th>性别</th>
                            <th>访谈时间</th>
                            <th>预约上门时间</th>
                            <th>下次回访时间</th>
                            <th>最近操作时间</th>
                            <th>状态</th>
                            <th>操作</th>
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
                                <td class="operate">
                                    <a class="button button-glow button-rounded button-caution button-tiny"
                                       data-toggle="modal" data-target="#edit">
                                        <span>编 辑</span>
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <%--编辑模态框--%>
    <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel2">编辑</h4>
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
</body>
</html>
