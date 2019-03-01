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
                <h4 class="title"><span><strong>综合查询</strong></span></h4>
            </div>
        </div>

            <br>

        <div class="row">
            <div class="col-md-3 col-md-offset-1">
                <div class="form-group">
                    <label for="class-Num" class="col-sm-3 control-label">班级编号</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="class-Num" placeholder="班级编号" name="classesNumber">
                    </div>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="class-School" class="col-sm-3 control-label">所属校区</label>
                    <div class="col-sm-9">
                        <select class="form-control" id="class-School" name="campus.campusName">
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="class-Name" class="col-sm-3 control-label">班主任</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="class-Name" placeholder="班主任" name="staff.staffName">
                    </div>
                </div>
            </div>
        </div>
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

            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="class-Style" class="col-sm-3 control-label">课程类型</label>
                    <div class="col-sm-9">
                        <select class="form-control" id="class-Style" name="lesson.lessonName">

                        </select>
                    </div>
                </div>
            </div>

            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="class-ClassStyle" class="col-sm-3 control-label">班级类型</label>
                    <div class="col-sm-9">
                        <select class="form-control" id="class-ClassStyle" name="classesType.classesType">

                        </select>
                    </div>
                </div>
            </div>

        </div>

            <br> <br> <br>
        <div class="row">
            <div class="top-operate col-md-3 col-md-offset-8">
                <input type="button" class="btn btn-success" value="查 询" id="selectClasses" onclick="findBun()">
                <input type="button" class="btn btn-info" value="重 置" onclick="resetInput()">

            </div>
        </div>

    </div>

    <%--表格部分--%>
    <div class="bottom">
        <div class="row">
            <div class="col-md-12 bottom-top">
                <h4 class="title"><span><strong>班级管理</strong></span></h4>
                <div class="operate-btn">
                    <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#add-class">新增班级</button>
                </div>
                <br>
            </div>

            <div class="col-md-12 bottom-foot" id="biaoge">
                <table class="table table-bordered table-striped content-table">
                    <thead>
                    <th>编号</th>
                    <th>班级编号</th>
                    <th>班级名称</th>
                    <th>所属校区</th>
                    <th>课程</th>
                    <th>开课时间</th>
                    <th>结课时间</th>
                    <th>讲师</th>
                    <th>班主任</th>
                    <th>状态</th>
                    <th>操作</th>
                    <th style="display: none">影藏</th>
                    </thead>
                    <tbody>

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

