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
    <div class="admin-content">
        <div class="am-cf am-padding am-padding-bottom-0">
            <div class="am-fl am-cf">
                <strong class="am-text-primary am-text-lg">基本信息</strong>
            </div>
        </div>
        <hr>

        <div class="am-input-group am-input-group-sm" style="margin-left: 1000px;">
            <input type="text" class="am-form-field">
            <span class="am-input-group-btn">
                <button class="am-btn am-btn-default" type="button" >搜索</button>
            </span>
        </div>

        <div class="am-g" style="margin-top: 30px;">
            <div class="am-u-sm-12">
                <form class="am-form">
                    <table class="am-table am-table-striped am-table-hover table-main">
                        <thead>
                        <tr>
                            <th>姓名</th>
                            <th>上课总数</th>
                            <th>当前学生人数</th>
                            <th>详情</th>
                        </tr>
                        </thead>
                        <tbody id="mylist">
                            <%--
                            <tr>
                                <td>张三</td>
                                <td>25</td>
                                <td>30</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                <a href="TeacherDetailInfo.jsp">详情</a>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>张三</td>
                                <td>25</td>
                                <td>30</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                <a href="TeacherDetailInfo.jsp">详情</a>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>张三</td>
                                <td>25</td>
                                <td>30</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                <a href="TeacherDetailInfo.jsp">详情</a>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>张三</td>
                                <td>25</td>
                                <td>30</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                <a href="TeacherDetailInfo.jsp">详情</a>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>张三</td>
                                <td>25</td>
                                <td>30</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                <a href="TeacherDetailInfo.jsp">详情</a>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>张三</td>
                                <td>25</td>
                                <td>30</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                <a href="TeacherDetailInfo.jsp">详情</a>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                            </tr><tr>
                                <td>张三</td>
                                <td>25</td>
                                <td>30</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                <a href="TeacherDetailInfo.jsp">详情</a>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>张三</td>
                                <td>25</td>
                                <td>30</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                <a href="TeacherDetailInfo.jsp">详情</a>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>张三</td>
                                <td>25</td>
                                <td>30</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                <a href="TeacherDetailInfo.jsp">详情</a>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>张三</td>
                                <td>25</td>
                                <td>30</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                <a href="TeacherDetailInfo.jsp">详情</a>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>张三</td>
                                <td>25</td>
                                <td>30</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                <a href="TeacherDetailInfo.jsp">详情</a>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>张三</td>
                                <td>25</td>
                                <td>30</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                <a href="TeacherDetailInfo.jsp">详情</a>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>张三</td>
                                <td>25</td>
                                <td>30</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                <a href="TeacherDetailInfo.jsp">详情</a>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>张三</td>
                                <td>25</td>
                                <td>30</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                <a href="TeacherDetailInfo.jsp">详情</a>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>张三</td>
                                <td>25</td>
                                <td>30</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                <a href="TeacherDetailInfo.jsp">详情</a>
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

<script src="${baseurl}static/public-js/amazeui.min.js"></script>
<script src="${baseurl}static/admin-js/TeachList.js"></script>
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
