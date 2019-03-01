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
    <title>进班管理</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/buttons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/classRoom-return-common.css">

    <script src="${pageContext.request.contextPath}/assets/js/jquery-2.1.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>


    <style type="text/css">
        #biaoge td{
            vertical-align: middle;
            text-align: center;
        }
    </style>
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
            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="state" class="col-sm-3 control-label">状态</label>
                    <div class="col-md-9">
                        <select class="form-control" id="state">
                            <option value="">请选择...</option>
                            <option value="0">待缴费</option>
                            <option value="1">已缴全</option>
                            <option value="2">欠费</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>

        <%--隔空--%>
        <div class="col-md-12 blank"></div>
        <div class="row">
            <div class="top-operate col-md-3 col-md-offset-8">
                <input type="button" class="btn btn-success" value="查询" id="selectClient" onclick="selectInClassStudentsList()">
                <input type="reset" class="btn btn-info" value="重置" onclick="resetAll()">
            </div>
        </div>
    </div>

    <%--表格部分--%>
    <div class="bottom">
        <div class="row">
            <div class="col-md-12 bottom-top">
                <h4 class="title"><span>进班列表</span></h4>
            </div>
            <div class="col-md-12 blank"></div>
            <div class="col-md-11 bottom-foot " id="biaoge" >
                <table class="table table-bordered table-striped content-table" >
                    <thead>
                    <tr role='row'>
                    <th>编号</th>
                    <th>姓名</th>
                    <th>课程分类</th>
                    <th>课程名称</th>
                    <th>课时</th>
                    <th>课程费用</th>
                    <th>状态</th>
                    <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%--<tr>--%>
                        <%--<td>10757</td>--%>
                        <%--<td>杨佳瑞</td>--%>
                        <%--<td>Scratch飞码2.0</td>--%>
                        <%--<td>飞码2.0<br>--%>
                            <%--（S1+S2+S3+S4）--%>
                        <%--</td>--%>
                        <%--<td>140</td>--%>
                        <%--<td>29800.00</td>--%>
                        <%--<td>待缴费</td>--%>


                    <%--</tr>--%>
                    </tbody>
                </table>
                <%--添加班级模态框--%>
                <div class="modal fade" id="add-student" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog" style="width:800px;">
                        <div class="modal-content">

                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">新增学员</h4>
                            </div>

                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-md-6 ">
                                        <div class="form-group">
                                            <label for="add-student-name" class="col-sm-3 control-label">学员姓名</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" id="add-student-name" placeholder="学员姓名" name="classesName">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6 ">
                                        <div class="form-group">
                                            <label for="lesson_level_school" class="col-sm-3 control-label">课程部门</label>
                                            <div class="col-sm-8">
                                                <select class="form-control" id="lesson_level_school" onclick="lesson_level_grade()">
                                                    <option value="">--请选择--</option>
                                                    <option  value="0">小学</option>
                                                    <option value="1">初中</option>
                                                    <option  value="2">高中</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br>

                                <div class="row">
                                <div class="col-md-6 ">
                                    <div class="form-group">
                                        <label for="lesson_level_grade" class="col-sm-3 control-label">课程年级</label>
                                        <div class="col-sm-8">
                                            <select class="form-control" id="lesson_level_grade"  onclick="getLevelType()">

                                            </select>
                                        </div>
                                    </div>
                                </div>

                                    <div class="col-md-6 ">
                                        <div class="form-group">
                                            <label for="lesson_level_type" class="col-sm-3 control-label">课程分类</label>
                                            <div class="col-sm-8">
                                                <select class="form-control" id="lesson_level_type" name="classesType.classesTypeId">

                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>

                                <div class="row">
                                    <div class="col-md-6 ">
                                        <div class="form-group">
                                            <label for="add-lesson" class="col-sm-3 control-label">课程选择</label>
                                            <div class="col-sm-8">
                                                <select class="form-control" id="add-lesson" name="lesson.lessonId">

                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br>

                                <div class="row">
                                    <div class="col-md-6 ">
                                        <div class="form-group">
                                            <label for="lesson-dtl-hour" class="col-sm-3 control-label">课时</label>
                                            <div class="col-sm-8">
                                                <span id="lesson-dtl-hour"></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6 ">
                                        <div class="form-group">
                                            <label for="lesson-price" class="col-sm-3 control-label">课程费用</label>
                                            <div class="col-sm-8">
                                               <span id="lesson-price"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br>


                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success" onclick="insertStudent($(this))">报名确认</button>
                                </div>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal -->
                    </div>
                </div>





            <%--修改学员模态框--%>
            <div class="modal fade" id="update-student" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog" style="width:800px;">
                    <div class="modal-content">

                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel2">修改报名信息</h4>
                        </div>

                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-6 ">
                                    <div class="form-group">
                                        <label for="update-student-name" class="col-sm-3 control-label">学员姓名</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" id="update-student-name" placeholder="学员姓名" name="classesName">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 ">
                                    <div class="form-group">
                                        <label for="update-lesson_level_school" class="col-sm-3 control-label">课程部门</label>
                                        <div class="col-sm-8">
                                            <select class="form-control" id="update-lesson_level_school" >
                                                <option value="">--请选择--</option>
                                                <option  value="0">小学</option>
                                                <option value="1">初中</option>
                                                <option  value="2">高中</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>

                            <div class="row">
                                <div class="col-md-6 ">
                                    <div class="form-group">
                                        <label for="update-lesson_level_grade" class="col-sm-3 control-label">课程年级</label>
                                        <div class="col-sm-8">
                                            <select class="form-control" id="update-lesson_level_grade" name="classesType.classesTypeId">
                                                    <option value=""--请选择--></option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 ">
                                    <div class="form-group">
                                        <label for="update-lesson_level_type" class="col-sm-3 control-label">课程分类</label>
                                        <div class="col-sm-8">
                                            <select class="form-control" id="update-lesson_level_type" name="classesType.classesTypeId">
                                                <option value=""--请选择--></option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="update-lesson" class="col-sm-3 control-label">课程选择</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="update-lesson" name="lesson.lessonId">
                                            <option value=""--请选择--></option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="update-lesson-dtl-hour" class="col-sm-3 control-label">课时</label>
                                    <div class="col-sm-8">
                                        <span id="update-lesson-dtl-hour"></span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="update-lesson-price" class="col-sm-3 control-label">课程费用</label>
                                    <div class="col-sm-8">
                                        <span id="update-lesson-price"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>


                        <div class="modal-footer">
                            <button type="button" class="btn btn-success" onclick="insertStudent($(this))">确认修改</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal -->
            </div>
        </div>




        <ul class="pagination" id="page">

        </ul>
        <p>这是第&nbsp;&nbsp;&nbsp;<span style="color:darkgreen;" id="pageoder">1</span>&nbsp;&nbsp;&nbsp;页  每页 <span id="records">4</span> 条  一共<span id="pageNum"></span>条</p>

    </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/statics/js/InClassStudents.js" type="text/javascript"></script>
</body>
</html>
