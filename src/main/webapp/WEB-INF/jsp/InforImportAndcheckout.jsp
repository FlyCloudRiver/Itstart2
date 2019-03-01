<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/buttons.css">
    <script src="${pageContext.request.contextPath}/assets/js/jquery-2.1.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>


    <style type="text/css">
        #biaoge thead th{
            vertical-align: middle;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="tabbable">
    <%--标签栏--%>
      <ul class="nav nav-tabs">
        <li class="active"><a href="#tab1" data-toggle="tab">数据校验</a></li>
        <li><a href="#tab2" data-toggle="tab">数据录入</a></li>
      </ul>
    <%--整体显示页面--%>
      <div class="tab-content">
            <%--tab1 显示页面--%>
        <div class="tab-pane active " id="tab1">
              <div class="col-md-11 bottom-top" id="biaoge">
                <table class="table table-bordered table-striped content-table" >
                  <thead>
                     <th>名称</th>
                      <th>大小</th>
                     <th>进度</th>
                     <th>状态</th>
                     <th>操作</th>
                     </thead>
                      <tbody>
                    </tbody>
                 </table>
                  <br>
                 上传进度：

                 <br>
                 <br>
        <div class="operate-btn">
            <a class="button button-glow button-rounded button-highlight button-middle "  >
                <span class="glyphicon glyphicon-ban-circle" aria-hidden="true"></span>
                <span class="glyphicon-class">文件上传</span></a>
            <a class="button button-primary button-rounded button-middle " href="#">
                <span class="glyphicon glyphicon-upload" aria-hidden="true"></span>
                <span class="glyphicon-class">全部校验</span>
            </a>
            <a class="button button-glow button-border button-rounded button-primary button-middle " href="#">
                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                <span class="glyphicon-class">全部移除</span>
            </a>
            <a class="button button-glow button-border button-rounded  button-info button-rounded button-middle " href="#">
                <span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span>
                <span class="glyphicon-class">下载模板</span>
            </a>
        </div>
    </div>


    <div class="col-md-11 bottom-foot"  style="margin-top: 50px">
        <table class="table table-bordered table-striped content-table">
            <thead>
            <th>编号</th>
            <th>导入时间</th>
            <th>导入个数</th>
            <th>成功个数</th>
            <th>失败个数</th>
            <th>导入人</th>
            </thead>
            <tbody>
            </tbody>
        </table>

    </div>

</div>
            <%--tab1 显示页面--%>
        <div class="tab-pane" id="tab2">
          <p>Howdy, I'm in Section 2.</p>
        </div>
      </div>
</div>

</body>
</html>
