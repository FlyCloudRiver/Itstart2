<%--
  Created by IntelliJ IDEA.
  User: liulei
  Date: 2019/1/5
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>本月新增访信息</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <script src="${pageContext.request.contextPath}/assets/js/jquery-2.1.4.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/buttons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}statics/css/classRoom-return-common.css">

    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

    <%--分页样式和插件--%>

    <%--<script src="${pageContext.request.contextPath}/statics/js/jqPaginator.min.js" type="text/javascript"></script>--%>
    <%--<link href="${pageContext.request.contextPath}/statics/css/myPage.css" rel="stylesheet" type="text/css" />--%>
    <%--&lt;%&ndash;分页&ndash;%&gt;--%>
    <%--<script src="${pageContext.request.contextPath}/statics/js/myPage.js" type="text/javascript"></script>--%>
    <%--<script type="text/javascript">--%>
    <%--function loadData(num) {--%>
    <%--$("#PageCount").val("89");--%>
    <%--}--%>
    <%--</script>--%>

<body style="background-color: white">
<div class="box box-primary">
    <div class="top">

        <div class="row">
            <div class="col-md-12 top-head">
                <h4 class="title"><span><strong>综合查询</strong></span></h4>
            </div>
        </div>

        <div class="col-md-12 blank"></div>

        <div class="col-md-12 blank">-1和-请选择-表示没有查询条件</div>
        <div class="row">
            <div class="col-md-3 col-md-offset-1">
                <div class="form-group">
                    <label for="information-source" class="col-sm-3 control-label" name="infoSource">信息来源</label>
                    <div class="col-sm-9">
                        <select class="form-control" id="information-source">
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="cus_grade" class="col-sm-3 control-label">客户等级</label>
                    <div class="col-sm-9">
                        <select class="form-control" id="cus_grade" name="clientGrade">
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="phone-state" class="col-sm-3 control-label">电话状态</label>
                    <div class="col-sm-9">
                        <select id="phone-state"  class="form-control" name="telStatus">
                        </select>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-12 blank"></div>

        <div class="row">
            <div class="col-md-3 col-md-offset-1">
                <div class="form-group has-success has-feedback">
                    <label for="Market-person" class="col-sm-3 control-label">学生姓名</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" id="Market-person" placeholder="请输入关键字" name="marketing">
                    </div>
                    <%--<label for="add-time-start" class="col-sm-3 control-label">添加时间(起)</label>--%>
                    <%--<div class="input-group">--%>
                    <%--<span class="input-group-addon">--%>
                    <%--<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>--%>
                    <%--</span>--%>
                    <%--<input type="text" class="form-control" id="add-time-start" aria-describedby="inputGroupSuccess3Status">--%>
                    <%--</div>--%>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group has-success has-feedback">
                    <%--<label for="phone-state" class="col-sm-3 control-label">添加时间(止)</label>--%>
                    <%--<div class="input-group">--%>
                    <%--<span class="input-group-addon">--%>
                    <%--<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>--%>
                    <%--</span>--%>
                    <%--<input type="text" class="form-control" id="add-time-end" aria-describedby="inputGroupSuccess3Status">--%>
                    <%--</div>--%>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="form-group">
                    <%--<label for="Market-person" class="col-sm-3 control-label">学生姓名</label>--%>
                    <%--<div class="col-md-9">--%>
                    <%--<input type="text" class="form-control" id="Market-person" placeholder="请输入关键字" name="marketing">--%>
                    <%--</div>--%>
                </div>
            </div>
        </div>

        <div class="col-md-12 blank"></div>
        <div class="row">
            <div class="col-md-3 col-md-offset-1">
                <div class="form-group">
                    <label for="Course-Consultant" class="col-sm-3 control-label">咨询师</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" id="Course-Consultant" placeholder="咨询师-必填" name=" Consultant">
                    </div>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="state" class="col-sm-3 control-label">状态</label>
                    <div class="col-md-9">
                        <select class="form-control" id="state" name="clientstate">
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="form-group">
                    <label for="Tracking-times" class="col-sm-3 control-label">跟踪次数</label>
                    <div class="col-md-9">
                        <select class="form-control" id="Tracking-times" name="trackingtimes">
                        </select>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-12 blank"></div>
        <div class="row">
            <div class="top-operate col-md-3 col-md-offset-8">
                <a class="button button-primary button-rounded  button-tiny " href="#" id="query">
                    <span>查 询</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a class="button button-border button-rounded button-primary button-tiny" href="#">
                    <span>重 置</span>
                </a>
            </div>
        </div>
    </div>
    <%--分割查询条件和查询结果--%>
    <div style="height: 20px;width: auto;background-color: RGB(241,241,241);margin-top: 20px"></div>

    <div class="box box-info">
        <div class="col-md-12 bottom-top">
            <h4 class="title"><span>本周待回访信息</span></h4>
        </div>
    </div>
    <div class="col-md-12 blank"></div>
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
                <tbody id="tbody">
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
        <%--<div id="mypage">--%>
        <%--<ul class="pagination" id="pagination">--%>
        <%--</ul>--%>
        <%--<input type="hidden" id="PageCount" />--%>
        <%--<input type="hidden" id="PageSize" value="8" />--%>
        <%--<input type="hidden" id="countindex" value="10"/>--%>
        <%--<!--设置最多显示的页码数 可以手动设置 默认为7-->--%>
        <%--<input type="hidden" id="visiblePages" value="8" />--%>
        <%--<span style="margin-left: 100px;margin-bottom:10px">每页${pagesize}条  共${pageCount}条</span>--%>
        <%--</div>--%>

        <%--分页--%>
        <div class="btn-group pull-right">
            <button type="button" class="btn btn-default" id="last">&laquo;</button>
            <input type="text" id="jump" style="width:32.96px;height:33.37px;position: relative;float: left;font-family: inherit;background-color: #f4f4f4;margin-left: -1px;border-radius: 0;color: #444; border-color: #8c8c8c;font-size: 14px;border: 1px solid transparent;display: inline-block;vertical-align: middle;white-space: nowrap;font-weight: 400;text-align: center;line-height: 1.42857143;" value="1">
            <button type="button" class="btn btn-default" id="next">&raquo;</button>
        </div>
    </div>