<%--添加班级模态框--%>
<div class="modal fade" id="add-class" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:800px;">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">新增班级</h4>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6 ">
                        <div class="form-group">
                            <label for="add-class-name" class="col-sm-3 control-label">班级名称</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="add-class-name" placeholder="班级名称" name="classesName">
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 ">
                            <div class="form-group">
                                <label for="add-class-Style2" class="col-sm-3 control-label">班级类别</label>
                                <div class="col-sm-8">
                                    <select class="form-control" id="add-class-Style2" name="classesType.classesTypeId">

                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                <br>

                <div class="row">
                    <div class="col-md-6 ">
                        <div class="form-group">
                            <label for="add-class-Curriculum2" class="col-sm-3 control-label">课程</label>
                            <div class="col-sm-8">
                                <select class="form-control" id="add-class-Curriculum2" name="lesson.lessonId">

                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 ">
                        <div class="form-group">
                            <label for="add-class-School2" class="col-sm-3 control-label">所属校区</label>
                            <div class="col-sm-8">
                                <select class="form-control" id="add-class-School2" name="campus.campusId">

                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <br>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="add-time-start2" class="col-sm-3 control-label">开课时间</label>
                            <div class="col-sm-8">
                                <input type="date" class="form-control" id="add-time-start2" aria-describedby="inputGroupSuccess3Status" name="classesStarttime">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="add-time-end2" class="col-sm-3 control-label">结课时间</label>
                            <div class="col-sm-8">
                                <input type="date" class="form-control" id="add-time-end2" aria-describedby="inputGroupSuccess3Status" name="classesEndtime">
                            </div>
                        </div>
                    </div>
                </div>
                <br>

                    <div class="row">
                        <div class="col-md-6 ">
                            <div class="form-group">
                                <label for="add-class-Number2" class="col-sm-3 control-label">最大人数</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="add-class-Number2" placeholder="最大人数" name="classesCapacity">
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 ">
                            <div class="form-group">
                                <label for="add-class-Teacher2" class="col-sm-3 control-label">班主任</label>
                                <div class="col-sm-8">
                                    <select class="form-control" id="add-class-Teacher2" name="staff.staffId">

                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                <br>
                    <div class="row">
                        <div class="col-md-6 ">
                            <div class="form-group">
                                <label for="add-class-Lector2" class="col-sm-3 control-label">讲师</label>
                                <div class="col-sm-8">
                                    <select class="form-control" id="add-class-Lector2" name="staffTeacher.staffId">

                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 ">
                            <div class="form-group">
                                <label for="add-class-State" class="col-sm-3 control-label">状态</label>
                                <div class="col-sm-8">
                                    <select class="form-control" id="add-class-State" name="classesStatus">
                                        <option value=''>--请选择--</option>
                                        <option value="0">已开班</option>
                                        <option value="1">未开班</option>
                                        <option value="2">已结班</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                <br>
                <div class="row">
                    <div class="col-md-6 ">
                        <div class="form-group">
                            <label for="add-ClassesNumber" class="col-sm-3 control-label">班级编号</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="add-ClassesNumber" placeholder="班级编号" name="classesNumber">
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 ">
                        <div class="form-group">
                            <label for="add-class-Includ" class="col-sm-3 control-label">实际人数</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="add-class-Includ" placeholder="班级编号" name="classesInclude">
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6 ">
                        <div class="form-group">
                            <label for="add-ClassesRoom" class="col-sm-3 control-label">教室</label>
                            <div class="col-sm-8">
                                <select class="form-control" id="add-ClassesRoom" name="classroom.classroomId">

                                </select>
                            </div>
                        </div>
                    </div>
                </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="insertClass($(this))">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</div>
<%--编辑模态框--%>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabelx" aria-hidden="true">
        <div class="modal-dialog" style="width:800px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabelx">编 辑(只需修改需要修改的选项)</h4>
                </div>
                <div class="modal-body">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="eidit-class-name" class="col-sm-3 control-label">班级名称</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="eidit-class-name" name="classesName">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="eidit-class-Style" class="col-sm-3 control-label">班级类别</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="eidit-class-Style" name="classesType.classesType">

                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="eidit-class-Curriculum" class="col-sm-3 control-label">课程</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="eidit-class-Curriculum" name="lesson.lessonName">

                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="eidit-class-School" class="col-sm-3 control-label">所属校区</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="eidit-class-School" name="campus.campusName">

                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="eidit-time-start" class="col-sm-3 control-label">开课时间</label>
                                    <div class="col-sm-8">
                                        <input type="date" class="form-control" id="eidit-time-start" aria-describedby="inputGroupSuccess3Status" name="classesStarttime">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="eidit-time-end" class="col-sm-3 control-label">结课时间</label>
                                    <div class="col-sm-8">
                                        <%--type="datetime-local" step="01"--%>
                                        <input type="date" class="form-control" id="eidit-time-end" aria-describedby="inputGroupSuccess3Status" name="classesEndtime">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="eidit-class-Number" class="col-sm-3 control-label">最大人数</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="eidit-class-Number" aria-describedby="inputGroupSuccess3Status" name="classesCapacity">
                                    </div>

                                </div>
                            </div>

                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="eidit-class-Staff" class="col-sm-3 control-label">班主任</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="eidit-class-Staff" name="staff.staffName">

                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="eidit-class-Lector" class="col-sm-3 control-label">讲师</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="eidit-class-Lector" name="staffTeacher.staffName">

                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <input type="text" class="form-control" id="eidit-class-id" name="classesId" style="display: none">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" onclick="updateClass($(this))">提交更改</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>

    </div>

<script src="${pageContext.request.contextPath}/statics/js/ClassManage.js"></script>
</body>
</html>

