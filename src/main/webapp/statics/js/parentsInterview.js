
$(function () {
    getExceptionStudentsCounts();
    selectParentInterview(0,mypageSize);
})




    function selectParentInterview(pageStart,pageSize) {
    $("tbody").empty();
    $.ajax({
        url: "/selectParentInterview.action",
        data:{
            "pageStart":pageStart,
            "pageSize":pageSize
        },
        type: "post",
        dataType: "json",
        success: function (data) {
            console.log(data);
            var Html = "";
            $.each(data, function (i, n) {
                Html += "<tr role='row'>";
                Html += "<td>" + n.interviewId+ "</td><td>" + n.interviewType
                    + "</td><td>" + n.interviewContext + "</td><td>" +n.interviewTime+ "</td><td>" + n.client.clientLinkman+ "</td><td>"
                    + n.client.saleStaff.staffName+ "</td>";
                Html += "</tr>";
            });
            $("tbody").append(Html);
        },
        error: function (e) {
            console.log(e);
        }
    })
}



/*查找所有的班级数量*/
/*每页条数*/
mypageSize=4;
pageCount=0;
function getExceptionStudentsCounts() {

    $.ajax({
        url: "/getParentInterviewCounts.action",
        type: "post",
        dataType: "json",
        success: function (successData) {
            $("#page").empty();
            /*条数*/
            targetNumber=successData;
            $("#pageNum").text(targetNumber);
            /*页数*/
            pageCount= Math.ceil(targetNumber/mypageSize);
            html1="<li onclick='prev($(this))'id='shang' class='disabled'><a>&laquo;</a></li>";
            html3="<li onclick='next($(this))' id='xia'><a>&raquo;</a></li>";
            var html2="";
            for(var i=1;i<=pageCount;i++){
                html2+="<li onclick='pagenumber($(this))'><a>"+i+"</a></li>"
            }
            $("#page").append(html1+html2+html3)
            var x;
            if (targetNumber>4){
                x=4;
            } else {
                x=targetNumber;
            }
            $("#records").text(x);
        },
        error: function (e) {
        }
    });
}


/*上一页*/
function prev(obj) {
    /*获取当前页码*/
    var preCount=1
    preCount=parseInt($("#pageoder").text())
    if(obj.prop("class")=="disabled"){
        return
    }
    /*obj.prop("class")*/
    /*起始条数*/
    var startNum1=(preCount-1)*mypageSize-mypageSize
    selectParentInterview(startNum1,mypageSize)
    /*页码减1*/
    $("#pageoder").text(preCount-1)
    pageoder();
}
/*下一页*/
function next(obj) {
    /*获取当前页码*/
    var preCount2=1
    preCount2=parseInt($("#pageoder").text())
    if(obj.prop("class")=="disabled"){
        return
    }
    /* alert(obj.prop("class"))*/
    /*起始条数*/
    var startNum2=(preCount2+1)*mypageSize-mypageSize
    selectParentInterview( startNum2,mypageSize)
    $("#pageoder").text(preCount2+1)
    pageoder();
}
/*点击页码*/
function pagenumber(obj) {
    console.log(obj.text())
    /*获取页码*/
    var p = obj.text();
    /*显示页码*/
    $("#pageoder").text(p);
    pageoder();
    /*起始条数*/
    var startNum=p*mypageSize-mypageSize
    selectParentInterview( startNum,mypageSize)

}
function pageoder(){
    var oderpage=$("#pageoder").text();
    if(oderpage==1){
        $("#xia").removeClass();
        $("#shang").removeClass();
        $("#shang").addClass("disabled");

    }else  if(oderpage==pageCount){
        $("#shang").removeClass();
        $("#xia").removeClass();
        $("#xia").addClass("disabled");
    }else{
        $("#shang").removeClass();
        $("#xia").removeClass();
    }

}