</div>

<%--编辑模态框--%>
<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabelx" aria-hidden="true">
    <div class="modal-dialog" style="width:800px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="close" onclick="closeMo()">&times;</button>
                <h4 class="modal-title" id="myModalLabelx">编 辑</h4>
            </div>
            <div class="modal-body">
                <i style="color: red">正确的时间格式：如2018-09-27 16:47:32</i>
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
                                    <input type="text" class="form-control" id="go-home-time" aria-describedby="inputGroupSuccess3Status">
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
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="col-sm-8">
                                <input type="text" style="display: none;" class="form-control" id="client-number" aria-describedby="inputGroupSuccess3Status">
                            </div>
                        </div>
                    </div>

                    <br>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" id="commiteUpdate">提交更改</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
</div>
<script>
    // function createOption(data,par,par2){
    //     var opar=par;
    //     $.each(data,function(index,value){
    //         var option=$("<option/>");
    //         console.log(opar);
    //         option.html(value.opar);
    //         option.val(value.clientSourceId);
    //         $("#"+par2+"").append(option);
    //     })
    // }

    // function clientstat(){
    //     $.ajax({
    //         url: "../showCState",
    //         dataType: "json",
    //         type: "post",
    //         success: function (clients) {
    //             console.log(clients);
    //             $.each(clients,function(index,value){
    //                 var option=$("<option/>");
    //                 option.html(value.clientState);
    //                 option.val(value.clientId);
    //                 $("#state").append(option);
    //             })
    //         }
    //     })
    // }

    function clientstat(par) {
        $.ajax({
            url: "../showCState",
            dataType: "json",
            type: "post",
            success: function (clients) {
                console.log(clients);
                var option1="<option value=-1>-1</option>";
                par.append(option1);
                $.each(clients, function (index, value) {
                    var option = $("<option/>");
                    if(value.clientState==0)
                    {
                        option.html("初始分配")
                    }
                    if(value.clientState==1)
                    {
                        option.html("邀约失败")
                    }
                    if(value.clientState==2)
                    {
                        option.html("邀约成功")
                    }
                    if(value.clientState==3)
                    {
                        option.html("已上门")
                    }
                    if(value.clientState==4)
                    {
                        option.html("已报名")
                    }
                    if(value.clientState==5)
                    {
                        option.html("已缴费")
                    }
                    if(value.clientState==6)
                    {
                        option.html("已进班")
                    }
                    if(value.clientState==7)
                    {
                        option.html("已退学")
                    }
                    if(value.clientState==8)
                    {
                        option.html("已休学")
                    }
                    // option.html(value.clientState);
                    option.val(value.clientState);
                    par.append(option);
                })
            }
        })
    }


    // 分页查询
    var countPage=0;
    var pagenum=0;
    function getAllData(){
        $.ajax({
            url: "../selectAllData",
            data:{"pagenum":pagenum,
                "pagesize":8},
            dataType: "json",
            type: "post",
            success: function (clients) {
                console.log(clients);
                createTable(clients);
            }
        })
    }
    // 访问后台的ajax
    function aju() {
        console.log("点击成功=====");
        console.log($("#information-source option:selected").val())
        $.ajax({
            url:"../selectAllData",
            type:"post",
            data:{"pagenum":pagenum,"pagesize":8,
                "infosource":$("#information-source option:selected").val(),"clientGrade":$("#cus_grade option:selected").val(),
                "clientStatus":$("#phone-state option:selected").val(),
                "marketing":$("#Market-person").val(),"courseAnswer":$("#Course-Consultant").val(),
                "clientstate":$("#state option:selected").val(),"tracktimes":$("#Tracking-times option:selected").text()},
            dataType:"json",
            success:function (data) {
                createTable(data)
            }
        });
    }
    //下一页
    $("#next").click(function () {
        pagenum +=1;
        if(pagenum > countPage-1){
            pagenum = countPage-1;
            alert("已经是最后一页");
            aju();
        }else{
            aju();
        }
        $("#jump").val(pagenum+1);
    })
    //上一页
    $("#last").click(function () {
        pagenum -= 1;
        if(pagenum < 0){
            alert("已经是第一页了");
            pagenum = 0;
            aju();
        }else{
            aju();
        }
        $("#jump").val(pagenum+1);
    })
    $(function () {

        $.ajax({
            url:"../selectDataCount",
            type:"post",
            dataType:"json",
            success:function (data) {
                countPage=data+1;
            }
        });
        // 所有的用户来源
        $.ajax({
            url: "../showCSou",
            dataType: "json",
            type: "post",
            success: function (clientSources) {
                // console.log(clientSources);
                // var clientSource2="clientSource";
                // createOption(clientSources,clientSource2,informationsource)
                var option1="<option value=0>-请选择-</option>";
                $("#information-source").append(option1);
                $.each(clientSources,function(index,value){
                    var option=$("<option/>");
                    option.html(value.clientSource);
                    option.val(value.clientSourceId);
                    $("#information-source").append(option);
                })
            }
        })
        //所有的用户等级
        $.ajax({
            url: "../showCGra",
            dataType: "json",
            type: "post",
            success: function (clients) {
                console.log(clients);
                var option1="<option value='0'>-请选择-</option>";
                $("#cus_grade").append(option1);
                $.each(clients,function(index,value){
                    console.log(value.clientGrade);
                    if(value.clientGrade!=null){
                        var option=$("<option/>");
                        if(value.clientGrade=='A')
                        {
                            option.html("尊享优质客户");
                        }
                        if(value.clientGrade=='B')
                        {
                            option.html("优质客户");
                        }
                        if(value.clientGrade=='C')
                        {
                            option.html("vip客户");
                        }
                        if(value.clientGrade=='D')
                        {
                            option.html("普通用户");
                        }
                        option.val(value.clientGrade);
                        $("#cus_grade").append(option);
                    }
                })
            }
        })
        //所有的用户电话状态
        $.ajax({
            url: "../showCSta",
            dataType: "json",
            type: "post",
            success: function (clients) {
                var option1="<option value=-1>-1</option>";
                $("#phone-state").append(option1);
                $.each(clients,function(index,value){
                    var option=$("<option/>");
                    if(value.clientStatus==0){
                        option.html("接通");
                    }
                    if(value.clientStatus==1){
                        option.html("占线");
                    }
                    if(value.clientStatus==2){
                        option.html("无人接听");
                    }
                    if(value.clientStatus==3){
                        option.html("停机");
                    }
                    if(value.clientStatus==4){
                        option.html("号码错误");
                    }
                    if(value.clientStatus==5){
                        option.html("关机");
                    }
                    if(value.clientStatus==6){
                        option.html("挂断");
                    }
                    if(value.clientStatus==7){
                        option.html("待定");
                    }
                    // option.html(value.clientStatus);
                    option.val(value.clientStatus);
                    $("#phone-state").append(option);
                })
            }
        })

        //所有的用户状态
        // $.ajax({
        //     url: "../showCState",
        //     dataType: "json",
        //     type: "post",
        //     success: function (clients) {
        //         console.log(clients);
        //         $.each(clients,function(index,value){
        //             var option=$("<option/>");
        //             option.html(value.clientState);
        //             option.val(value.clientId);
        //             $("#state").append(option);
        //         })
        //     }
        // })
        clientstat($("#state"));
        //所有的跟踪次数
        $.ajax({
            url: "../showCTrack",
            dataType: "json",
            type: "post",
            success: function (clients) {
                console.log(clients);
                var option1="<option value=-1>-1</option>";
                $("#Tracking-times").append(option1);
                $.each(clients,function(index,value){
                    if(value.clientTrack!=null){
                        var option=$("<option/>");
                        option.html(value.clientTrack);
                        option.val(value.clientId);
                        $("#Tracking-times").append(option);
                    }
                })
            }
        })
    })
    // 获取所有数据
    // $.ajax({
    //     url: "../selectAllData",
    //     dataType: "json",
    //     type: "post",
    //     success: function (clients) {
    //         console.log(clients);
    //        createTable(clients);
    //     }
    // })
    getAllData();
    // 点击查询时，传递参数给后台
    $("#query").on("click",function () {
        console.log("点击成功");
        console.log($("#Course-Consultant").val())
        if($("#Course-Consultant").val()!=''){
            $.ajax({
                url: "../selectData",
                dataType: "json",
                data:{"infosource":$("#information-source option:selected").val(),"clientGrade":$("#cus_grade option:selected").val(),
                    "clientStatus":$("#phone-state option:selected").val(),"marketing":$("#Market-person").val(),"courseAnswer":$("#Course-Consultant").val(),
                    "clientstate":$("#state option:selected").val(),"tracktimes":$("#Tracking-times option:selected").text()
                },
                type: "post",
                success:function (data) {
                    console.log("获取到数据")
                    console.log(data);
                    createTable(data)
                    // createTable(data)
                    console.log(111)
                }
            })
        }else{
            alert("请输入咨询师名称")
        }

    })


    function createTable(data) {
        $("#tbody").empty();
        $.each(data,function (index,value) {
            var tr = $("<tr/>")
            tr.attr("name",value.clientId);
            var td1 = $("<td/>");
            td1.html(value.clientNumber);
            tr.append(td1);
            var par=value.clientId;
            var td2 = $("<td/>");
            td2.html(value.clientName);
            tr.append(td2);

            var td3 = $("<td/>");
            td3.html(value.clientGender);
            tr.append(td3);

            var td4 = $("<td/>")
            td4.html(value.clientDistributeTime);
            tr.append(td4);
            var td5 = $("<td/>");
            td5.html(value.clientVisitedTime);
            tr.append(td5);
            var td6 = $("<td/>");
            td6.html(value.clientInterviewTime);
            tr.append(td6);
            var td7 = $("<td/>")
            td7.html(value.clientAddtime);
            tr.append(td7);
            var td8 = $("<td/>")
            if(value.clientState==0)
            {
                td8.html("初始分配")
            }
            if(value.clientState==1)
            {
                td8.html("邀约失败")
            }
            if(value.clientState==2)
            {
                td8.html("邀约成功")
            }
            if(value.clientState==3)
            {
                td8.html("已上门")
            }
            if(value.clientState==4)
            {
                td8.html("已报名")
            }
            if(value.clientState==5)
            {
                td8.html("已缴费")
            }
            if(value.clientState==6)
            {
                td8.html("已进班")
            }
            if(value.clientState==7)
            {
                td8.html("已退学")
            }
            if(value.clientState==8)
            {
                td8.html("已休学")
            }
            // td8.html(value.clientState);
            tr.append(td8);
            var td9=$("<td/>");
            td9.html('<a class="button button-glow button-rounded button-caution button-tiny" data-toggle="modal" data-target="#edit" onclick="update($(this))">编 辑</a>')
            tr.append(td9)
            $("tbody").append(tr);
        })
    }

    function update(obj){
        var all=obj.parents("tr");
        console.log(all.children().eq(0).text())
        console.log($("#stu-name").text(all.children().eq(1).text()))
        $("#stu-name").val(all.children().eq(1).text());

        // $("#stu-gender").html(all.children().eq(2).text());
        if(all.children().eq(2).text()!=null){
            var gender;
            if(all.children().eq(2).text()=="女")
            {
                $("#stu-gender").append('<option selected>女</option>');
                gender="<option>男</option>";
            }
            else{
                $("#stu-gender").append('<option selected>男</option>');
                gender="<option>女</option>";
            }
            // $("#stu-gender").append('<option selected>'+all.children().eq(2).text()+'<option/>');
            // $("#stu-gender").append('<option>男<option/><option>女<option/>')
            $("#stu-gender").append(gender);
        }

        $("#divide-time").val(all.children().eq(3).text());
        $("#go-home-time").val(all.children().eq(4).text());
        $("#next-return-time").val(all.children().eq(5).text());
        $("#recently-operate-time").val(all.children().eq(6).text());
        // if(all.children().eq(7).text()!=null){
        //     $("#interview-state").append('<option selected>'+all.children().eq(7).text()+'</option>');
        // }
        clientstat($("#interview-state"));
        $("#client-number").val(all.children().eq(0).text())
        // $("#interview-state").html(all.children().eq(7).text());
    }
    //关闭模态框
    function closeMo(){
        $("#interview-state").empty();
        $("#stu-gender").empty();
    }

    $("#commiteUpdate").on("click",function () {
        console.log("点击提交修改成功");
        console.log($("#interview-state").text());
        $.ajax({
            url: "../updateData",
            dataType: "json",
            data:{"clientName":$("#stu-name").val(),"clientGender":$("#stu-gender option:selected").text(),
                "clientDistributeTime":$("#divide-time").val(),"clientVisitedTime":$("#go-home-time").val(),"clientInterviewTime":$("#next-return-time").val(),
                "clientAddtime":$("#recently-operate-time").val(),"clientState":$("#interview-state option:selected").val(),"clientNumber":$("#client-number").val()
            },
            type: "post",
            success:function (data) {
                console.log("1111")
                console.log(data);
                if(data>=1){
                    alert("修改成功");
                    getAllData();
                }
            },
            error:function (err) {
                alter("输入时间格式有误");
            }
        })
    })



</script>

</body>
</html>
