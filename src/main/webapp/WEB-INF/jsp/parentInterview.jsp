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
    <title>家长访谈</title>
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
    <%--表格部分--%>
    <div class="top">
        <div class="row">
            <div class="col-md-12 bottom-top">
                <h4 class="title"><span>访谈列表</span></h4>
            </div>
            <div class="col-md-12 blank"></div>
            <div class="col-md-11 bottom-foot " id="biaoge" >
                <table class="table table-bordered table-striped content-table" >
                    <thead>
                    <tr role='row'>
                    <th>访谈ID</th>
                    <th>沟通方式</th>
                    <th>沟通内容</th>
                    <th>沟通时间</th>
                    <th>沟通对象</th>
                    <th>记录员</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>

                <ul class="pagination" id="page">

                </ul>
                <p>这是第&nbsp;&nbsp;&nbsp;<span style="color:darkgreen;" id="pageoder">1</span>&nbsp;&nbsp;&nbsp;页  每页 <span id="records">4</span> 条  一共<span id="pageNum"></span>条</p>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/statics/js/parentsInterview.js" type="text/javascript"/>
</body>
</html>
