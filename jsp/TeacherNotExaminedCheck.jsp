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

    <!--content-->
    <div class="admin-content ">
        <!--基本信息-->
        <div class="am-cf am-padding am-padding-bottom-0">
            <div class="am-fl am-cf">
                <strong class="am-text-primary am-text-lg">基本信息</strong>
            </div>
        </div>
        <hr>
        <div class="am-u-sm-12">
            <table class="am-table am-table-bordered am-table-striped am-table-compact am-table-centered">
                <tbody>
                <tr>
                    <td>姓名：
                        <span>${teacherInfo.name}</span>
                    </td>
                    <td>联系方式:
                        <span>${teacherInfo.tel}</span>
                    </td>
                    <td>性别:
                        <span>${teacherInfo.sex}</span>
                    </td>
                </tr>

                <tr>
                    <td>年龄:
                        <span>${teacherInfo.age}</span>
                    </td>
                    <td>身份证：
                        <span>${teacherInfo.identity}</span>
                    </td>

                    <td>上课地点：
                        <span>50</span>
                    </td>
                </tr>

                <tr>
                    <td>教学科目：
                        <span>${teacherInfo.subject}</span>
                    </td>
                    <td colspan="2">学历:
                        <span>${teacherInfo.eduBackground}</span>
                    </td>
                </tr>

                <tr>
                    <td>教学年级：
                        <span>${teacherInfo.teachGrade}</span>
                    </td>
                    <td >课程类型：
                        <span>${teacherInfo.classType}</span>
                    </td>
                </tr>

                <tr>
                    <td>审核状态：
                        <span>${teacherInfo.status}</span>
                    </td>
                    <td colspan="2">拒审原因：
                        <span>.........................</span>
                    </td>
                </tr>

                <tr>
                    <td rowspan="2" class="am-text-middle">时薪要求</td>
                    <td colspan="2">教学课:
                        <span>${teacherInfo.teachPrice}</span>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">辅导课:
                        <span>${teacherInfo.conseltPrice}</span>
                    </td>
                </tr>

                <tr>
                    <td rowspan="7" class="am-text-middle">上课时间</td>
                    <td colspan="3">星期一：
                        <span>
                        	<% String str="";
                        		if(availTime[0].morning==true) {str.append("早上");}
                        		if(availTime[0].afternoon==true) {str.append("中午");}
                        		if(availTime[0].night==true) {str.append("晚上");}
                        		if(str.equals("")) {str.append("无");}
                        	 %>
                        	 <%=str%>
                        </span>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="3">星期二：
                        <span>
                        	<% String str="";
                        		if(availTime[1].morning==true) {str.append("早上");}
                        		if(availTime[1].afternoon==true) {str.append("中午");}
                        		if(availTime[1].night==true) {str.append("晚上");}
                        		if(str.equals("")) {str.append("无");}
                        	 %>
                        	 <%=str%>
                        </span>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="3">星期三：
                        <span>
                        	<% String str="";
                        		if(availTime[2].morning==true) {str.append("早上");}
                        		if(availTime[2].afternoon==true) {str.append("中午");}
                        		if(availTime[2].night==true) {str.append("晚上");}
                        		if(str.equals("")) {str.append("无");}
                        	 %>
                        	 <%=str%>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">星期四：
                        <span>
                        	<% String str="";
                        		if(availTime[3].morning==true) {str.append("早上");}
                        		if(availTime[3].afternoon==true) {str.append("中午");}
                        		if(availTime[3].night==true) {str.append("晚上");}
                        		if(str.equals("")) {str.append("无");}
                        	 %>
                        	 <%=str%>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">星期五：
                        <span>
                        	<% String str="";
                        		if(availTime[4].morning==true) {str.append("早上");}
                        		if(availTime[4].afternoon==true) {str.append("中午");}
                        		if(availTime[4].night==true) {str.append("晚上");}
                        		if(str.equals("")) {str.append("无");}
                        	 %>
                        	 <%=str%>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">星期六：
                        <span>
                        	<% String str="";
                        		if(availTime[5].morning==true) {str.append("早上");}
                        		if(availTime[5].afternoon==true) {str.append("中午");}
                        		if(availTime[5].night==true) {str.append("晚上");}
                        		if(str.equals("")) {str.append("无");}
                        	 %>
                        	 <%=str%>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">星期日：
                        <span>
                        	<% String str="";
                        		if(availTime[6].morning==true) {str.append("早上");}
                        		if(availTime[6].afternoon==true) {str.append("中午");}
                        		if(availTime[6].night==true) {str.append("晚上");}
                        		if(str.equals("")) {str.append("无");}
                        	 %>
                        	 <%=str%>
                        </span>
                    </td>
                </tr>

                </tbody>
            </table>
        </div>

        <!--照片审核-->
        <div class="am-cf am-padding am-padding-bottom-0">
            <div class="am-fl am-cf">
                <strong class="am-text-primary am-text-lg">照片审核</strong>
            </div>
        </div>
        <hr>

        <div class="am-u-sm-12">
            <table class="am-table am-table-bordered am-table-striped am-table-compact am-table-centered">
                <tbody>
                <tr>
                    <td class="am-text-middle" height="200px;" width="40%">学历证明图片</td>
                    <td height="200px;">
                        <img src="" alt="">
                    </td>
                </tr>
                <tr>
                    <td class="am-text-middle" height="200px;" width="40%">身份证正面</td>
                    <td height="200px;">
                        <img src="" alt="">
                    </td>
                </tr>
                <tr>
                    <td class="am-text-middle" height="200px;" width="40%">身份证背面</td>
                    <td height="200px;">
                        <img src="" alt="">
                    </td>
                </tr>
                <tr>
                    <td class="am-text-middle" height="200px;" width="40%">教师资格证图片</td>
                    <td height="200px;">
                        <img src="" alt="">
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

        <!--进行审核-->
        <div class="am-form-group" style="margin-left: 380px;">
            <label for="reject" class="am-fl am-form-label">拒绝理由：</label>
            <div class="am-u-sm-9">
                <input type="text" id="reject" style="width: 400px;">
            </div>
        </div>
        <span class="am-input-group-btn" >
                <button class="am-btn am-btn-success" type="button" style="margin: 0px 100px 40px 550px;">通过</button>
                <button class="am-btn am-btn-danger" type="button" style="margin-top: 0px;margin-bottom: 40px;">拒绝</button>
        </span>

    </div>

</div>

<script src="${baseurl}static/public-js/amazeui.min.js"></script>
<script>
    $(document).ready(function () {
        $("#pass").click(function () {
            $.ajax({
                url:"teacherManagement/teacherExamine",
                data:{
                teacherId:teacherId,
                status:status,
                rejectReason:rejectReason
                },
                dataType:"json",
                type:"POST",
                success:function () {
                self.location=""
                }
            })
        });


    $("#reject").click(function () {
            $.ajax({
                url:"teacherManagement/teacherExamine",
                data:{
                teacherId:teacherId,
                status:status,
                rejectReason:rejectReason
                },
                dataType:"json",
                type:"POST",
                success:function () {
                self.location=""
                }
            })
        })
        
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
