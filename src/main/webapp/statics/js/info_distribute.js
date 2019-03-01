/*信息分配
* fq*/
var currpage=1;
var pagesize=10;
jQuery(function($){
    currpage=1;
    pagesize=10;
    //查询 按钮
    $("#searchInfo").on("click",searchInfo);
    //重置 按钮
    $("#resetInfo").on("click",resetInfo);
    //分配 按钮
    $("#distribute").on("click",validateDistrbute);
    //模态框 信息分配提交
    $("#submitDistribute").on("click",distribute);
    //加载下拉列表条件
    loadCondition();
    //初始数据查询
    searchInfo();
})

/*分配学生*/
function distribute() {
    var mydata={};
    //获取clientid
    var clients=validateDistrbute();
    if (!clients)
        return false;
    //获取staffId
    var staffId=$("#chooseConsult").find("option:selected").val();

    if (staffId=='')
        return false;
    //封装data
    mydata.staffId=staffId;
    mydata.clients=clients;
    console.log(mydata)
   $.ajax({
       url:'/infodistribute/distribute',
       dataType:"text",
       contentType:'application/json',
       type:"post",
       data:JSON.stringify(mydata),
       success:function (datasource) {
           if ("success"==datasource) {
               //重新加载列表
               searchInfo();
               alert("分配成功")
           }
       },
       error:function () {
           alert("分配失败")
          return false;
       }
   })
}
/*校验“分配”点击*/
function validateDistrbute() {
    var clients='';
    console.log(typeof clients)
    $.each($("tbody > tr"),function (i,n) {
        if($(this).is('.active')){
            clients+="#"+$(this).attr("id");
        }
    })
    console.log("校验")
    console.log(clients)
    if(clients=='') {
        alert("请选择学生！")
        return false;
    }else{
        return clients ;
    }
}


/*初始化下拉列表的值*/
function loadCondition() {
    $.ajax({
        url:"/infodistribute/loadCondition",
        contentType:'application/json',
        dataType:'json',
        type:'get',
        success:function (datasource) {
            console.log(datasource.clientSource)
            //客户来源
            $.each(datasource.clientSource,function (i,n) {
               // console.log(n)
                $("#clientSource").append("<option value='"+n.clientSourceId+"'>"+n.clientSource+"</option>");
            });
            //校区
            $.each(datasource.campus,function (i,n) {
               // console.log(n)
                $("#campus").append("<option value='"+n.campusId+"'>"+n.campusName+"</option>");
            })
            //咨询师
            $.each(datasource.consults,function (i,n) {
                console.log(n)
                $("#chooseConsult").append("<option value='"+n.staffId+"'>"+n.staffName+"("+n.campus.campusName+")"+"</option>");
            })
            $("#clientSource,#campus,#chooseConsult").prepend("<option value='' selected>请选择...</option>")
            //console.log(datasource)
        },
        error:function (datasource) {

            console.log(datasource);
            alert("2131")
        },
        complete:function () {
            $('#my-modal').modal('hide')
        }
    })
}
/*生成tr*/
function toResult(datasource) {
    $("#myresult").empty();
    if (datasource.records==0){$("#myresult").html("无相关数据！")}else{

    /*填充数据*/
    $.each(datasource.rows,function (i,n) {
        $("#myresult").append('<tr id="'+n.clientId+'">' +
            '<td class="center"><label class="pos-rel"><input type="checkbox" class="ace" /><span class="lbl"></span></label></td><td class="clientNo" >' +
            n.clientNumber+
            '</td><td class="clientName">' +
            n.clientName+
            '</td><td class="sex">' +
            n.clientGender+
            '</td><td class="school">' +
            n.campus.campusName+
            '</td><td class="clientState"><span class="label label-sm label-warning">' +
            '初始分配'+
            '</span></td><td class="addTime">' +
            n.clientAddtime+
            '</td><td class="staffName">' +
            n.saleStaff.staffName+
            '</td></tr>');
    })
    }
    tonavpage(datasource.records,datasource.total)
}

//分页导航
function tonavpage(totalrecords,totalpages) {
    $("#mynavpage").empty();
    /*分页按钮*/
    if (totalrecords<=pagesize) {
        currpage=1;
        totalpages=1;
        $("#mynavpage").append('<li class="paginate_button active" aria-controls="dynamic-table" tabindex="0"><a href="#">'+1+'</a></li>')
    }else{
        $("#mynavpage").append('<li class="paginate_button previous" aria-controls="dynamic-table" tabindex="0" id="dynamic-table_previous"><a href="#">上一页</a></li>');
       for (var i=1;i<=totalpages;i++){
           $("#mynavpage").append('<li class="paginate_button" aria-controls="dynamic-table" tabindex="0"><a href="#">'+i+'</a></li>')
       }
        $("#mynavpage").append('<li class="paginate_button next" aria-controls="dynamic-table" tabindex="0" id="dynamic-table_next"><a href="#" >下一页</a></li>');
    }
    /*分页信息*/
    $("#rows").text(totalrecords);
    $("#currpage").text(currpage);
    $("#totalpage").text(totalpages);
    /*分页按钮事件*/
    //分页组件
    $("li[class='paginate_button']>a").on("click",function () {
        console.log(totalpages)
       currpage=$(this).text();
        //查询
       searchInfo();
    })
    //上一页
    $("li[class='paginate_button previous']>a").on("click",function () {
        if (currpage==1){
            return false;
        } else{
            currpage--;
        }
        //查询
        searchInfo();
    })
    //下一页
    $("li[class='paginate_button next']>a").on("click",function () {
        if (currpage==totalpages){
            return false;
        } else{
            currpage++;
        }
        //查询
        searchInfo();
    })
}


/*查询*/
function searchInfo() {
    /*if ($("#clientName").val()==""&&$("#clientTel").val()==""
        &&$("#clientSource").val()==""&&$("#campus").val()=="")
        return;*/
    var _mydata={
        "clientName":$("#clientName").val(),
        "clientTel":$("#clientTel").val()
    }
    if ($("#campus").val()!="" && !$("#campus").find("option:selected")!=null) {
        _mydata.campus={
            "campusId":$("#campus").val(),
            "campusName":$("#campus").find("option:selected").text()
        };
    }
    if($("#clientSource").val()!="" && $("#clientSource").find("option:selected")!=null){
        _mydata.clientSource={
            "clientSourceId":$("#clientSource").val(),
            "clientSource":$("#clientSource").find("option:selected").text()
        }
    }
    //封装qo对象
    var query={
        "page":currpage,
        "rows":pagesize
    };
    query.qo=_mydata;

    console.log(query)
    connectBase(query);

}

/*重置*/
function resetInfo() {
    console.log("asdasdas")
   $("#clientName,#clientTel").val("");
   $("#clientSource").children().eq(0).prop({'selected':'selected'});
    $("#campus").children().eq(0).prop({'selected':'selected'});
   console.log( $("#clientSource,#campus").children().eq(0))
}

/*查找数据库*/
function connectBase(data) {
    $.ajax({
        url:"/infodistribute/getClientByEmaple",
        contentType: "application/json;charset=UTF-8",
        dataType: "json",
        type:"post",
        data:JSON.stringify(data),
        success:function (datasource) {
            console.log("--------------------------")
            console.log(datasource);
            toResult(datasource)
        },
        error:function (datasource) {
            alert("no")
        }
    });
}