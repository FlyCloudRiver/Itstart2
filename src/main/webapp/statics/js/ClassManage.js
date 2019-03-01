/*查找校区*/
function selecClassCampus(tiget){
    tiget.empty();
    $.ajax({
        url: "/selectCampusName.action",
        type: "post",
        dataType: "json",
        success: function (successData) {
            var html1="<option value=''>--请选择--</option>";
            var html;
            $.each(successData,function (i,n) {
                html+="<option value='"+n.campusId+"'>"+n.campusName+"</option>";
            })
            tiget.append(html1+html);
        },
        error: function (e) {
        }
    });
}
/*查找班级类型*/
function selectClassesType(typeId){
    typeId.empty();
    $.ajax({
        url: "/selectClassesType.action",
        type: "post",
        dataType: "json",
        success: function (successData) {
            var html1="<option value=''>--请选择--</option>";
            var html;
            $.each(successData,function (i,n) {
                html+="<option value='"+n.classesTypeId+"'>"+n.classesType+"</option>";
            })
            typeId.append(html1+html);
        },
        error: function (e) {
        }
    });
}
/*重置*/
function resetInput(){
   $("#class-Num").val(null);
    selecClassCampus($("#class-School"));
    $("#class-Name").val(null);
    $("#class-State").val('');
    findClassStype($("#class-Style"))
    selectClassesType($("#class-ClassStyle"));
}
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
                html+="<option value='"+n.lessonId+"'>"+n.lessonName+"</option>";
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
                html+="<option value='"+n.staffId+"'>"+n.staffName+"</option>";
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
                html+="<option value='"+n.staffId+"'>"+n.staffName+"</option>";
            })
            obj.append(html1+html);

        },
        error: function (e) {
        }
    });
}
/*查找所有教室*/
function  findAllClassesRoom(obj){
    obj.empty()
    $.ajax({
        url: "/findAllClassesRoom.action",
        type: "post",
        dataType: "json",
        success: function (successData) {
            var html1="<option value=''>--请选择--</option>";
            var html;
            $.each(successData,function (i,n) {
                html+="<option value='"+n.classroomId+"'>"+n.classroomName+"</option>";
            })
            obj.append(html1+html);

        },
        error: function (e) {
        }
    });
}
/*更新班级*/
function updateClass(obj){

    $.ajax({
        url: "/updateClasses.action",
        type: "post",
        data:{"classesId":$("#eidit-class-id").val(),
            "classesName":$("#eidit-class-name").val(),
            "classesType.classesTypeId":$("#eidit-class-Style option:selected").val(),
            "lesson.lessonId":$("#eidit-class-Curriculum option:selected").val(),
            "campus.campusId":$("#eidit-class-School option:selected").val(),
            "classesStarttime":$("#eidit-time-start").val(),
            "classesEndtime":$("#eidit-time-end").val(),
            "classesCapacity":$("#eidit-class-Number").val(),
            "staff.staffId":$("#eidit-class-Staff option:selected").val(),
            "staffTeacher.staffId":$("#eidit-class-Lector option:selected").val(),
        },
        dataType: "json",
        success: function (successData) {

               alert("成功！")
               findClass(0,mypageSize)


        },
        error: function (e) {
        }
    });

}

