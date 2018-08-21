<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2018/1/7
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<head>

    <!-- start: Meta -->
    <meta charset="utf-8">
    <title>Bootstrap Metro Dashboard by Dennis Ji for ARM demo</title>
    <meta name="description" content="Bootstrap Metro Dashboard">
    <meta name="author" content="Dennis Ji">
    <meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <!-- end: Meta -->

    <!-- start: Mobile Specific -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- end: Mobile Specific -->

    <!-- start: CSS -->
    <link id="bootstrap-style" href="<%=basePath %>css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath %>css/bootstrap-responsive.min.css" rel="stylesheet">
    <link id="base-style" href="<%=basePath %>css/style.css" rel="stylesheet">
    <link id="base-style-responsive" href="<%=basePath %>css/style-responsive.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
    <!-- end: CSS -->


    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <link id="ie-style" href="<%=basePath %>css/ie.css" rel="stylesheet">
    <![endif]-->

    <!--[if IE 9]>
    <link id="ie9style" href="<%=basePath %>css/ie9.css" rel="stylesheet">
    <![endif]-->

    <!-- start: Favicon -->
    <link rel="shortcut icon" href="<%=basePath %>img/favicon.ico">
    <!-- end: Favicon -->




</head>

<body>
<!-- start: Header -->
<div class="navbar">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="/back/page/index.do"><span>社区医疗后台管理系统</span></a>

            <!-- start: Header Menu -->
            <div class="nav-no-collapse header-nav">
                <ul class="nav pull-right">

                    <!-- start: Notifications Dropdown -->

                    <!-- end: Notifications Dropdown -->
                    <!-- start: Message Dropdown -->


                    <!-- start: User Dropdown -->
                    <li class="dropdown">
                        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="halflings-icon white user"></i> 管理员
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-menu-title">
                                <span>Account Settings</span>
                            </li>
                            <li><a href="/user/logout.do"><i class="halflings-icon off"></i>登出</a></li>
                        </ul>
                    </li>
                    <!-- end: User Dropdown -->
                </ul>
            </div>
            <!-- end: Header Menu -->

        </div>
    </div>
</div>
<!-- start: Header -->

<div class="container-fluid-full">
    <div class="row-fluid">

        <!-- start: Main Menu -->
        <div id="sidebar-left" class="span2">
            <div class="nav-collapse sidebar-nav">

            </div>
        </div>
        <!-- end: Main Menu -->

        <noscript>
            <div class="alert alert-block span10">
                <h4 class="alert-heading">Warning!</h4>
                <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
            </div>
        </noscript>

        <!-- start: Content -->
        <div id="content" class="span10">


            <ul class="breadcrumb">
                <li>
                    <i class="icon-home"></i>
                    <a href="/back/page/index.do">主页</a>
                    <i class="icon-angle-right"></i>
                </li>

                <li>
                    <i class="icon-envelope"></i>
                    <a href="#">信息列表</a>
                </li>
            </ul>

            <div class="row-fluid">

                <div class="span7">
                    <h1>咨询来信</h1>

                    <h3>
                        <i class="icon-star"></i>表示未读    <i class="icon-star-empty"></i>表示已读
                    </h3>

                    <ul class="messagesList">
                        <c:forEach items="${pageInfo.list}" var="consult">

                            <li >
                                <span class="from"><span <c:choose>
                                    <c:when test="${consult.status==0}">
                                        class="glyphicons star"
                                    </c:when>
                                    <c:otherwise>
                                        class="glyphicons dislikes"
                                    </c:otherwise>
                                </c:choose>><i></i></span> ${consult.name} </span><span class="title"> <a href="/back/page/messages.do?id=${consult.id}">点击查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-trash"></i><a href="/back/mail/delete.do?id=${consult.id}">删除</a></span><span class="date">收件时间：<fmt:formatDate value="${consult.time}" type="both"/></span>
                            </li>

                        </c:forEach>

                        <div >

                                <!-- 上页按钮，跳转到上一页 -->

                                    <a  <c:if test="${pageInfo.hasPreviousPage}">href="/back/page/messages.do?pageNum=${pageInfo.prePage}" </c:if>>上一页</a>


                                    <c:forEach begin="1" end="${pageInfo.pages}" var="pageIndex" step="1">

                                            <a href="/back/page/messages.do?pageNum=${pageIndex}">${pageIndex}</a>

                                    </c:forEach>

                                    <!-- 下页按钮，跳转到下一页 -->
                                    <a  <c:if test="${pageInfo.hasNextPage}">href="/back/page/messages.do?pageNum=${pageInfo.nextPage}"</c:if>>下一页</a>

                        </div>

                    </ul>
                    <div class="common-modal modal fade" id="common-Modal1" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-content">
                            <ul class="list-inline item-details">
                                <li><a href="#">Admin templates</a></li>
                                <li><a href="http://themescloud.org">Bootstrap themes</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="span5 noMarginLeft">

                    <div class="message dark">

                        <c:if test="${consult.id!=null}">
                            <div class="header">
                                <h1>详细信息</h1>
                                <div class="from"><i class="halflings-icon user"></i> <b>咨询人：${consult.name}</b>  /   邮箱：${consult.mail}   /  电话：${consult.phone}</div>
                                <div class="date"><i class="halflings-icon time"></i><fmt:formatDate value="${consult.time}" type="both"/></div>
                                <div class="menu"></div>
                            </div>
                            <div class="content">
                                <p>
                                        ${consult.msg}
                                </p>
                            </div>
                        <form class="replyForm"method="post" action="/back/mail/send.do">

                            <fieldset>

                                <input type="hidden" name="toMail" value="${consult.mail}" >
                                <input type="hidden" name="toName" value="${consult.name}" >

                                <textarea tabindex="3" class="input-xlarge span12" name="content" name="body" rows="12" placeholder="点击输入回复内容"></textarea>

                                <div class="actions">

                                    <button tabindex="3" type="submit" class="btn btn-success">回复邮件</button>

                                </div>

                            </fieldset>

                        </form>
                        </c:if>
                    </div>

                </div>

            </div>



        </div><!--/.fluid-container-->

        <!-- end: Content -->
    </div><!--/#content.span10-->
