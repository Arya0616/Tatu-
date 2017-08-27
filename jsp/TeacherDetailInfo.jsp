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

    <div class="admin-content">
        <!--教师详情-->
        <div class="am-cf am-padding am-padding-bottom-0">
            <div class="am-fl am-cf">
                <strong class="am-text-primary am-text-lg">教师详情</strong>
            </div>
        </div>
        <hr>
        <div class="am-u-sm-12">
            <table class="am-table am-table-bordered am-table-striped am-table-compact am-table-centered">
                <tbody>

                <tr>
                    <td>姓名：
                        <span>${teacherDetail.teacherInfo.name}</span>
                    </td>
                    <td>年龄:
                        <span>${teacherDetail.teacherInfo.age}</span>
                    </td>
                    <td>联系方式:
                        <span>${teacherDetail.teacherInfo.tel}</span>
                    </td>

                    <td rowspan="6" style="width: 160px">
                        <img src="${teacherDetail.teacherInfo.teacherPic}" width="160px;">
                    </td>
                </tr>

                <tr>
                    <td>性别:
                        <span>
                            <% StringBuilder str=new StringBuilder();
                            if(${sex==male}) {str.append("男")};
                            if(${sex==female}) {str.append("女")};
                            %>
                            <%=str%>
                        </span>
                    </td>
                    <td>上课总数：
                        <span>${teacherDetail.teachers.totalClasses}</span>
                    </td>
                    <td>当前学生人数:
                        <span>${teacherDetail.teachers.currentStudents}</span>
                    </td>
                </tr>

                <tr>
                    <td>身份证：
                        <span>${teacherDetail.teacherInfo.identity}</span>
                    </td>
                    <td>教学科目：
                        <span>${teacherDetail.teacherInfo.subject}</span>
                    </td>
                    <td>学历:
                        <span>${teacherDetail.teacherInfo.eduBackground}</span>
                    </td>
                </tr>


                <tr>
                    <td>教学年级：
                        <span>
                            <% StringBuilder str=new StringBuilder();
                            if(${teachGrade==0}) {str.append("小学")};
                            if(${teachGrade==1}) {str.append("初中")};
                            %>
                            <%=str%>
                        </span>
                    </td>
                    <td >课程类型：
                        <span>
                            <% StringBuilder str=new StringBuilder();
                            if(${classType==0}) {str.append("辅导课")};
                            if(${classType==1}) {str.append("教学课")};
                            %>
                            <%=str%>
                        </span>
                    </td>
                    <td >上课地点：
                        <span>××××××××××</span>
                    </td>
                </tr>

                <tr>
                    <td rowspan="2" class="am-text-middle">时薪要求</td>
                    <td colspan="2">教学课:
                        <span>${teacherDetail.teacherInfo.teachPrice}</span>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">辅导课:
                        <span>${teacherDetail.teacherInfo.conseltPrice}</span>
                    </td>
                </tr>

                <tr>
                    <td rowspan="7" class="am-text-middle">上课时间</td>
                    <td colspan="3">星期一：
                        <span>
                            <% StringBuilder str=new StringBuilder();
                            if(${availTime[0]}.morning==true) {str.append("上午")}
                            if(${availTime[0]}.afternoon==true) {str.append("下午")}
                            if(${availTime[0]}.night==true) {str.append("晚上")}
                            %>
                            <%=str%>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">星期二：
                        <span>
                            <% StringBuilder str=new StringBuilder();
                            if(${availTime[1]}.morning==true) {str.append("上午")}
                            if(${availTime[1]}.afternoon==true) {str.append("下午")}
                            if(${availTime[1]}.night==true) {str.append("晚上")}
                            %>
                            <%=str%>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">星期三：
                        <span>
                            <% StringBuilder str=new StringBuilder();
                            if(${availTime[2]}.morning==true) {str.append("上午")}
                            if(${availTime[2]}.afternoon==true) {str.append("下午")}
                            if(${availTime[2]}.night==true) {str.append("晚上")}
                            %>
                            <%=str%>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">星期四：
                        <span>
                            <% StringBuilder str=new StringBuilder();
                            if(${availTime[3]}.morning==true) {str.append("上午")}
                            if(${availTime[3]}.afternoon==true) {str.append("下午")}
                            if(${availTime[3]}.night==true) {str.append("晚上")}
                            %>
                            <%=str%>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">星期五：
                        <span>
                            <% StringBuilder str=new StringBuilder();
                            if(${availTime[4]}.morning==true) {str.append("上午")}
                            if(${availTime[4]}.afternoon==true) {str.append("下午")}
                            if(${availTime[4]}.night==true) {str.append("晚上")}
                            %>
                            <%=str%>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">星期六：
                        <span>
                            <% StringBuilder str=new StringBuilder();
                            if(${availTime[5]}.morning==true) {str.append("上午")}
                            if(${availTime[5]}.afternoon==true) {str.append("下午")}
                            if(${availTime[5]}.night==true) {str.append("晚上")}
                            %>
                            <%=str%>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">星期日：
                        <span>
                            <% String str="";
                            if(${availTime[6]}.morning==true) {str.append("上午")}
                            if(${availTime[6]}.afternoon==true) {str.append("下午")}
                            if(${availTime[6]}.night==true) {str.append("晚上")}
                            %>
                            <%=str%>
                        </span>
                    </td>
                </tr>

                </tbody>
            </table>
        </div>
        <!--名下学生-->
        <div class="am-cf am-padding am-padding-bottom-0">
            <div class="am-fl am-cf">
                <strong class="am-text-primary am-text-lg">名下学生</strong>
            </div>
        </div>
        <hr>
        <div class="am-g" style="margin-top: 30px;">
            <div class="am-u-sm-12">
                <form class="am-form" action="">
                    <table class="am-table am-table-striped am-table-hover table-main">
                        <thead>
                        <tr >
                            <th>姓名</th>
                            <th>年级</th>
                            <th>已上课时数</th>
                            <th>详情</th>
                        </tr>
                        </thead>
                        <tbody id="mylist">
                        <c:forEach var="r" items="${students}">
                        <tr>
                            <td>${r.teacherDetail.students.name}</td>
                            <td>${r.teacherDetail.students.grade}</td>
                            <td>${r.teacherDetail.students.classCount}</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                            <a href="${teacherDetail.students.courseId}">详情</a>
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        </c:forEach>
                        <%--
                        <tr>
                            <td>李四</td>
                            <td>初二</td>
                            <td>18</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                            <a href="ClassDetail.html">详情</a>
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>李四</td>
                            <td>初二</td>
                            <td>18</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                            <a href="ClassDetail.html">详情</a>
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td>李四</td>
                            <td>初二</td>
                            <td>18</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                            <a href="ClassDetail.html">详情</a>
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>李四</td>
                            <td>初二</td>
                            <td>18</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                            <a href="ClassDetail.html">详情</a>
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>李四</td>
                            <td>初二</td>
                            <td>18</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                            <a href="ClassDetail.html">详情</a>
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>李四</td>
                            <td>初二</td>
                            <td>18</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                            <a href="ClassDetail.html">详情</a>
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>李四</td>
                            <td>初二</td>
                            <td>18</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                            <a href="ClassDetail.html">详情</a>
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>李四</td>
                            <td>初二</td>
                            <td>18</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                            <a href="ClassDetail.html">详情</a>
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>李四</td>
                            <td>初二</td>
                            <td>18</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                            <a href="ClassDetail.html">详情</a>
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>李四</td>
                            <td>初二</td>
                            <td>18</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                            <a href="ClassDetail.html">详情</a>
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>李四</td>
                            <td>初二</td>
                            <td>18</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                            <a href="ClassDetail.html">详情</a>
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>李四</td>
                            <td>初二</td>
                            <td>18</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                            <a href="ClassDetail.html">详情</a>
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>李四</td>
                            <td>初二</td>
                            <td>18</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                            <a href="ClassDetail.html">详情</a>
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>李四</td>
                            <td>初二</td>
                            <td>18</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                            <a href="ClassDetail.html">详情</a>
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        --%>
                        </tbody>
                    </table>
                    <div class="am-cf">
                        <div class="am-fr">
                            <ul class="am-pagination" id="pageNum">
                                <%--
                                <li class="am-disabled">
                                    <a href="#">&lt;&lt;</a>
                                </li>
                                <li class="am-active">
                                    <a href="#">1</a>
                                </li>
                                <li>
                                    <a href="#">2</a>
                                </li>
                                <li>
                                    <a href="#">3</a>
                                </li>
                                <li>
                                    <a href="#">&gt;&gt;</a>
                                </li>
                                --%>
                            </ul>
                        </div>
                    </div>
                </form>
            </div>
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
