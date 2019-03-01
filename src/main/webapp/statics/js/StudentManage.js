/*查找课程类型*/
function findClassStype(obj) {
    obj.empty();
    $.ajax({
        url: "/selectLessonName.action",
        type: "post",
        dataType: "json",
        success: function (successData) {
            var html1="<option value=''>--请选择--</option>";
            var html;
            $.each(successData,function (i,n) {
                html+="<option value="+n.lessonId+">"+n.lessonName+"</option>";
            })
            obj.append(html1+html);

        },
        error: function (e) {
        }
    });
}
/*查找所有班主任*/
function findAllStaff(obj) {
    obj.empty();
    $.ajax({
        url: "/findAllStaff.action",
        type: "post",
        dataType: "json",
        success: function (successData) {
            var html1="<option value=''>--请选择--</option>";
            var html;
            $.each(successData,function (i,n) {
                html+="<option value="+n.staffId+">"+n.staffName+"</option>";
            })
            obj.append(html1+html);

        },
        error: function (e) {
        }
    });
}
/*查找所有班讲师*/
function findAllLectorr(obj) {
    obj.empty();
    $.ajax({
        url: "/findAllLectorr.action",
        type: "post",
        dataType: "json",
        success: function (successData) {
            var html1="<option value=''>--请选择--</option>";
            var html;
            $.each(successData,function (i,n) {
                html+="<option value="+n.staffId+">"+n.staffName+"</option>";
            })
            obj.append(html1+html);

        },
        error: function (e) {
        }
    });
}
/*班级容纳人数*/
function findClassclassesCapacity(obj){
    obj.empty();
    $.ajax({
        url: "/findClassclassesCapacity.action",
        type: "post",
        dataType: "json",
        success: function (successData) {
            var html1="<option value=''>--请选择--</option>";
            var html;
            $.each(successData,function (i,n) {
                html+="<option value="+n+">"+n+"</option>";
            })
            obj.append(html1+html);

        },
        error: function (e) {
        }
    });
}
/*实际进班人数*/
function findclassesInclude(obj){
    obj.empty();
    $.ajax({
        url: "/findclassesInclude.action",
        type: "post",
        dataType: "json",
        success: function (successData) {
            var html1="<option value=''>--请选择--</option>";
            var html;
            $.each(successData,function (i,n) {
                html+="<option value="+n+">"+n+"</option>";
            })
            obj.append(html1+html);

        },
        error: function (e) {
        }
    });
}
/*班级名称*/
function findclassesName(obj){
    obj.empty();
    $.ajax({
        url: "/findclassesName.action",
        type: "post",
        dataType: "json",
        success: function (successData) {
            var html1="<option value=''>--请选择--</option>";
            var html;
            $.each(successData,function (i,n) {
                html+="<option value="+n+">"+n+"</option>";
            })
            obj.append(html1+html);

        },
        error: function (e) {
        }
    });
}
/*重置*/
function resetTwo() {
    $("#classNum").val(null);
    findclassesName($("#class-Name"));
    findClassStype($("#class-course"));
    findAllLectorr($("#class-Teacher"));
    findClassclassesCapacity($("#class-contain"))
    findclassesInclude($("#class-StudentNum"))
    $("#class-State").val('');
    findAllStaff($("#class-Staff"));
}
function findStudend(){
    selectClassesCount();
    findClassStudend(0,pageSizeNum)
}
pageSizeNum=6
/*根据表单查询班级学生*/
function findClassStudend(pageCount,pageSize){

    $("#biaoge table tbody").empty();
    $.ajax({
        url: "/findClassStudend.action",
        type: "post",
        data:{"classesNumber":$("#classNum").val(),
            "classesName":$("#class-Name option:selected").val(),
            "lesson.lessonId":$("#class-course option:selected").val(),
            "staffTeacher.staffId":$("#class-Teacher option:selected").val(),
            "classesCapacity":$("#class-contain option:selected").val(),
            "classesInclude":$("#class-StudentNum option:selected").val(),
            "classesStatus":$("#class-State option:selected").val(),
            "staff.staffId":$("#class-Staff option:selected").val(),
            "pageCount":pageCount,
            "pageSize":pageSize
        },
        dataType: "json",
        success: function (successData) {
            var status=""
            var iskaiban=""
            $.each(successData,function (i,n) {
                if(n.classesStatus==0){
                    status="已开班"
                    iskaiban="结班"
                }else if(n.classesStatus==1){
                    status="未开班"
                    iskaiban="开班"
                }else{
                    status="已结班"
                    iskaiban="已结班"
                }
                html="<tr><td>"+n.classesNumber+"</td><td>"+
                    n.classesName+"</td><td>"+
                    n.lesson.lessonName+"</td><td>"+
                    n.staff.staffName+"</td><td>"+
                    n.staffTeacher.staffName+"</td><td>"+
                    n.classesCapacity+"</td><td>"+
                    n.classesInclude+"</td><td>"+
                    status+"</td>"+
                  "<td class=\"operate\">\n" +
                    "                            <button type=\"button\" class=\"btn btn-info\" onclick='kaiban($(this))' id='iskb'>"+iskaiban+"</button>\n" +
                    "                            <button type=\"button\" class=\"btn btn-danger\" data-toggle=\"modal\" data-target=\"\">班级相册</button>\n" +
                    "                        </td>"+"<td style=\"display: none\">"+n.classesId+"</td></tr>"


                $("#biaoge table tbody").append(html);

            })
        },
        error: function (e) {
            alert("没东西！谢谢")
        }
    });
}
/*查找所有的班级数量*/
/*每页条数*/
mypageSize=6;
pageCount=0;
function selectClassesCount() {
    $.ajax({
        url: "/selectClassStudentCount.action",
        type: "post",
        data:{"classesNumber":$("#classNum").val(),
            "classesName":$("#class-Name option:selected").val(),
            "lesson.lessonId":$("#class-course option:selected").val(),
            "staffTeacher.staffId":$("#class-Teacher option:selected").val(),
            "classesCapacity":$("#class-contain option:selected").val(),
            "classesInclude":$("#class-StudentNum option:selected").val(),
            "classesStatus":$("#class-State option:selected").val(),
            "staff.staffId":$("#class-Staff option:selected").val(),
        },
        dataType: "json",
        success: function (successData) {
            $("#page").empty();
            /*条数*/
            targetNumber=successData;
            $("#pageNum").text(targetNumber);
            if (targetNumber<=mypageSize) {
                $("#num").text(targetNumber);
            }else{
                $("#num").text(mypageSize);
            }

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
    findClassStudend(startNum1,mypageSize)

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
    /*起始条数*/
    var startNum2=(preCount2+1)*mypageSize-mypageSize
    findClassStudend(startNum2,mypageSize)
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
    findClassStudend(startNum,mypageSize)

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
/*开班*/
function kaiban(obj){

    /*获取状态*/
    var Classstatus=obj.parents("tr").children("td").eq(7).text();
    /*获取ID*/
    obj.parents("tr").children("td").eq(9).text()
    var status=2
    if(Classstatus=="已开班"){
        status=0
        $.ajax({
            url: "/finishClass.action",
            type: "post",
            data:{
                "classesId":obj.parents("tr").children("td").eq(9).text(),
            },
            dataType: "json",
            success: function (successData) {
                alert("结班成功！")
                findClassStudend(0,mypageSize);

            },
            error: function (e) {
                alert("结班失败！")
            }
        });

    }else if(Classstatus=="未开班"){
        status=1
        $.ajax({
            url: "/startClass.action",
            type: "post",
            data:{
                "classesId":obj.parents("tr").children("td").eq(9).text(),

            },
            dataType: "json",
            success: function (successData) {
                alert("开班成功！")
                findClassStudend(0,mypageSize);

            },
            error: function (e) {
                alert("开班失败！")
            }
        });

    }else{
        alert("已结班")
    }
}
$(function () {
    selectClassesCount()
    findClassStudend(0,pageSizeNum)
    /*查找课程类型*/
    classStypeId=$("#class-course")
    findClassStype(classStypeId)

    /*班主任*/
    addStaffid=$("#class-Staff")
    findAllStaff(addStaffid)

    /*讲师*/
    classAllLector=$("#class-Teacher")
    findAllLectorr(classAllLector)
    /*容纳人数*/
    classcontain=$("#class-contain")
    findClassclassesCapacity(classcontain)
    /*进班人数*/
    classStudentNum=$("#class-StudentNum")
    findclassesInclude(classStudentNum)
    /*班级名称*/

    clasName=$("#class-Name")
    findclassesName(clasName)
})