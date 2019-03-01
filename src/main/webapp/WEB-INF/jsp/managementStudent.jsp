<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/buttons.css">
    <link rel="stylesheet" href="css/classRoom-return-common.css">
    <style type="text/css">
        /*table 内容居中*/
        #biaoge td,th{
            vertical-align: middle;
            text-align: center;
        }
    </style>
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
                <h4 class="title"><span><strong>班级学员管理</strong></span></h4>
            </div>
        </div>
        <%--隔空--%>
        <br>
        <div class="row">
            <div class="col-md-3 col-md-offset-1">
                <div class="form-group">
                    <label for="classNum" class="col-sm-3 control-label">班级编号</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="classNum" placeholder="班级编号" name="classesNumber">
                    </div>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="class-Name" class="col-sm-3 control-label">班级名称</label>
                    <div class="col-sm-9">
                        <select class="form-control" id="class-Name" name="classesName">

                        </select>
                    </div>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="class-course" class="col-sm-3 control-label">课程</label>
                    <div class="col-sm-9">
                        <select class="form-control" id="class-course" name="lesson.lessonId">

                        </select>
                    </div>
                </div>
            </div>
        </div>
        <%--隔空--%>
        <br>

        <div class="row">
            <div class="col-md-3 col-md-offset-1">
                <div class="form-group">
                    <label for="class-Teacher" class="col-sm-3 control-label">讲师</label>
                    <div class="col-sm-9">
                        <select class="form-control" id="class-Teacher"  name="staffTeacher.staffId">

                        </select>
                    </div>
                </div>
            </div>

            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="class-contain" class="col-sm-3 control-label">容纳人数</label>
                    <div class="col-sm-9">
                        <select class="form-control" id="class-contain" name="classesCapacity">

                        </select>
                    </div>
                </div>
            </div>

            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="class-StudentNum" class="col-sm-3 control-label">进班人数</label>
                    <div class="col-sm-9">
                        <select class="form-control" id="class-StudentNum" name="classesInclude">

                        </select>
                    </div>
                </div>
            </div>
        </div>

            <%--隔空--%>
           <br>

            <div class="row">
                <div class="col-md-3 col-md-offset-1">
                    <div class="form-group">
                        <label for="class-State" class="col-sm-3 control-label">状态</label>
                        <div class="col-sm-9">
                            <select class="form-control" id="class-State" name="classesStatus">
                                <option value=''>--请选择--</option>
                                <option value="0">已开班</option>
                                <option value="1">未开班</option>
                                <option value="2">已结班</option>
                            </select>

                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="class-Staff" class="col-sm-3 control-label">班主任</label>
                        <div class="col-sm-9">
                            <select class="form-control" id="class-Staff" name="staff.staffId">

                            </select>
                        </div>
                    </div>
                </div>
            </div>

        <%--隔空--%>
        <div class="col-md-12 blank"></div>
        <div class="row">
            <div class="top-operate col-md-3 col-md-offset-8">
                <input type="button" class="btn btn-success" value="查 询" id="selectClasses" onclick="findStudend()">
                <input type="button" class="btn btn-info" value="重 置" onclick="resetTwo()">
            </div>
        </div>
    </div>

    <%--表格部分--%>
    <div class="bottom">
        <div class="row">
            <div class="col-md-12 bottom-top">
                <h4 class="title"><span><strong>班级学员管理</strong></span></h4>
                <%--<div class="operate-btn">
                    <a class="button button-glow button-rounded button-highlight button-tiny">
                        <span>导出</span></a>
                </div>--%>
            </div>
            <div class="col-md-12 blank"></div>
            <div class="col-md-11 bottom-foot" id="biaoge" >
                <table class="table table-bordered table-striped content-table">
                    <thead>
                    <th>班级编号</th>
                    <th>班级名称</th>
                    <th>课程</th>
                    <th>班主任</th>
                    <th>讲师</th>
                    <th>容纳人数</th>
                    <th>进班人数</th>
                    <th>状态</th>
                    <th>操作</th>
                    <th style="display: none">隐藏</th>
                    </thead>
                    <tbody>
                    <tr>
                        <td>CD01SX1822</td>
                        <td>CD01SX1822</td>
                        <td>小码2.0(S1+S2+S3+S4)</td>
                        <td>陈文君</td>
                        <td>杨光荣</td>
                        <td>10</td>
                        <td>7</td>
                        <td>未开班</td>
                        <td class="operate">
                            <a class="button button-glow button-rounded button-caution button-tiny" data-toggle="modal" data-target="#myModal">
                                <span>开 班</span>
                            </a>


                            <a class="button button-glow button-border button-rounded button-primary button-tiny" href="#">
                                <span>班级相册</span>
                            </a>
                        </td>
                        <td>这是ID</td>
                    </tr>

                    <tr>

                        <td>CD01SX1822</td>
                        <td>CD01SX1822</td>
                        <td>小码2.0(S1+S2+S3+S4)</td>
                        <td>陈文君</td>
                        <td>杨光荣</td>
                        <td>10</td>
                        <td>7</td>
                        <td>未开班</td>
                        <td class="operate">
                            <a class="button button-glow button-rounded button-caution button-tiny" data-toggle="modal" data-target="#myModal">
                                <span>开 班</span>
                            </a>


                            <a class="button button-glow button-border button-rounded button-primary button-tiny" href="#">
                                <span>班级相册</span>
                            </a>
                        </td>
                        <td>这是ID</td>
                    </tr>
                    </tbody>
                </table>
                <%--分页--%>
                <ul class="pagination" id="page">

                </ul>
                <p>这是第&nbsp;&nbsp;&nbsp;<span style="color:darkgreen;" id="pageoder">1</span>&nbsp;&nbsp;&nbsp;页  每页&nbsp;&nbsp;&nbsp;<span id="num">6</span>&nbsp;&nbsp;&nbsp; 条  一共<span id="pageNum"></span>条</p>


            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/statics/js/StudentManage.js"></script>
</body>
</html>

