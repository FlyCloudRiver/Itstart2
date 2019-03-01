<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/7
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%--  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />--%>
    <meta charset="utf-8" />
    <title>学校管理</title>

   <%-- <meta name="description" content="Static &amp; Dynamic Tables" />--%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

    <!-- page specific plugin styles -->
    <!--表单1-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery-ui.custom.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/chosen.min.css" />
   <%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-datepicker3.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-timepicker.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/daterangepicker.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-datetimepicker.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-colorpicker.min.css" />--%>

    <!-- text fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fonts.googleapis.com.css" />

    <!-- ace styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
    <![endif]-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-skins.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-rtl.min.css" />

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-ie.min.css" />
    <![endif]-->

    <!-- inline styles related to this page -->
    <script src="${pageContext.request.contextPath}/statics/js/campus_manage.js"></script>
</head>

<body class="no-skin">
<%--新增校园--%>
<div class="modal fade" id="addCampus" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="gridSystemModalLabel">新增校区</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="randomNumber">校区编号</label>
                        <input type="text" class="form-control" id="randomNumber" placeholder="编号" disabled>
                    </div>
                    <div class="form-group">
                        <label for="newCampusName">校区名称</label>
                        <input type="text" class="form-control" id="newCampusName" placeholder="校区名称">
                    </div>
                    <div class="form-group">
                        <label for="newCampusStatus">校区状态</label>
                        <select id="newCampusStatus" class="form-control" >
                            <option selected value="0">未开通</option>
                            <option value="1">已开通</option>
                        </select>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="addNewCampus">新增</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<%--编辑校园--%>
<div class="modal fade" id="editCampus" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="gridSystemModalLabel2">编辑校区信息</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="editCampusName">校区名称</label>
                        <input type="text" class="form-control" id="editCampusName" placeholder="校区名称">
                    </div>
                    <div class="form-group">
                        <label for="newHeadermaster">选择校长</label>
                        <select id="newHeadermaster" class="form-control" >

                        </select>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" id="editCampusInfo" class="btn btn-primary">提交</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<%--查看校区员工详情--%>
<div class="modal fade" id="viewStaff" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel3">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="gridSystemModalLabel3"></h4>
            </div>
            <div class="modal-body">
                <table class="table table-hover" id="MyCampusStaffs">
                    <thead>
                        <th>职务</th>
                        <th>编号</th>
                        <th>姓名</th>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<div class="main-container ace-save-state" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.loadState('main-container')
        } catch(e) {}
    </script>

    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">

                <div class="page-header">
                    <h3>
                        学校管理
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            综合查询
                        </small>
                    </h3>
                </div><!-- /.page-header -->
                <div class="row">
                    <div class="col-xs-12">
                        <form class="form-inline col-xs-12 col-sm-12 center" id="sample-form">
                            <div class="form-group">
                                <label for="campusName" class="col-xs-12 col-sm-3 control-label no-padding-right">学校名称</label>
                                <div class="col-xs-12 col-sm-9">
                                    <input type="text" id="campusName" name="campusName" class="input-large" />
                                </div>
                            </div>
                            <br /><br />
                            <div class="form-group">
                                <button class="btn btn-info" id="searchInfo" type="button">查询</button>
                                <button class="btn btn-danger" id="resetInfo" type="button">重置</button>
                            </div>
                        </form>
                    </div>
                </div>

                <!-- /.page-header -->
                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="row">
                            <div class="col-xs-12">

                                <h3 class="header smaller lighter blue">查询结果</h3>
                                <p class="align-right">

                                    <a class="btn btn-info btn-sm" id="newCampus" onclick="toNewCampus();" href="#addCampus" role="button" data-toggle="modal" >
                                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                                        新增学校
                                    </a>
                                    <a class="btn btn-danger btn-sm"  id="branchClose" role="button">
                                        <span class="glyphicon glyphicon-ban-circle" aria-hidden="true"></span>
                                        批量禁用
                                    </a>
                                    <a class="btn btn-success btn-sm" id="branchOpen" role="button"  >
                                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                        批量激活
                                    </a>
                                </p>

                                <table id="simple-table" class="table  table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th class="center">
                                            <label class="pos-rel">
                                                <input type="checkbox" class="ace" />
                                                <span class="lbl"></span>
                                            </label>
                                        </th>
                                        <th class="detail-col">编号</th>
                                        <th>学校名称</th>
                                        <th> <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>添加时间</th>
                                        <th class="hidden-480"> <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>更新时间</th>
                                        <th class="hidden-480">状态</th>
                                        <th class="hidden-480">校长</th>
                                        <th class="hidden-480">校区工作人员(详情)</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="myresult">

                                    </tbody>
                                </table>
                            </div>
                            <!-- /.span -->
                        </div>
                        <!-- /.row -->
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="dataTables_info" id="dynamic-table_info" role="status" aria-live="polite">共<span id="rows"></span>条数据，共<span id="currpage"></span>/<span id="totalpage"></span>页</div>
                            </div>
                            <div class="col-xs-6">
                                <div class="dataTables_paginate paging_simple_numbers" id="dynamic-table_paginate">
                                    <ul class="pagination" id="mynavpage">

                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- PAGE CONTENT ENDS -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.page-content -->
        </div>
    </div>
    <!-- /.main-content -->

</div>
<!-- /.main-container -->

<!-- basic scripts -->


<script type="text/javascript">
    if('ontouchstart' in document.documentElement) document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>

<!-- page specific plugin scripts -->
<!--表格1-->
<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/dataTables.buttons.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/buttons.flash.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/buttons.html5.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/buttons.print.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/buttons.colVis.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/dataTables.select.min.js"></script>
<!--表单1select3插件-->
<script src="${pageContext.request.contextPath}/assets/js/jquery-ui.custom.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/chosen.jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/spinbox.min.js"></script>
<%--<script src="${pageContext.request.contextPath}/assets/js/bootstrap-datepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap-timepicker.min.js"></script>--%>
<script src="${pageContext.request.contextPath}/assets/js/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/daterangepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.knob.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/autosize.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.inputlimiter.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.maskedinput.min.js"></script>
<%--<script src="${pageContext.request.contextPath}/assets/js/bootstrap-tag.min.js"></script>--%>


<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function($) {
        //table checkboxes
        /*表格样式及js*/
        $('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);
        //select/deselect all rows according to table header checkbox
        var active_class = 'active';
        $('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function() {
            var th_checked = this.checked; //checkbox inside "TH" table header

            $(this).closest('table').find('tbody > tr').each(function(i,n) {

                var row = this;
                if(th_checked) {
                    $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
                }
                else {
                    $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
                }
            });
        });

        //select/deselect a row when the checkbox is checked/unchecked
        $('#simple-table').on('click', 'td input[type=checkbox]', function() {
            var $row = $(this).closest('tr');
            if($row.is('.detail-row ')) return;
            if(this.checked) $row.addClass(active_class);
            else $row.removeClass(active_class);
        });


    })
</script>
</body>
</html>
