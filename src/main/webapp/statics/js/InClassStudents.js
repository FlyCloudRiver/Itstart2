
$(function () {
    getInClassStudentsCounts();
    selectInClassStudents(0,mypageSize);
})


function  selectInClassStudentsList() {
    getInClassStudentsCounts();
    selectInClassStudents(0,mypageSize);
}


// 点击查询获得有查询条件的进班学生列表
    function selectInClassStudents(pageStart,pageSize) {
    $("tbody").empty();
    var state = $("select#state").val();
    var studentName = $("input#student-name").val();
    var teacherName = $("input#teacher").val();

    $.ajax({
        url: "/selectInClassStudents.action",
        data:{
            "orderStatus":state,
            "client.clientName":studentName,
            "client.classes.staff.staffName":teacherName,
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
                Html += "<td>" + n.orderNumber+ "</td>"
                    +"<td>"+ n.client.clientName + "</td>"
                    +"<td>"+ judgeLessonSchool(n.client.classes.lesson.lessonLevel.lessonLevelSchool)+ "<br>"
                    +judgeLessonSchoolLevel(n.client.classes.lesson.lessonLevel.lessonLevelGrade)+"<br>"
                    +judgeLesson(n.client.classes.lesson.lessonLevel.lessonLevelType)+"</td>"
                    +"<td>"+ n.client.classes.lesson.lessonName + "</td>"
                    +"<td>"+ n.lessonDetail.lessonDtlHour+ "</td>"
                    +"<td>"+ n.client.classes.lesson.lessionPrice+"￥</td>"
                    +"<td>" + judgeStatus(n.orderStatus)+"</td>"
                    + "<td class=\"operate\">"+
                    "<button type=\"button\" class=\"button button-glow button-rounded button-highlight  button-tiny\" >"+
                    "<span>进班</span>"+
                    "</button>"+
                    "<button type=\"button\" class=\"button button-primary button-rounded  button-tiny\">"+
                    "<span>记录</span>"+
                    "</button>"+"<br><br>"+
                    "<button type=\"button\" class=\"button button-glow button-border button-rounded button-primary button-tiny\" data-toggle=\"modal\" data-target=\"#add-student\">"+
                    "<span>进班报名</span>"+
                    "</button><br><br>"+
                    "<button type=\"button\" class=\"button button-glow button-border button-rounded button-primary button-tiny\" data-toggle=\"modal\" data-target=\"#update-student\">"+
                    "<span>更改报名</span>"+
                    "</button>"+
                   "</td>";
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




/*将json的status转换成对应标志  缴费状态的status*/
function judgeStatus(obj) {
    if (obj == 0) {
        return "<span class='label  label-warning'>待缴费</span>";
    } else if (obj == 1) {
        return "<span class='label label-success'>已缴全</span>";
    } else if (obj == 2) {
        return "<span class='label label-danger'>欠费</span>";
    }
}


    // 将课程分类中的部门进行识别
  function  judgeLessonSchool(obj) {
      if (obj == 0) {
          return "小学部";
      } else if (obj == 1) {
          return "初中部"
      } else if (obj == 2) {
          return "高中部"
      }
  }

      // 将课程分类中的部门级别进行识别
      function  judgeLessonSchoolLevel(obj) {
          if (obj==1){
              return "一年级";
          }else if(obj==2){
              return "二年级"
          }else if (obj==3){
              return "三年级"
          }else if (obj==4){
              return "四年级"
          }else if (obj==5){
              return "五年级"
          }else if (obj==6){
              return "六年级"
          }
      }


      // 将课程分类的中的课程进行识别
function  judgeLesson(obj) {
    if (obj==0){
        return "《语文》";
    }else if(obj==1){
        return "《数学》"
    }else if (obj==2){
        return "《英语》"
    }else if (obj==3){
        return "《政治》"
    }else if (obj==4){
        return "《地理》"
    }else if (obj==5){
        return "《物理》"
    }else if (obj==6){
        return "《化学》"
    }else if (obj==7){
        return "《历史》"
    }else if (obj==8){
        return "《生物》"
    }
}



/*查找所有的班级数量*/
/*每页条数*/
mypageSize=4;
pageCount=0;
function getInClassStudentsCounts() {
    var state = $("select#state").val();
    var studentName = $("input#student-name").val();
    var teacherName = $("input#teacher").val();
    $.ajax({
        url: "/getInClassStudentsCounts.action",

        data:{
            "orderStatus":state,
            "client.clientName":studentName,
            "client.classes.staff.staffName":teacherName
        },
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
    selectInClassStudents(startNum1,mypageSize)
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
    selectInClassStudents(startNum2,mypageSize)
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
    selectInClassStudents(startNum,mypageSize)

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
// ----------------------------------------------------------------------------------------------------
//   课程分类联动查询
//    获取年级
  function lesson_level_grade() {
     var levelSchool=$("#lesson_level_school").val();
     console.log(levelSchool);
     $.ajax({
         url:"/getLessonLevelGrade.action",
         data:{"lessonLevelSchool":levelSchool},
         type:"post",
         dataType:"json",
         success:function (data) {
           $("#lesson_level_grade").empty();
             console.log(data)
           $.each(data,function (i,item) {

               $("#lesson_level_grade").append("<option value='"+item.lessonLevelGrade+"'>"+judgeLessonSchoolLevel(item.lessonLevelGrade)+"</option>");
           });

         }
     });
  }



//    获取课程分类
function getLevelType() {
    var levelGrade=$("#lesson_level_grade").val();
    $.ajax({
        url:"/getLessonLevelType.action",
        data:{"lessonLevelGrade":levelGrade},
        type:"post",
        dataType:"json",
        success:function (data) {
            $("#lesson_level_type").empty();
            console.log(data)
            $.each(data,function (i,item) {

                $("#lesson_level_type").append("<option value='"+item.lessonLevelType+"'>"+judgeLesson(item.lessonLevelType)+"</option>");
            });

        }
    });
}


   // 获取课程选择
function getLesson() {
    var lessonLevelType=$("#lesson_level_type").val();
    $.ajax({
        url:"",
        data:{"lessonLevelType":lessonLevelType},
        type:"post",
        dataType:"json",
        success:function (data) {
            $("#add-lesson").empty();
            $.each(data,function (i,item) {

                $("#add-lesson").append("<option value='"+item.lesson_level_type+"'>"+item.lesson_level_type+"</option>");
            });

        }
    });
}


   //获取课时
function getLesson() {
    var lessonLevelType=$("#lesson_level_type").val();
    $.ajax({
        url:"",
        data:{"lessonLevelType":lessonLevelType},
        type:"post",
        dataType:"json",
        success:function (data) {
            $("#add-lesson").empty();
            $.each(data,function (i,item) {

                $("#add-lesson").append("<option value='"+item.lesson_level_type+"'>"+item.lesson_level_type+"</option>");
            });

        }
    });
}


// 获取课程费用
function getLesson() {
    var lessonLevelType=$("#lesson_level_type").val();
    $.ajax({
        url:"",
        data:{"lessonLevelType":lessonLevelType},
        type:"post",
        dataType:"json",
        success:function (data) {
            $("#add-lesson").empty();
            $.each(data,function (i,item) {

                $("#add-lesson").append("<option value='"+item.lesson_level_type+"'>"+item.lesson_level_type+"</option>");
            });

        }
    });
}







