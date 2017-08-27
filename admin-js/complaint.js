
function list(pageNum) {

    $.ajax({
        url:"classDetail/complain",
        data:{
            pageNum:pageNum
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
                    cont+="<td>"+sinfo.complainStatus+"</td>";
                    cont+="<td>"+sinfo.teacherName+"</td>";
                    cont+="<td>"+sinfo.studentName+"</td>";
                    cont+="<td>"+sinfo.time(startTime)+"</td>";
                    cont+="<td>"+sinfo.time(endTime)+"</td>";
                    cont+="<td>";
                    cont+="<div class='am-btn-toolbar'>";
                    cont+="<div class='am-btn-group am-btn-group-xs'>";
                    cont+="<button class='am-btn am-btn-default am-btn-xs am-text-secondary'>" +
                        "<a href='classDetail/complainDetail?evaluateId="+sinfo.evaluateId+"'>详情</a></button>";
                    cont+="</div></div></td></tr>";
                });

                $("#complainList").html(cont);


                var cont1="<li><a href='javascript:list(1);'>«</a></li>";
                for(var i=1;i<data.page.totalPage;i++){
                    if(){
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

function time(classTime) {
    var date = new Date();
    Y = date.getFullYear() + '-';
    M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
    D = date.getDate() + ' ';
    h = date.getHours() + ':';
    m = date.getMinutes() + ':';
    s = date.getSeconds();

    return Y+M+D+h+m+s;
}