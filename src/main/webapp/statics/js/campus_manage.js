/*校区管理 fq*/
var currpage=1;
var pagesize=10;
jQuery(function ($) {
    $("#searchInfo").on("click",function () {
        currpage=1;
        searchCampus();
    })
    $("#resetInfo").on("click",function () {
        $("#campusName").val("");
    })
    $("#addNewCampus").on("click",addNewCampus)
    $("#editCampusInfo").on("click",editCampus)
    searchCampus()
})


/*查看校区员工*/
function viewStaffs(n) {
    var _date={
        "campusId":n.parents("tr").prop("id")
    }
    $.ajax({
        url:"campusmanage/viewStaffs",
        data:JSON.stringify(_date),
        dataType:"json",
        contentType:"application/json",
        type:"post",
        success:function (datasource) {
            console.log(datasource)
            $.each(datasource,function (i,n) {
                console.log(n)
                $("tbody").append("<tr><td class='staffpower'>" +n.staffPower.staffPowerDetail+
                    "</td><td class='staffnumber'>" +n.staffNumber+
                    "</td><td class='staffname'>" +n.staffName+
                    "</td></tr>")
            })
        },
        error:function () {
            alert("查看失败")
        }
    })
}
/*删除校区*/
function deleteCampus(n) {
    var _date={
        "campusId":n.parents("tr").prop("id")
    }
    console.log(_date)
    $.ajax({
        url:"campusmanage/deleteCampus",
        data:JSON.stringify(_date),
        dataType:"text",
        contentType:"application/json",
        type:"post",
        success:function (datasource) {
           if (datasource=="success")
           {
               alert("删除成功")
           } else{
               alert("该校区不能删除")
           }
        },
        error:function () {
            alert("删除失败")
        },
        complete:function () {
            searchCampus()
        }
    })
}

/*开通校区*/
function openCampus(n) {
   var _date={
       "campusId":n.parents("tr").prop("id")
   }

    $.ajax({
        url:"campusmanage/openCampus",
        data:JSON.stringify(_date),
        dataType:"text",
        contentType:"application/json",
        type:"post",
        success:function (datasource) {
            alert("开通成功")
        },
        error:function () {
            alert("开通失败")
        },
        complete:function () {
            searchCampus()
        }
    })
}

/*点击编辑校区*/
function toedit(n) {
    console.log(n.parents("tr").prop("id"))
    var name =n.parents("td").siblings().eq(2).text();
    console.log(name)
    $("#editCampusName").val(name);
    $("#editCampusName").attr("cid",n.parents("tr").prop("id"));
    $.ajax({
        url:"campusmanage/findHeadmaster",
        dataType:"json",
        type:"post",
        contentType:"application/json",
        success:function (datasource) {
            console.log(datasource)
           $.each(datasource,function (i,n) {
               $("#newHeadermaster").append("<option value='"+n.staffId+"'>"+n.staffName+"</option>");
           })
        },
        error:function () {
            alert("editCampus error")
        }
    })
}
/*编辑校区*/
function editCampus() {
    if ($("#editCampusName").val()==""||$("#newHeadermaster").val()=="")
        return false;
    var _data={
        "campusName": $("#editCampusName").val(),
        "staffId":$("#newHeadermaster").val(),
        "campusId": $("#editCampusName").attr("cid")
    }
    console.log(_data)
    $.ajax({
        url:"campusmanage/editCampus",
        data:JSON.stringify(_data),
        dataType: "text",
        type: "post",
        contentType:"application/json;charset:utf-8",
        success:function (dataSource) {
            console.log(dataSource)
            alert("更新成功")
        },
        error:function () {
         alert("campus edit false!")
        },
        complete:function () {
            $("#editCampus").modal('hide')
            searchCampus();
        }
    })
}
/*点击新增校区*/
function toNewCampus() {
    console.log(Math.random().toString(10).substr(8))
    $("#randomNumber").val(Math.random().toString(10).substr(8));
}
/*模态框提交 新增校区*/
function addNewCampus() {

    if ($("#newCampusName").val()==''||$("#newCampusStatus").val()=='')
        return false;
    var campus={
        "campusNumber":$("#randomNumber").val(),
        "campusName":$("#newCampusName").val(),
        "campusStatus":$("#newCampusStatus").val()
    }
    console.log(campus)
    $.ajax({
        url:"/campusmanage/addCampus",
        data:JSON.stringify(campus),
        dataType: "text",
        type: "post",
        contentType:"application/json;charset:utf-8",
        success:function (dataSource) {
            console.log(dataSource)
            alert("添加成功")
        },
        error:function (datasource) {
            alert("添加失败")
        },
        complete:function () {
            $("#addCampus").modal('hide')
        }
    })
}
/*查询学校*/
function searchCampus() {
    var _value={"campusName":$("#campusName").val()};
    //封装qo对象
    var query={
        "page":currpage,
        "rows":pagesize
    };
    query.qo=_value;

    $.ajax({
        url:"/campusmanage/searchCampus",
        dataType:"json",
        data:JSON.stringify(query),
        type:"post",
        contentType:"application/json;charset=utf-8",
        success:function (datasource) {
           //console.log(datasource)
            totr(datasource)
        },
        error:function () {
            alert("campus error")
        }
    })
}

