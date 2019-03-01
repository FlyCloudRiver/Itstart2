
$(function(){

    /*查询所有校区*/
    $.ajax({
        url:"/selectWyCampus.action",
        dataType:"json",
        type:"post",
        success:function(data){
            console.log(data)

            $("#campusName").html("");

            $("#campusName").append("<option>-----请选择-----</option>");

            $.each(data,function(i,n){

                stringline="<option value='"+n+"'>"+n.campusName+"</option>";

                $("#campusName").append(stringline);
            })
        },
        error:function(e){
            alert(e)
        }
    })

    //添加绑定
    $("#add_wy_experienceClass").on("click",addExperienceClasses);

})


//进行查询
$("#wyExperience").on("click",function(){


    console.log($("#campusName option:selected").text()+"---"+$("#lessonDtlName").val()+"---"+$("#teacherStaffName").val());

    var campusName= $("#campusName option:selected").text();
    var lessonDtlName = $("#lessonDtlName").val();
    var teacherStaffName = $("#teacherStaffName").val();

    var jsonString = {"campusName":campusName,"lessonDtlName":lessonDtlName,"teacherStaffName":teacherStaffName};

    $.ajax({
        url:"/getExperienceByPage.action",
        type:"post",
        data:jsonString,
        dataType:"json",
        success:function(data){
            console.log(data);
            console.log(data.length);

            /*清空初始化表格*/
            $("#wy_experieceshow").html(" ");

            /*显示表格数据*/

            $.each(data,function(i,n){

                str="<tr><td>"+n.classes_number+"</td>"+
                    "<td>"+n.campus_name+"</td>"+
                    "<td>"+n.lesson_dtl_name+"</td>"+
                    "<td>"+n.classes_include+"</td>"+
                    "<td>"+n.staff_name+"</td>"+
                    "<td>"+n.classroom_name+"</td>"+
                    "<td><a class='button button-glow button-rounded button-caution button-tiny' data-toggle='modal' data-target='#edit' onclick='openWyModel($(this))'><span id='wy_start_model'>编辑</span></a></td></tr>";

                $("#wy_experieceshow").append(str);
            })


       /* <tr>
            <td>00001</td>
            <td>李太白</td>
            <td>男</td>
            <td>2018-01-01</td>
            <td>2018-01-02</td>
            <td>邀约失败-无人接听</td>
            <td><a class="button button-glow button-rounded button-caution button-tiny" data-toggle="modal" data-target="#edit">
                <span>编 辑</span>
            </a></td>
            </tr>*/

        },
        error:function(e){

            alert("查询无果");
            /*清空数据*/
            $("#wy_experieceshow").html(" ");

        }
    })
})




//加载模态框内部的值
function openWyModel(obj) {
    console.log(9634);

    console.log(obj);
    console.log(obj.parents("tr").children("td").eq(0).text());
    //console.log($("#wy_experieceshow").children().children().val());
   // console.log((obj).parent().prev().children("td").text());

    $("#model_wy_classesNumber").val(obj.parents("tr").children("td").eq(0).text());

    //初始化模态框的校区值
    $.ajax({
        url:"selectWyCampus.action",
        type:"post",
        dataType:"json",
        success:function(data){

            $("#model_Wy_campusName").html("");

            $("#model_Wy_campusName").append("<option value=''>-----请选择-----</option>");

            $.each(data,function(i,n){

                stringline="<option value='"+n.campusId+"'>"+n.campusName+"</option>";

                $("#model_Wy_campusName").append(stringline);
            })
        },
        error:function(e){
           console.log("出错了");
        }

    })

    //初始化模态框的讲师值

    $.ajax({
        url:"selectWyTeacherName.action",
        type:"post",
        dataType:"json",
        success:function(data){
            console.log(data);

            $("#model_wy_teacherName").html("");

            $("#model_wy_teacherName").append("<option value=''>-----请选择-----</option>");

            $.each(data,function(i,n){

                stringline="<option value='"+n.staff_id+"'>"+n.staff_name+"</option>";

                $("#model_wy_teacherName").append(stringline);
            })
        },
        error:function(e){
            console.log("出错了");
        }

    })

    //初始化模态框的上课教室值
    $.ajax({
        url:"selectWyClassroom.action",
        type:"post",
        dataType:"json",
        success:function(data){
            console.log(data);

            $("#model_wy_classroom_name").html("");

            $("#model_wy_classroom_name").append("<option value=''>-----请选择-----</option>");

            $.each(data,function(i,n){

                stringline="<option value='"+n.classroom_id+"'>"+n.classroom_name+"</option>";

                $("#model_wy_classroom_name").append(stringline);
            })
        },
        error:function(e){
            console.log("出错了");
        }

    })


    //提交模态框的更新操作
    
    $("#save_wy_experienceClass").on("click",function(){

        console.log($("#model_Wy_campusName option:selected").val());
        console.log($("#model_wy_teacherName option:selected").val());
        console.log($("#model_wy_classroom_name option:selected").val());

        $.ajax({
            url:"updateWyLesson.action",
            dataType:"text",
            type:"post",
            data:{"campusId":$("#model_Wy_campusName option:selected").val(),
                  "lessonDetail":$("#model_wy_lessonDetal").val(),
                  "classesInclude":$("#model_wy_classesInclude").val(),
                  "teacherId":$("#model_wy_teacherName").val(),
                  "classroomId":$("#model_wy_classroom_name").val(),
                  "classNumber":$("#model_wy_classesNumber").val(),
            },
            success:function(data){

                console.log(data);
                alert("编辑保存成功");
            },
            error:function (e) {
                alert("待操作");
            }
        })
    })
}



