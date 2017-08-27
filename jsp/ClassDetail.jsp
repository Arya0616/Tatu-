<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
    <%@ include file="/WEB-INF/jsp/tag.jsp"%>
<html>
  <head>
    <title>tatu教育后台管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" href="${baseurl}static/css/amazeui.min.css">
    <link rel="stylesheet" href="${baseurl}static/css/admin.css">
    <script src="${baseurl}static/public-js/jquery-3.2.1.min.js"></script>
  </head>
  
  <body>
  	 <!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
    以获得更好的体验！</p>
<![endif]-->

<!--topbar-->
    <jsp:include page="header.jsp" flush="true"/>


<div class="am-cf admin-main">
    <!--sidebar-->
    <jsp:include page="left.jsp" flush="true"></jsp:include>

    <%--content--%>
    <div class="admin-content">
        <!--课程详情-->
        <div class="am-cf am-padding am-padding-bottom-0">
            <div class="am-fl am-cf">
                <strong class="am-text-primary am-text-lg">课程详情</strong>
            </div>
        </div>
        <hr>
        <div class="am-u-sm-12">
            <table class="am-table am-table-bordered am-table-striped am-table-compact am-table-centered">
                <tbody>
                    <tr>
                        <td>科目：
                            <span>${courseInfo.subject}</span>
                        </td>
                        <td>周几：
                            <span>${courseInfo.day}</span>
                        </td>
                        <td>上课时间：
                            <span>${courseInfo.timeOfDay}</span>
                        </td>
                        <td>课时数：
                            <span>${courseInfo.period}</span>
                        </td>
                        <td>学生付款课时数：
                            <span>${courseInfo.payClass}</span>
                        </td>
                    </tr>
                    <tr>
                        <td>单价：
                            <span>${courseInfo.price}</span>
                        </td>
                        <td>是否提供试课：
                            <span>${courseInfo.isTryClass}</span>
                        </td>
                        <td>课程类型：
                            <span>${courseInfo.classType}</span>
                        </td>
                        <td>是否关闭：
                            <span>${courseInfo.close}</span>
                        </td>
                        <td>课程建立时间：
                            <span>${courseInfo.createTime}</span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">教学计划：
                            <span>${courseInfo.content}</span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">学生计划：
                            <span>${courseInfo.studyPlan}</span>
                        </td>
                    </tr>


                </tbody>
            </table>
        </div>

        <!--评价详情-->
        <div class="am-cf am-padding am-padding-bottom-0">
            <div class="am-fl am-cf">
                <strong class="am-text-primary am-text-lg">评价详情</strong>
            </div>
        </div>
        <hr>
        <div class="am-u-sm-12">
            <c:forEach var="r" items="${teacherEvaluate}">
            <table class="am-table am-table-bordered am-table-striped am-table-compact am-table-centered">
                <tbody>
                    <tr>
                        <td>课时数</td>
                        <td colspan="4">教师评价</td>
                        <td colspan="5">学生评价</td>
                    </tr>

                    <tr>
                        <td rowspan="4" class="am-text-middle">${r.teacherEvaluate.period}</td>
                        <!--教师评价-->
                        <td>课堂表现</td>
                        <td>领悟力</td>
                        <td>专心程度</td>
                        <td>互动积极性</td>

                        <!--学生评价-->
                        <td>语音语速</td>
                        <td>准时程度</td>
                        <td>亲和力</td>
                        <td>教学态度</td>
                        <td>教学质量</td>
                    </tr>

                    <tr>
                        <td>${r.teacherEvaluate.teacher_eva_line_one}</td>
                        <td>${r.teacherEvaluate.teacher_eva_line_two}</td>
                        <td>${r.teacherEvaluate.teacher_eva_line_three}</td>
                        <td>${r.teacherEvaluate.teacher_eva_line_four}</td>

                        <td>${r.teacherEvaluate.student_eva_line_one}</td>
                        <td>${r.teacherEvaluate.student_eva_line_two}</td>
                        <td>${r.teacherEvaluate.student_eva_line_three}</td>
                        <td>${r.teacherEvaluate.student_eva_line_four}</td>
                        <td>${r.teacherEvaluate.student_eva_line_five}</td>
                    </tr>

                    <tr>
                        <td colspan="4" rowspan="2">评语：
                            <span>${r.teacherEvaluate.teacher_evaluate}</span>
                        </td>
                        <td colspan="5" rowspan="2">评语：
                            <span>${r.teacherEvaluate.student_evaluate}</span>
                        </td>
                    </tr>
                </tbody>
            </table>
            </c:forEach>
        </div>

    </div>
</div>

</div>

    <script src="${baseurl}static/public-js/amazeui.min.js"></script>
<script>
$(function () {
        $(".logout").click(function () {
            var str=confirm("确定要退出账户吗？")
            if(str==true){
                $.ajax({
                    url:"user/logout"
                })
            }else {
                return false
            }
        })
    })
    
</script>
  </body>
</html>