/*根据表单查找所有班级*/
function findClass(pageCount,pageSize) {
    $("#biaoge table tbody").empty();
    console.log($("#class-State").val())
    $.ajax({
        url: "/selectClasses.action",
        type: "post",
        data:{"classesNumber":$("#class-Num").val(),
            "campus.campusId":$("#class-School option:selected").val(),
            "staff.staffName":$("#class-Name").val(),
            "classesStatus":$("#class-State").val(),
            "lesson.lessonId":$("#class-Style option:selected").val(),
            "classesType.classesTypeId":$("#class-ClassStyle option:selected").val(),
            "pageCount":pageCount,
            "pageSize":pageSize
        },
        dataType: "json",
        success: function (successData) {
            var status=""
            $.each(successData,function (i,n) {
                if(n.classesStatus==0){
                    status="已开班"
                }else if(n.classesStatus==1){
                    status="未开班"
                }else{
                    status="已结班"
                }
                html="<tr><td>"+n.classesId+"</td><td>"+
                    n.classesNumber+"</td><td>"+
                    n.classesName+"</td><td>"+
                    n.campus.campusName+"</td><td>"+
                    n.lesson.lessonName+"</td><td>"+
                    n.classesStarttime+"</td><td>"+
                    n.classesEndtime+"</td><td>"+
                    n.staffTeacher.staffName+"</td><td>"+
                    n.staff.staffName+"</td><td>"+
                    status+"</td>"+"<td class=\"operate\">\n" +
                    "                            <button type=\"button\" class=\"btn btn-info\"  data-toggle=\"modal\" data-target=\"#myModal\" onclick='myeidit($(this))'>编 辑</button>\n" +
                    "                            <button type=\"button\" class=\"btn btn-danger\" data-toggle=\"modal\" data-target=\"\" onclick='deleteClass($(this))'>删 除</button>\n" +
                    "                        </td>"+"<td style=\"display: none\">"+n.classesCapacity+"</td></tr>"
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
        url: "/selectClassesCount.action",
        type: "post",
        data:{"classesNumber":$("#class-Num").val(),
            "campus.campusId":$("#class-School option:selected").val(),
            "staff.staffName":$("#class-Name").val(),
            "classesStatus":$("#class-State").val(),
            "lesson.lessonId":$("#class-Style option:selected").val(),
            "classesType.classesTypeId":$("#class-ClassStyle option:selected").val(),
        },
        dataType: "json",
        success: function (successData) {
            $("#page").empty();
            /*条数*/
            targetNumber=successData;
            /*每页几条*/
            $("#pageNum").text(targetNumber);
            if (targetNumber<=mypageSize) {
                $("#num").text(targetNumber);
            }else{
                $("#num").text(mypageSize);
            }
            /*当前第几页*/
            $("#pageoder").text(1);
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
        findClass(startNum1,mypageSize)
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
    findClass(startNum2,mypageSize)
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
    findClass(startNum,mypageSize);

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
/*新增班级*/
function insertClass(obj){

    $.ajax({
        url: "/insertClass.action",
        type: "post",
        data:{
            "classesName":$("#add-class-name").val(),
            "classesType.classesTypeId":$("#add-class-Style2 option:selected").val(),
            "lesson.lessonId":$("#add-class-Curriculum2 option:selected").val(),
            "campus.campusId":$("#add-class-School2 option:selected").val(),
            "classesStarttime":$("#add-time-start2").val(),
            "classesEndtime":$("#add-time-end2").val(),
            "classesCapacity":$("#add-class-Number2").val(),
            "staff.staffId":$("#add-class-Teacher2 option:selected").val(),
            "staffTeacher.staffId":$("#add-class-Lector2 option:selected").val(),
            "classesStatus":$("#add-class-State option:selected").val(),
            "classesNumber":$("#add-ClassesNumber").val(),
            "classesInclude":$("#add-class-Includ").val(),
            "classroom.classroomId":$("#add-ClassesRoom option:selected").val(),
        },
        dataType: "json",
        success: function (successData) {
            if(successData>=1){
                alert("添加成功！")
                findClass(0,mypageSize)
            }else{
                alert("班级名重复，添加失败！")
            }


        },
        error: function (e) {
            alert("添加失败！")
        }
    });
}
/*编辑模态框  获取值*/
function myeidit(obj){
    var delectPname=obj.parents("tr").html();
    /*获取编辑模态框 的值*/
    /*班级ID*/
    $("#eidit-class-id").val(obj.parents("tr").children("td").eq(0).text())
    /*班级名称*/
    $("#eidit-class-name").val(obj.parents("tr").children("td").eq(2).text())
    /*开课时间*/
    $("#eidit-time-start").val(obj.parents("tr").children("td").eq(5).text())
    /*结课时间*/
    $("#eidit-time-end").val(obj.parents("tr").children("td").eq(6).text())
    /*最大人数*/
    $("#eidit-class-Number").val(obj.parents("tr").children("td").eq(11).text())
    /*班级类别*/
    eiditStyle=$("#eidit-class-Style")
    selectClassesType(eiditStyle);
    /*所属校区*/
    camNameTarget2=$("#eidit-class-School")
    selecClassCampus(camNameTarget2)
    /*课程类型*/
    classStypeId2=$("#eidit-class-Curriculum")
    findClassStype(classStypeId2)
    /*班主任*/
     classAllStaff=$("#eidit-class-Staff")
     findAllStaff(classAllStaff)
     /*讲师*/
     classAllLector=$("#eidit-class-Lector")
    findAllLectorr(classAllLector)

}
/*tianjia 添加 模态框  获取值*/
function myadd(){

    /*班级类别*/
    addStyle=$("#add-class-Style2")
    selectClassesType(addStyle);
    /*所属校区*/
    addCampusId=$("#add-class-School2")
    selecClassCampus(addCampusId)
    /*课程类型*/
    addclassStype2=$("#add-class-Curriculum2")
    findClassStype(addclassStype2)
    /*班主任*/
    addStaffid=$("#add-class-Teacher2")
    findAllStaff(addStaffid)
    /*讲师*/
    addclassAllLector=$("#add-class-Lector2")
    findAllLectorr(addclassAllLector)
    /*教室*/
    addClassesRoom=$("#add-ClassesRoom")
    findAllClassesRoom(addClassesRoom)

}
/*点击 编辑触发的函数*/
function findBun(){
    selectClassesCount();
    findClass(0,mypageSize);
}


function deleteClass(obj){

    /*班级ID*/
    /*alert(obj.parents("tr").children("td").eq(0).text())*/
    $.ajax({
        url: "/deleteClass.action",
        type: "post",
        data:{
            "classesId":obj.parents("tr").children("td").eq(0).text(),
        },
        dataType: "json",
        success: function (successData) {
            if(successData>=1){
                alert("删除成功！")
            }
            findClass(0,mypageSize);

        },
        error: function (e) {
            alert("删除失败！")
        }
    });

}
$(function () {
    /*查找班级数目*/
    selectClassesCount();
    /*页面初始化   查询所有班级信息*/
    findClass(0,mypageSize)
   /* /!*根据表单查询班级*!/
    $("#selectClasses").on("click",{pageCount:'0',pageSize:'7'},findClass)*/
    /*查找课程类型*/
    classStypeId=$("#class-Style")
    findClassStype(classStypeId)
    /*查找班级类型*/
    camNameTarget=$("#class-School")
    selecClassCampus(camNameTarget)
    /*获取班级标签*/
    typeId=$("#class-ClassStyle")
    selectClassesType(typeId);
    /*初始化新增班级模态框*/
    myadd();

})