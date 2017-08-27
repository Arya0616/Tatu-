<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


    <%--sidebar--%>
    <div class="admin-sidebar am-offcanvas" id="admin-offcanvas" style="overflow: hidden">
        <div class="am-offcanvas-bar admin-offcanvas-bar" style="overflow: hidden;">
            <ul class="am-list admin-sidebar-list">
                <%--教学管理--%>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav'}">
                        <span class="am-icon-home"></span>
                        &nbsp;教学管理
                        <span class="am-icon-angle-right am-fr am-margin-right"></span>
                    </a>
                    <ul class="am-list admin-sidebar-sub am-collapse " id="collapse-nav">
                        <li>
                            <a href="/tatuedu/teacherManagement/teacherListView">
                                <span class="am-icon-list"></span>
                                &nbsp;教师列表
                            </a>
                        </li>
                        <li>
                            <a href="/tatuedu/teacherManagement/complaintView">
                                <span class="am-icon-comment"></span>
                                &nbsp;投诉查看
                            </a>
                        </li>
                        <li class="admin-parent">
                            <a class="am-cf" data-am-collapse="{target: '#collapse-nav3'}">
                                <span class="am-icon-check-circle"></span>
                                &nbsp;教师信息审核
                                <span class="am-icon-angle-right am-fr am-margin-right"></span>
                            </a>
                            <ul class="am-list admin-sidebar-sub am-collapse " id="collapse-nav3">
                                <li>
                                    <a href="TeacherExamined.jsp">
                                        <span class="am-icon-check"></span>
                                        &nbsp;已审核
                                    </a>
                                </li>
                                <li>
                                    <a href="TeacherNotExamined.jsp">
                                        <span class="am-icon-circle-o"></span>
                                        &nbsp;未审核
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>

                <%--我的账户--%>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav4'}">
                        <span class="am-icon-user"></span>
                        &nbsp;我的账户
                        <span class="am-icon-angle-right am-fr am-margin-right"></span>
                    </a>
                    <ul class="am-list admin-sidebar-sub am-collapse " id="collapse-nav4">
                        <li>
                            <a href="/tatuedu/user/changePasswordView">
                                <span class="am-icon-unlock"></span>
                                &nbsp;修改密码
                            </a>
                        </li>
                        <li>
                            <a href="" class="logout">
                                <span class="am-icon-sign-out"></span>
                                &nbsp;注销
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
