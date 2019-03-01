


$(function () {
    getExceptionStudentsCounts();
    selectExceptionStudents(0,mypageSize);
})





     function  selectselectExceptionStudent() {

       getExceptionStudentsCounts();
         selectExceptionStudents(0,mypageSize);

     }

// 点击查询获得有查询条件的异常学生列表
    function selectExceptionStudents(pageStart,pageSize) {
        var state = $("select#state").val();
        var studentName = $("input#student-name").val();
        var teacherName = $("input#teacher").val();
        console.log(state);
    $("tbody").empty();

    // var data = {
    //     clientName: studentName,
    //     clientState:state,
    //     classes: {
    //         staff: {
    //             staffName: teacherName
    //         }
    //     },
    //     pageStart:pageStart,
    //     pageSize:pageSize,
    // }
    // console.log(data.clientState)
        console.log(studentName)
    $.ajax({
        url: "/selectExceptionStudents.action",
        data: {
            "clientName":studentName,
            "clientState":state,
            "classes.staff.staffName":teacherName,
            "pageStart":pageStart,
            "pageSize":pageSize
        },
        // contentType: "application/json;charset=UTF-8",
        type: "post",
        dataType: "json",
        success: function (data) {
            console.log(data);
            var Html = "";
            $.each(data, function (i, n) {
                Html += "<tr role='row'>";
                Html += "<td>" + n.clientId + "</td><td>" + n.clientName
                    + "</td><td>" + n.classes.classesNumber + "</td><td>" + n.classes.lesson.lessonName + "</td><td>" + n.clientPursure + "</td><td>"
                    + n.classes.staffTeacher.staffName + "</td><td>" + n.classes.staff.staffName + "</td><td>" +judgeStatus(n.clientState)+ "</td>";
                Html += "</tr>";
            });
            $("tbody").append(Html);
        },
        error: function (e) {
            console.log(e);
        }
    })
}

/*重置*/
function resetAll() {
    $("select#state").prop('selectedIndex', 0);
  $("input#student-name").prop("value","");
    $("input#teacher").prop("value","");

}




/*将json的status转换成对应标志  开班状态的status*/
function judgeStatus(obj) {

  if (obj == 6) {
        return "<span class='label label-success'>已进班</span>";
    }else if (obj == 7) {
        return "<span class='label label-danger'>已退学</span>";
    }else if (obj == 8) {
        return "<span class='label label-warning'>已休学</span>";
    }else if (obj == 9) {
        return "<span class='label label-info'>已分配</span>";
    }
}




/*查找所有的班级数量*/
/*每页条数*/
mypageSize=4;
pageCount=0;
function getExceptionStudentsCounts() {
    var state = $("select#state").val();
    var studentName = $("input#student-name").val();
    var teacherName = $("input#teacher").val();
    $.ajax({
        url: "/getExceptionStudentsCounts.action",

        data:{"clientName":studentName,
            "clientState":state,
            "classes.staff.staffName":teacherName},
        type: "post",
        dataType: "json",
        success: function (successData) {
            $("#page").empty();
            /*条数*/
            targetNumber=successData;
            console.log("得到的条数："+teacherName)
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
    selectExceptionStudents(startNum1,mypageSize)
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
    selectExceptionStudents(startNum2,mypageSize)
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
    selectExceptionStudents(startNum,mypageSize);

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



