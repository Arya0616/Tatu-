<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
    <%@ include file="/WEB-INF/jsp/tag.jsp"%>
<html>
  <head>
    <title>My JSP 'ChangePassword.jsp' starting page</title>
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
                <strong class="am-text-primary am-text-lg">运营人员</strong>
                /
                <small>修改密码</small>
            </div>
        </div>
        <hr>


        <form class="am-form am-form-horizontal" id="myForm">
            <div class="am-g am-margin-top">
                <div class="am-u-sm-4 am-u-md-2 am-text-right">旧密码</div>
                <div class="am-u-sm-8 am-u-md-4 ">
                    <input type="password" id="doc-vld-name" minlength="6" maxlength="8" placeholder="请输入密码(6-8位)" name="oldPwd" required>
                </div>
                <div class="am-hide-sm-only am-u-md-6"></div>
            </div>

            <div class="am-g am-margin-top">
                <div class="am-u-sm-4 am-u-md-2 am-text-right">新密码</div>
                <div class="am-u-sm-8 am-u-md-4 ">
                    <input type="password" id="doc-vld-pwd-1" minlength="6" maxlength="8" placeholder="请输入密码(6-8位)" name="opName" required>
                </div>
                <div class="am-hide-sm-only am-u-md-6"></div>
            </div>

            <div class="am-g am-margin-top">
                <div class="am-u-sm-4 am-u-md-2 am-text-right">确认密码</div>
                <div class="am-u-sm-8 am-u-md-4 ">
                    <input type="password" id="doc-vld-pwd-2" minlength="6" maxlength="8" placeholder="请与上面输入的值一致" data-equal-to="#doc-vld-pwd-1" required name="opPwd">
                </div>
                <div class="am-hide-sm-only am-u-md-6"></div>
            </div>


            <div class="am-g am-margin-top">
                <div class="am-form-group">
                    <div class="am-u-sm-10 am-u-sm-offset-2">
                        <button type="submit" class="am-btn am-btn-secondary">提交</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

    <script src="${baseurl}static/public-js/amazeui.min.js"></script>
<script>
$(function () {
        $("#myForm").validate({
          submit:function () {
            var formValidity=this.isFormValid();
            if (formValidity){
                    updatePwd();
            }else{

            }
            <%--阻止原生表单提交--%>
            return false;
        }
    })
})

function updatePwd() {
    $.ajax({
        url:"user/changePwd",
        data:$("#myForm").serialize(),
        dataType:"json",
        type:"POST",
        success:function(data){
            if(data.code==0){
                self.location='user/changePwd/login'; //??
            }else if(data.code==-1){
                alert("密码错误")
            }else{
                alert("修改失败")
            }
        }
    })
}

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
