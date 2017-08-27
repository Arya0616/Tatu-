
function list(pageNum) {

    $.ajax({
        url:"teacherManagement/teacherExaminedInfo",
        data:{
            pageNum:pageNum,
            isExamined:isExamined
        },
        dataType:"json",
        type:"post",
        success:function (data) {
            //if未写全
            if(){
                var info=data.data; //mark
                var cont;
                $.each(info,function (i,sinfo) {
                    cont+="<tr>";
                    cont+="<td>"+sinfo.name+"</td>";
                    cont+="<td>"+sinfo.sex+"</td>";
                    cont+="<td>"+sinfo.age+"</td>";
                    cont+="<td>";
                    cont+="<div class='am-btn-toolbar'>";
                    cont+="<div class='am-btn-group am-btn-group-xs'>";
                    cont+="<button class='am-btn am-btn-default am-btn-xs am-text-secondary'>" +
                        "<a href='teacherManagement/teacherExaminedInfo?teacherId="+sinfo.teacherId+"'>详情</a></button>";
                    cont+="</div></div></td></tr>";
                });
                $("#mylist").html(cont);


                var cont1="<li><a href='javascript:list(1);'>«</a></li>";
                for(var i=1;i<data.page.totalPage;i++){
                    if(i==data.page.pageNum){
                        cont1+="<li class='am-active'><a href='javascript:list(\""+i+"\");'>"+i+"</a></li>";
                    }else{
                        cont1+="<li><a href='javascript:list(\""+i+ "\");'>"+i+"</a></li>";
                    }
                }
                cont1+="<li><a href='javascript:list(\""+data.page.totalPage+ "\");'>»</a></li>";
                $("#pageNum").html(cont1);
            }else if() {
                //未写全
            }else if() {

            }
                }
    })
}




