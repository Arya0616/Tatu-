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
        <div class="am-cf am-padding am-padding-bottom-0">
            <div class="am-fl am-cf">
                <strong class="am-text-primary am-text-lg">投诉详情</strong>
            </div>
        </div>
        <hr>


        <div class="am-g" style="margin-top: 30px;">
            <div class="am-u-sm-12">
                <form class="am-form" action="">
                    <table class="am-table am-table-bordered am-table-striped am-table-compact am-table-centered">
                        <tr>
                            <td>投诉状态：
                                <span>${checkin.complainStatus}</span>
                            </td>
                            <td colspan="2">投诉处理意见：
                                <span>${checkin.handleSuggestion}</span>
                            </td>
                            <td>是否是试课：
                                <span>${checkin.isTryClass}</span>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>开始上课时间：
                                <span>${checkin.startTime}</span>
                            </td>
                            <td>结束上课时间：
                                <span>${checkin.endTime}</span>
                            </td>
                            <td>评价创建时间：
                                <span>${checkin.createTime}</span>
                            </td>
                            <td>课时：
                                <span>${checkin.period}</span>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">投诉反馈：
                                <span>${checkin.feedBack}</span>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">投诉内容：
                                <span>${checkin.studentEvaluate}</span>
                            </td>
                        </tr>

                    </table>
                </form>
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