/*生成结果*/
function totr(datasource) {
    $("#myresult").empty();
    if (datasource.records == 0) {
        $("#myresult").html("无相关数据！")
    } else {
        /*填充数据*/
        $.each(datasource.rows, function (i, n) {
            var campusstatus = n.campusStatus == '0' ? "未开班" : "已开班";
            var headmaster = findHeadmaster(n.campusStaffs);
            $("#myresult").append("<tr id='" + n.campusId + "'>" + "<td class='center'><label class='pos-rel'><input type='checkbox' class='ace'><span class='lbl'></span></label></td>" +
                "<td class='campusNumber'>" + n.campusNumber +
                "</td><td class='campusName'>" + n.campusName +
                "</td><td class='campusAddTime'>" + n.campusAddTime +
                "+</td><td class='campusUpdateTime'>" + n.campusUpdateTime +
                "</td><td class='campusStatus'>" + campusstatus +
                "</td><td class='headmasterName'>" + headmaster +
                "</td><td class='campusStaffsSize'><a href='#viewStaff' data-toggle='modal' role='button' onclick='viewStaffs($(this))'>该校区职工" + n.campusStaffs.length +
                "人</a></td>" + '<td><div class="hidden-sm hidden-xs btn-group"><button class="btn btn-xs btn-info" data-toggle="modal" data-target="#editCampus" onclick="toedit($(this))"> <i class="ace-icon fa fa-pencil bigger-120"></i></button><button class="btn btn-xs btn-danger" onclick="deleteCampus($(this))"><i class="ace-icon fa fa-trash-o bigger-120"></i> </button><button class="btn btn-xs btn-warning" onclick="openCampus($(this))"><span class="glyphicon glyphicon-off" aria-hidden="true" ></span>开通校园</button></div></td>' +
                "</tr>");
        })

        tonavpage(datasource.records, datasource.total)
    }

    /*找到校长*/
    function findHeadmaster(staffArr) {
        var temp = "无";
        $.each(staffArr, function (i, n) {
            if (n.staffPower.staffPowerId == '6') {
                temp = n.staffName;
            }
        })
        return temp;
    }

//分页导航
    function tonavpage(totalrecords, totalpages) {
        $("#mynavpage").empty();
        /*分页按钮*/
        if (totalrecords <= pagesize) {
            currpage = 1;
            totalpages = 1;
            $("#mynavpage").append('<li class="paginate_button active" aria-controls="dynamic-table" tabindex="0"><a href="#">' + 1 + '</a></li>')
        } else {
            $("#mynavpage").append('<li class="paginate_button previous" aria-controls="dynamic-table" tabindex="0" id="dynamic-table_previous"><a href="#">上一页</a></li>');
            for (var i = 1; i <= totalpages; i++) {
                $("#mynavpage").append('<li class="paginate_button" aria-controls="dynamic-table" tabindex="0"><a href="#">' + i + '</a></li>')
            }
            $("#mynavpage").append('<li class="paginate_button next" aria-controls="dynamic-table" tabindex="0" id="dynamic-table_next"><a href="#" >下一页</a></li>');
        }
        /*分页信息*/
        $("#rows").text(totalrecords);
        $("#currpage").text(currpage);
        $("#totalpage").text(totalpages);
        /*分页按钮事件*/
        //分页组件
        $("li[class='paginate_button']>a").on("click", function () {
            console.log(totalpages)
            currpage = $(this).text();
            //查询
            searchCampus();
        })
        //上一页
        $("li[class='paginate_button previous']>a").on("click", function () {
            if (currpage == 1) {
                return false;
            } else {
                currpage -= 1;
            }
            //查询
            searchCampus();
        })
        //下一页
        $("li[class='paginate_button next']>a").on("click", function () {
            if (currpage == totalpages) {
                return false;
            } else {
                currpage += 1;
            }
            //查询
            searchCampus();
        })
    }
}


