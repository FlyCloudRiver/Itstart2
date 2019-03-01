<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/2 0002
  Time: 9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>今日待回访信息</title>

    <style type="text/css">
        *{
            margin:0px;
            padding: 0px;
        }

        #wy_header{
            margin-top: 50px;
        }
        #wy_title_header,#wy_title_header2{
            margin-top: 50px;
            margin-left: 20px;
            font-size: 30px;
        }
        div.col-md-4{
            text-align: center;
            margin-top: 25px;
        }

        div#wy_header{
            width: 100%;
            height: 48%;
        }

        div#wy_footer{
            border: 1px solid lightskyblue;
            margin-top: 3%;
            width: 100%;
            height: 48%;
        }

        div.col-md-2{
            margin-top: 30px;
        }

    </style>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

    <%--分页样式和插件--%>

    <script src="${pageContext.request.contextPath}/statics/js/jqPaginator.min.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath}/statics/css/myPage.css" rel="stylesheet" type="text/css" />
    <%--分页--%>
    <script src="${pageContext.request.contextPath}/statics/js/myPage.js" type="text/javascript"></script>
    <script type="text/javascript">
        function loadData(num) {
            $("#PageCount").val("89");
        }
    </script>
</head>

<body>
<div id="container-fluid">

    <span id="wy_title_header">综合查询</span>

    <div id="wy_header" class="row">
        <form action="#" method="post">

            <div class="col-md-4">
                <label for="inputSchools" class="col-sm-6 control-label">就读学校</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="schools" id="inputSchools" placeholder="请输入关键字">
                </div>
            </div>

            <div class="col-md-4">
                <label for="inputSchool" class="col-sm-6 control-label">学生姓名</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="schools" id="inputSchool" placeholder="请输入关键字">
                </div>
            </div>

            <div class="col-md-4">
                <label for="inputSchool1" class="col-sm-6 control-label">手机号码</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="schools" id="inputSchool1" placeholder="请输入关键字">
                </div>
            </div>

            <div class="col-md-4">
                <label class="col-sm-6 control-label">信息来源</label>
                <div class="col-sm-6">
                    <select class="form-control">
                        <option>
                            --请选择--
                        </option>
                        <option>
                            校企合作
                        </option>
                        <option>
                            线下招生
                        </option>
                    </select>
                </div>
            </div>


            <div class="col-md-4">
                <label class="col-sm-6 control-label">客户等级</label>
                <div class="col-sm-6">
                    <select class="form-control">
                        <option>
                            --请选择--
                        </option>
                        <option>
                            1
                        </option>
                        <option>
                            2
                        </option>
                    </select>
                </div>
            </div>

            <div class="col-md-4">
                <label class="col-sm-6 control-label">电话状态</label>
                <div class="col-sm-6">
                    <select class="form-control">
                        <option>
                            --请选择--
                        </option>
                        <option>
                            已接通
                        </option>
                        <option>
                            未接通
                        </option>
                    </select>
                </div>
            </div>

            <div class="col-md-4">
                <label class="col-sm-6 control-label">添加时间（起）</label>
                <div class="col-sm-6">
                    <div class="input-group">
                           <span class="input-group-addon">
                              <i class="fa fa-calendar bigger-110"></i>
                          </span>
                        <input class="form-control date-picker" id="id-date-picker-1" type="text" data-date-format="dd-mm-yyyy">
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <label class="col-sm-6 control-label">添加时间（止）</label>
                <div class="col-sm-6">
                    <div class="input-group">
                           <span class="input-group-addon">
                              <i class="fa fa-calendar bigger-110"></i>
                          </span>
                        <input class="form-control date-picker" id="id-date-picker-2" type="text" data-date-format="dd-mm-yyyy">
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <label for="inputSchools3" class="col-sm-6 control-label">市场人员</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="schools" id="inputSchools3" placeholder="请输入关键字">
                </div>
            </div>

            <div class="col-md-4">
                <label for="inputSchools4" class="col-sm-6 control-label">课程顾问</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="schools" id="inputSchools4" placeholder="请输入关键字">
                </div>
            </div>
            <div class="col-md-4">
                <label for="inputSchools3" class="col-sm-6 control-label">状态</label>
                <div class="col-sm-6">
                    <select class="form-control">
                        <option>
                            --请选择--
                        </option>
                        <option>
                            3
                        </option>
                        <option>
                            4
                        </option>
                    </select>
                </div>
            </div>

            <div class="col-md-4">
                <label for="inputSchools3" class="col-sm-6 control-label">跟踪次数</label>
                <div class="col-sm-6">
                    <select class="form-control">
                        <option>
                            --请选择--
                        </option>
                        <option>
                            3
                        </option>
                        <option>
                            4
                        </option>
                    </select>
                </div>
            </div>



            <div class="col-md-9"></div>
            <div class="col-md-2">
                <div class="row">
                    <div class="col-sm-6">
                        <input type="submit" class="btn btn-primary" value="查询">
                    </div>
                    <div class="col-sm-6">
                        <input type="reset" class="btn btn-block" value="重置">
                    </div>
                </div>
            </div>
        </form>

    </div>

    <%--分割查询条件和查询结果--%>
    <div style="height: 20px;width: auto;background-color: RGB(241,241,241);margin-top: 20px"></div>

    <div id="wy_footer" class="row">
        <span id="wy_title_header2">今日待回访信息量</span>

        <div class="box-body">
            <div class="table table-striped">
                <%--<table class="table table-hover" id="head">--%>
                <table class="table table-bordered table-striped content-table">
                    <thead>
                    <tr>
                        <th>编号</th>
                        <th>学生姓名</th>
                        <th>性别</th>
                        <th>分配时间</th>
                        <th>预约上门时间</th>
                        <th>下次回访时间</th>
                        <th>最近操作时间</th>
                        <th>状态</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tr>
                        <th>00001</th>
                        <th>李太白</th>
                        <th>男</th>
                        <th>2018-01-01</th>
                        <th>2018-01-05</th>
                        <th>2018-02-02</th>
                        <th>2018-01-02</th>
                        <th>邀约失败-无人接听</th>
                        <th><a class="button button-glow button-rounded button-caution button-tiny" data-toggle="modal" data-target="#edit">
                            <span>编 辑</span>
                        </a></th>
                    </tr>
                    <tbody>
                    </tbody>
                </table>
            </div>
            <%--<div id="page"></div>--%>
            <%--<div class="btn-group pull-right">--%>
            <%--<button type="button" class="btn btn-default" id="first">首页</button>--%>
            <%--&lt;%&ndash;<input type="text" id="jump" style="width:32.96px;height:33.37px;position: relative;float: left;font-family: inherit;background-color: #f4f4f4;margin-left: -1px;border-radius: 0;color: #444; border-color: #8c8c8c;font-size: 14px;border: 1px solid transparent;display: inline-block;vertical-align: middle;white-space: nowrap;font-weight: 400;text-align: center;line-height: 1.42857143;" value="1">&ndash;%&gt;--%>
            <%--<button type="button" class="btn btn-default" id="last">尾页</button>--%>
            <%--<i style="margin-left:10px;margin-right:20px">每页<span>10</span>条</i>--%>
            <%--</div>--%>
            <div id="mypage">
                <ul class="pagination" id="pagination">
                </ul>
                <input type="hidden" id="PageCount" />
                <input type="hidden" id="PageSize" value="8" />
                <input type="hidden" id="countindex" value="10"/>
                <!--设置最多显示的页码数 可以手动设置 默认为7-->
                <input type="hidden" id="visiblePages" value="8" />
                <span style="margin-left: 100px;margin-bottom:10px">每页${pagesize}条  共${pageCount}条</span>
            </div>
        </div>
    </div>


    <%--编辑模态框--%>
    <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabelx" aria-hidden="true">
        <div class="modal-dialog" style="width:800px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabelx">编 辑</h4>
                </div>
                <div class="modal-body">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="stu-name" class="col-sm-3 control-label">学生姓名</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="stu-name" placeholder="学生姓名">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="stu-gender" class="col-sm-3 control-label">性别</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="stu-gender">
                                            <option>男</option>
                                            <option>女</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="divide-time" class="col-sm-3 control-label">分配时间</label>
                                    <div class="col-sm-8">
                                        <%--<select class="form-control" id="add-class-Curriculum">--%>
                                        <%--<option>1</option>--%>
                                        <%--<option>2</option>--%>
                                        <%--</select>--%>
                                        <input type="text" class="form-control" id="divide-time" aria-describedby="inputGroupSuccess3Status">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="go-home-time" class="col-sm-3 control-label">预约上门时间</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="go-home-time">
                                            <option>1</option>
                                            <option>2</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="next-return-time" class="col-sm-3 control-label">下次回访时间</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="next-return-time" aria-describedby="inputGroupSuccess3Status">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="recently-operate-time" class="col-sm-3 control-label">最近操作时间</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="recently-operate-time" aria-describedby="inputGroupSuccess3Status">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="interview-state" class="col-sm-3 control-label">状态</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="interview-state">
                                            <option>1</option>
                                            <option>2</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary">提交更改</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.3.min.js"></script>

</body>
</html>
