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

<!--content-->

<div class="am-cf admin-main">
    <%--sidebar--%>
    <div class="admin-content">
        <div style="width: 55%;margin: 10% auto;">
            <form class="am-form am-form-horizontal" method="post" id="myForm" style="width:55%;margin:0 auto;border: 1px solid #E0E0E0; padding:40px 0;">

                <h1 style="text-align: center">登录</h1>
                <div class="am-form-group">
                    <label for="" class="am-u-sm-2 am-form-label" style="width: 25%">用户名</label>
                    <div class="am-u-sm-10" style="width: 75%">
                        <input type="text" id="" minlength="2" placeholder="请输入用户名（至少 2 个字符）" required name="">
                    </div>
                </div>

                <div class="am-form-group">
                    <label for="" class="am-u-sm-2 am-form-label" style="width: 25%">密码</label>
                    <div class="am-u-sm-10" style="width: 75%">
                        <input type="password" id="" minlength="6" maxlength="8" placeholder="请输入密码" required name="">
                    </div>
                </div>

                <div class="am-form-group">
                    <div class="am-u-sm-10 " style="margin-left: 180px;">
                        <input type="submit" value="登录" class=" am-u-sm-5 am-btn am-btn-default" ></input>
                        <input type="reset" value="重置" class=" am-u-sm-5 am-btn am-btn-default" ></input>
                    </div>
                </div>

            </form>
        </div>
    </div>
</div>


<script src="${baseurl}static/public-js/amazeui.min.js"></script>
<script type="text/javascript">
    $(function(){
//表单验证
        $("#myForm").validate({
            submit : function() {
                var formValidity = this.isFormValid();
                if (formValidity) {
                    login();
                } else {
                    alert("失败");
                    // 验证失败的逻辑
                }
                //阻止原生form提交
                return false;
            }
        });
        function login(){
            $.ajax({
                url: "web/op/log",
                data:$("#myForm").serialize(),
                dataType: "json",
                type: "POST",
                success: function(data){
                    if(data.code==0){
                        self.location='TeachManagement.jsp';
                    }else if(data.code==1){
                        alert("登录失败");
                    }else{
                        alert(-1);
                    }
                }
            })
        }


    })
</script>    
</body>
</html>