//开启添加模态框并初始化一些值
function openAddModalExperience(){

    //初始化下拉列表的值

    //初始化模态框的校区值
    $.ajax({
        url:"selectWyCampus.action",
        type:"post",
        dataType:"json",
        success:function(data){

            $("#add_model_Wy_campusName").html("");

            $("#add_model_Wy_campusName").append("<option value=''>-----请选择-----</option>");

            $.each(data,function(i,n){

                stringline="<option value='"+n.campusId+"'>"+n.campusName+"</option>";

                $("#add_model_Wy_campusName").append(stringline);
            })
        },
        error:function(e){
            console.log("出错了");
        }

    })

    //初始化模态框的讲师值

    $.ajax({
        url:"selectWyTeacherName.action",
        type:"post",
        dataType:"json",
        success:function(data){
            console.log(data);

            $("#add_model_wy_teacherName").html("");

            $("#add_model_wy_teacherName").append("<option value=''>-----请选择-----</option>");

            $.each(data,function(i,n){

                stringline="<option value='"+n.staff_id+"'>"+n.staff_name+"</option>";

                $("#add_model_wy_teacherName").append(stringline);
            })
        },
        error:function(e){
            console.log("出错了");
        }

    })

    //初始化模态框的班主任值

    $.ajax({
        url:"selectWyHeaderTeacherName.action",
        type:"post",
        dataType:"json",
        success:function(data){
            console.log(data);

            $("#add_model_wy_headTeacher_name").html("");

            $("#add_model_wy_headTeacher_name").append("<option value=''>-----请选择-----</option>");

            $.each(data,function(i,n){

                stringline="<option value='"+n.staff_id+"'>"+n.staff_name+"</option>";

                $("#add_model_wy_headTeacher_name").append(stringline);
            })
        },
        error:function(e){
            console.log("出错了");
        }

    })

    //初始化模态框的上课教室值
    $.ajax({
        url:"selectWyClassroom.action",
        type:"post",
        dataType:"json",
        success:function(data){
            console.log(data);

            $("#add_model_wy_classroom_name").html("");

            $("#add_model_wy_classroom_name").append("<option value=''>-----请选择-----</option>");

            $.each(data,function(i,n){

                stringline="<option value='"+n.classroom_id+"'>"+n.classroom_name+"</option>";

                $("#add_model_wy_classroom_name").append(stringline);
            })
        },
        error:function(e){
            console.log("出错了");
        }

    })

}


//添加数据传值
   function addExperienceClasses(){
       console.log($("#add_model_wy_startTime").val());
       console.log($("#add_model_wy_endtTime").val());

       //当结课时间大于开课时间才能通过
       console.log($("#add_model_wy_endtTime").val()>$("#add_model_wy_startTime").val());

       //获取参数
       var campusName = $("#add_model_Wy_campusName option:selected").val();
       var lessonDetal = $("#add_model_wy_lessonDetal").val();
       var classesInclude = $("#add_model_wy_classesInclude").val();
       var teacherName = $("#add_model_wy_teacherName option:selected").val();
       var classroom_name = $("#add_model_wy_classroom_name option:selected").val();
       var classesNumber = $("#add_model_wy_classesNumber").val();
       var headTeacher_name = $("#add_model_wy_headTeacher_name option:selected").val();
       var startTime = $("#add_model_wy_startTime").val();
       var classesHour = $("#add_model_wy_classesHour").val();
       var endTime = $("#add_model_wy_endtTime").val();
       var classesName = $("#add_model_wy_classesName").val();
       var lessonName = $("#add_model_wy_lessonName").val();

       console.log(lessonName);
       console.log(classesHour);
       console.log(headTeacher_name);


       if(campusName==''||lessonDetal==''|| classesInclude==''|| teacherName==''|| classroom_name==''|| classesNumber==''|| headTeacher_name==''|| startTime==''|| classesHour==''|| endTime==''|| classesName==''|| lessonName==''){
           alert("有数据没有填写");
       }else if(startTime>endTime){
           alert("结课时间必须在开课时间之后");
       }else{

           //开始添加数据
           $.ajax({
               url:"addWyExperienceClasses.action",
               dataType:"text",
               type:"post",
               traditional:true,
               data:{
                   "campusId":campusName,
                   "lessonDetail":lessonDetal,
                   "classesInclude":classesInclude,
                   "teacherId":teacherName,
                   "classroomId":classroom_name,
                   "classNumber":classesNumber,
                   "endTime":endTime,
                   "lessonName":lessonName,
                   "lessonHour":classesHour,
                   "startTime":startTime,
                   "headerTeacherId":headTeacher_name,
                   "classesName":classesName,
               },
               success:function(data){

                   alert("添加成功");
               },
               error:function(e){
                   console.log(e);
               }
           })
       }
   }