</div><!--/fluid-row-->

<div class="modal hide fade" id="myModal">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h3>Settings</h3>
    </div>
    <div class="modal-body">
        <p>Here settings can be configured...</p>
    </div>
    <div class="modal-footer">
        <a href="#" class="btn" data-dismiss="modal">Close</a>
        <a href="#" class="btn btn-primary">Save changes</a>
    </div>
</div>

<div class="clearfix"></div>

<footer>



</footer>

<!-- start: JavaScript-->

<script src="<%=basePath %>js/jquery-1.9.1.min.js"></script>
<script src="<%=basePath %>js/jquery-migrate-1.0.0.min.js"></script>

<script src="<%=basePath %>js/jquery-ui-1.10.0.custom.min.js"></script>

<script src="<%=basePath %>js/jquery.ui.touch-punch.js"></script>

<script src="<%=basePath %>js/modernizr.js"></script>

<script src="<%=basePath %>js/bootstrap.min.js"></script>

<script src="<%=basePath %>js/jquery.cookie.js"></script>

<script src='<%=basePath %>js/fullcalendar.min.js'></script>

<script src='<%=basePath %>js/jquery.dataTables.min.js'></script>

<script src="<%=basePath %>js/excanvas.js"></script>
<script src="<%=basePath %>js/jquery.flot.js"></script>
<script src="<%=basePath %>js/jquery.flot.pie.js"></script>
<script src="<%=basePath %>js/jquery.flot.stack.js"></script>
<script src="<%=basePath %>js/jquery.flot.resize.min.js"></script>

<script src="<%=basePath %>js/jquery.chosen.min.js"></script>

<script src="<%=basePath %>js/jquery.uniform.min.js"></script>

<script src="<%=basePath %>js/jquery.cleditor.min.js"></script>

<script src="<%=basePath %>js/jquery.noty.js"></script>

<script src="<%=basePath %>js/jquery.elfinder.min.js"></script>

<script src="<%=basePath %>js/jquery.raty.min.js"></script>

<script src="<%=basePath %>js/jquery.iphone.toggle.js"></script>

<script src="<%=basePath %>js/jquery.uploadify-3.1.min.js"></script>

<script src="<%=basePath %>js/jquery.gritter.min.js"></script>

<script src="<%=basePath %>js/jquery.imagesloaded.js"></script>

<script src="<%=basePath %>js/jquery.masonry.min.js"></script>

<script src="<%=basePath %>js/jquery.knob.modified.js"></script>

<script src="<%=basePath %>js/jquery.sparkline.min.js"></script>

<script src="<%=basePath %>js/counter.js"></script>

<script src="<%=basePath %>js/retina.js"></script>

<script src="<%=basePath %>js/custom.js"></script>
<!-- end: JavaScript-->

</body>

</html>
