<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/2 0002
  Time: 9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>预热课管理</title>

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
            margin-top: 3%;
            width: 100%;
            height: 48%;
        }

        div.col-md-2{
            margin-top: 30px;
        }

    </style>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />

    <%--  &lt;%&ndash;分页样式和插件&ndash;%&gt;

      <script src="${pageContext.request.contextPath}/statics/js/jqPaginator.min.js" type="text/javascript"></script>
      <link href="${pageContext.request.contextPath}/statics/css/myPage.css" rel="stylesheet" type="text/css" />
      &lt;%&ndash;分页&ndash;%&gt;
      <script src="${pageContext.request.contextPath}/statics/js/myPage.js" type="text/javascript"></script>
      <script type="text/javascript">
          function loadData(num) {
              $("#PageCount").val("89");
          }
      </script>--%>
</head>

<body>
<div id="container-fluid">

    <span id="wy_title_header">综合查询</span>

    <div id="wy_header" class="row">
        <form action="#" method="post">

            <div class="col-md-4">
                <label class="col-sm-6 control-label">所属中心</label>
                <div class="col-sm-6">
                    <select class="form-control" id="campusName">
                        <%--<option value="">
                            --请选择--
                        </option>
                        <option>
                            北大青鸟
                        </option>
                        <option>
                            武侯区
                        </option>--%>
                    </select>
                </div>
            </div>

            <div class="col-md-4">
                <label for="lessonDtlName" class="col-sm-6 control-label">课程内容</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="lessonDtlName" id="lessonDtlName" placeholder="请输入关键字">
                </div>
            </div>

            <div class="col-md-4">
                <label for="teacherStaffName" class="col-sm-6 control-label">讲师</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="teacherStaffName" id="teacherStaffName" placeholder="请输入关键字">
                </div>
            </div>

            <div class="col-md-9"></div>
            <div class="col-md-2">
                <div class="row">
                    <div class="col-sm-6">
                        <input type="button" class="btn btn-primary" value="查询" id="wyExperience">
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
        <div class="col-sm-10">
            <span id="wy_title_header2" style="font-size: 20px">预热课列表</span>
        </div>
        <div class="col-sm-2">
            <input type="button" class="btn btn-info" data-toggle="modal"  data-target='#addWyModal'  value="新增预热课" onclick="openAddModalExperience()" >
        </div>

        <div class="box-body">
            <div class="table table-striped" style="margin-top: 70px">
                <%--<table class="table table-hover" id="head">--%>
                <table class="table table-bordered table-striped content-table">
                    <thead>
                    <tr>
                        <th>课程ID</th>
                        <th>所属校区</th>
                        <th>授课内容</th>
                        <th>人数</th>
                        <th>讲师</th>
                        <th>上课教室</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody id="wy_experieceshow">
                    <%-- <tr>
                         <td>00001</td>
                         <td>李太白</td>
                         <td>男</td>
                         <td>2018-01-01</td>
                         <td>2018-01-02</td>
                         <td>邀约失败-无人接听</td>
                         <td><a class="button button-glow button-rounded button-caution button-tiny" data-toggle="modal" data-target="#edit">
                             <span>编 辑</span>
                         </a></td>
                     </tr>--%>
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

            <%--  <div id="mypage">
                  <ul class="pagination" id="pagination">
                  </ul>
                  <input type="hidden" id="PageCount" />
                  <input type="hidden" id="PageSize" value="8" />
                  <input type="hidden" id="countindex" value="10"/>
                  <!--设置最多显示的页码数 可以手动设置 默认为7-->
                  <input type="hidden" id="visiblePages" value="8" />
                  <span style="margin-left: 100px;margin-bottom:10px">每页${pagesize}条  共${pageCount}条</span>
              </div>--%>

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
                                    <label class="col-sm-3 control-label">所属校区</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="model_Wy_campusName">

                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="model_wy_lessonDetal" class="col-sm-3 control-label">授课内容</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="model_wy_lessonDetal" aria-describedby="inputGroupSuccess3Status">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="model_wy_classesInclude" class="col-sm-3 control-label">实际人数</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="model_wy_classesInclude" aria-describedby="inputGroupSuccess3Status">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label  class="col-sm-3 control-label">讲师</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="model_wy_teacherName">

                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">上课教室</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="model_wy_classroom_name">

                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="model_wy_classesNumber" class="col-sm-3 control-label">课程ID</label>
                                    <div class="col-sm-8">
                                        <input type="text" readonly="readonly" class="form-control" id="model_wy_classesNumber">
                                    </div>
                                </div>
                            </div>

                        </div>
                        <br>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" id="save_wy_experienceClass">提交更改</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
        </div>
    </div>


    <%--添加模态框--%>
    <div class="modal fade" id="addWyModal" tabindex="-1" role="dialog" aria-labelledby="wymyModalLabelx" aria-hidden="true">
        <div class="modal-dialog" style="width:800px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="wymyModalLabelx">添 加</h4>
                </div>
                <div class="modal-body">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">所属校区</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="add_model_Wy_campusName">

                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="model_wy_lessonDetal" class="col-sm-3 control-label">授课内容</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="add_model_wy_lessonDetal" aria-describedby="inputGroupSuccess3Status">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label for="model_wy_classesInclude" class="col-sm-3 control-label">班级容纳人数</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="add_model_wy_classesInclude" aria-describedby="inputGroupSuccess3Status">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <label  class="col-sm-3 control-label">讲师</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="add_model_wy_teacherName">

                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">上课教室</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="add_model_wy_classroom_name">

                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="model_wy_classesNumber" class="col-sm-3 control-label">课程编号</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="add_model_wy_classesNumber">
                                    </div>
                                </div>
                            </div>

                        </div>
                        <br>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">班主任</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="add_model_wy_headTeacher_name">

                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="model_wy_classesNumber" class="col-sm-3 control-label">开课时间</label>
                                    <div class="col-sm-8">
                                        <input type="date" class="form-control" id="add_model_wy_startTime">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="model_wy_classesNumber" class="col-sm-3 control-label">课时</label>
                                    <div class="col-sm-8">
                                        <input type="text"  class="form-control" id="add_model_wy_classesHour">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="model_wy_classesNumber" class="col-sm-3 control-label">结课时间</label>
                                    <div class="col-sm-8">
                                        <input type="date" class="form-control" id="add_model_wy_endtTime">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="model_wy_classesNumber" class="col-sm-3 control-label">班级名</label>
                                    <div class="col-sm-8">
                                        <input type="text"  class="form-control" id="add_model_wy_classesName">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="model_wy_classesNumber" class="col-sm-3 control-label">课程名</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="add_model_wy_lessonName">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" id="add_wy_experienceClass" ><span>提交添加</span></button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.3.min.js"></script>

    <script src="${pageContext.request.contextPath}/statics/js/preheatClasses.js"/>
</body>
</html>
