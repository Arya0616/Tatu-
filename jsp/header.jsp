<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

    <%--header--%>
    <header class="am-topbar am-topbar-inverse admin-header">
        <div class="am-topbar-brand">
            <a href="TeachManagement.jsp"><strong>TaTu课堂</strong></a>
            <small>后台管理系统</small>
        </div>
    </header>