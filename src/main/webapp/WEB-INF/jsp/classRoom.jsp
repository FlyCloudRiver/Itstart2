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
                                <label for="class-roomNum" class="col-sm-3 control-label">教室编号</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="class-roomNum" placeholder="教室编号">
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
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 ">
                            <div class="form-group">
                                <label for="class-roomName" class="col-sm-3 control-label">教室名称</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="class-roomName" placeholder="教室名称">
                                </div>
                            </div>
                        </div>
                    </div>
                <%--隔空--%>
                    <div class="col-md-12 blank"></div>

                    <div class="row">
                        <div class="col-md-3 col-md-offset-1">
                            <div class="form-group">
                                <label for="class-roomState" class="col-sm-3 control-label">教室状态</label>
                                <div class="col-sm-9">
                                    <select class="form-control" id="class-roomState">
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
                    <h4 class="title"><span><strong>教室管理</strong></span></h4>
                    <div class="operate-btn">
                        <a class="button button-glow button-rounded button-highlight button-tiny" data-toggle="modal" data-target="#add-classroom">
                            <span>新增教室</span></a>
                        <a class="button button-glow button-border button-rounded button-primary button-tiny" href="#">
                            <span>批量禁用</span></a>
                        <a class="button button-glow button-border button-rounded button-primary button-tiny" href="#">
                            <span>批量激活</span></a>
                    </div>
                </div>
                <div class="col-md-12 blank"></div>
                <div class="col-md-11 bottom-foot" >
                    <table class="table table-bordered table-striped content-table">
                        <thead>
                            <th><input type="checkbox"></th>
                            <th>编号</th>
                            <th>校区</th>
                            <th>教室名称</th>
                            <th>容纳人数</th>
                            <th>添加时间</th>
                            <th>状态</th>
                            <th>操作</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="checkbox"/></td>
                                <td>110</td>
                                <td>成都新希望校区</td>
                                <td>4号教室</td>
                                <td>20</td>
                                <td>2018年12月25日</td>
                                <td>正常</td>
                                <td class="operate">
                                    <a class="button button-glow button-rounded button-caution button-tiny"
                                       data-toggle="modal" data-target="#edit">
                                        <span>编 辑</span>
                                    </a>
                                    <a class="button button-glow button-primary button-rounded btn-info button-tiny " href="#">
                                        <span>禁 用</span></a>
                                    <a class="button button-glow button-border button-rounded button-primary button-tiny" href="#">
                                        <span>删 除</span>
                                    </a>
                                </td>
                            </tr>

                            <tr>
                                <td><input type="checkbox"/></td>
                                <td>120</td>
                                <td>成都新希望校区</td>
                                <td>4号教室</td>
                                <td>20</td>
                                <td>2018年12月25日</td>
                                <td>正常</td>
                                <td class="operate">
                                    <a class="button button-glow button-rounded button-caution button-tiny" href="#">
                                        <span>编 辑</span>
                                    </a>
                                    <a class="button button-glow button-primary button-rounded btn-info button-tiny " href="#">
                                        <span>禁 用</span></a>
                                    <a class="button button-glow button-border button-rounded button-primary button-tiny" href="#">
                                        <span>删 除</span>
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
<%--添加教室模态框--%>
    <div class="modal fade" id="add-classroom" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">添加教室</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-1">
                            <div class="form-group">
                                <label for="add-class-roomNo" class="col-sm-3 control-label">教室编号</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="add-class-roomNo" placeholder="教室名称">
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-8 col-md-offset-1">
                            <div class="form-group">
                                <label for="add-class-room-School" class="col-sm-3 control-label">所在校区</label>
                                <div class="col-sm-9">
                                    <select class="form-control" id="add-class-room-School">
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
                                <label for="add-class-roomName" class="col-sm-3 control-label">教室名称</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="add-class-roomName" placeholder="教室名称">
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-8 col-md-offset-1">
                            <div class="form-group">
                                <label for="add-class-people" class="col-sm-3 control-label">容纳人数</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="add-class-people" placeholder="教室名称">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary">添加</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
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
                                <label for="add-class-roomNo" class="col-sm-3 control-label">教室名称*</label>
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
                                <label for="add-class-room-School" class="col-sm-3 control-label">所在校区</label>
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
                                <label for="add-class-people" class="col-sm-3 control-label">容纳人数</label>
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
