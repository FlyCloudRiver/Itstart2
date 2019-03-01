<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jiang
  Date: 2019/1/2
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
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
                    <label for="state" class="col-sm-3 control-label">状态</label>
                    <div class="col-md-9">
                        <select class="form-control" id="state">
                            <option value="">请选择...</option>
                            <option value="6">已进班</option>
                            <option value="7">已退学</option>
                            <option value="8">已休学</option>
                            <option value="9">已分配</option>
                        </select>
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
                    <label for="teacher" class="col-sm-3 control-label">班主任</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" id="teacher" placeholder="班主任">
                    </div>
                </div>
            </div>
        </div>

        <%--隔空--%>
        <div class="col-md-12 blank"></div>
        <div class="row">
            <div class="top-operate col-md-3 col-md-offset-8">
                <input type="button" class="btn btn-success" value="查询" id="selectClient" onclick="selectselectExceptionStudent()">
                <input type="reset" class="btn btn-info" value="重置" onclick="resetAll()">
            </div>
        </div>
    </div>

    <%--表格部分--%>
    <div class="bottom">
        <div class="row">
            <div class="col-md-12 bottom-top">
                <h4 class="title"><span>异常学员列表</span></h4>
                <div class="operate-btn">
                    <a class="button button-glow button-rounded button-highlight button-tiny"  >
                        <span class=" glyphicon glyphicon-download-alt" aria-hidden="true"></span>
                        <span class="glyphicon-class">导出</span></a>
                </div>
            </div>

            <div class="col-md-12 blank"></div>
            <div class="col-md-11 bottom-foot" >
                <table class="table table-bordered table-striped content-table">
                    <thead>
                    <tr  role='row'>
                    <th>ID</th>
                    <th>学生姓名</th>
                    <th>班级编号</th>
                    <th>课程名称</th>
                    <th>报课名次</th>
                    <th>讲师</th>
                    <th>班主任</th>
                    <th>目前状态</th>
                    </tr>
                    </thead>
                    <tbody>

                        <%--<c:forEach items="${clientList}" var="exceptionStudents">--%>
                        <%--<tr>--%>
                        <%--<td>${exceptionStudents.clientId}</td>--%>
                        <%--<td>${exceptionStudents.clientName}</td>--%>
                        <%--<td>${exceptionStudents.classes.classesNumber}</td>--%>
                         <%--<td>${exceptionStudents.classes.lesson.lessonName}</td>--%>
                        <%--<td>${exceptionStudents.clientPursure}</td>--%>
                        <%--<td>${exceptionStudents.classes.staffTeacher.staffName}</td>--%>
                        <%--<td>${exceptionStudents.classes.staff.staffName}</td>--%>
                        <%--<td>${exceptionStudents.clientState}</td>--%>
                    <%--</tr>--%>
                        <%--</c:forEach>--%>
                    </tbody>
                </table>

                <ul class="pagination" id="page">

                </ul>
                <p>这是第&nbsp;&nbsp;&nbsp;<span style="color:darkgreen;" id="pageoder">1</span>&nbsp;&nbsp;&nbsp;页  每页 <span id="records">4</span> 条  一共<span id="pageNum"></span>条</p>

            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}statics/js/exceptionStudents.js"></script>
</body>
</html>
