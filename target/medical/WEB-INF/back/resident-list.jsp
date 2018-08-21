<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2018/1/8
  Time: 0:55
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
                    <i class="icon-home"></i>
                    <a href="/back/page/family.do">家庭列表</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <i class="icon-user"></i>
                    <a href="#">家庭成员列表</a>
                </li>
            </ul>

            <div class="row-fluid sortable">
                <div class="box span12">
                    <div class="box-header" data-original-title>
                        <h2><i class="halflings-icon white user"></i><span class="break"></span>家庭成员列表</h2>
                        <div class="box-icon">
                            <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
                            <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                            <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        <table class="table table-striped table-bordered bootstrap-datatable datatable">
                            <thead>
                            <tr>
                                <th>姓名</th>
                                <th>年龄</th>
                                <th>性别</th>
                                <th>与户主关系</th>
                                <th>健康状态</th>
                                <th>联系电话</th>
                                <th>备注</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${residents}" var="resident">
                                <tr>
                                    <td>${resident.name}</td>
                                    <td class="center">${resident.age}</td>
                                    <td class="center">
                                        <c:choose>
                                            <c:when test="${resident.gender==0}">
                                                女性
                                            </c:when>
                                            <c:otherwise>
                                                男性
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td class="center">
                                        <c:choose>
                                            <c:when test="${resident.relation==0}">
                                                户主
                                            </c:when>
                                            <c:when test="${resident.relation==10}">
                                                配偶
                                            </c:when>
                                            <c:when test="${resident.relation==20}">
                                                儿子
                                            </c:when>
                                            <c:when test="${resident.relation==30}">
                                                女儿
                                            </c:when>
                                            <c:when test="${resident.relation==40}">
                                                孙子
                                            </c:when>
                                            <c:when test="${resident.relation==50}">
                                                父亲
                                            </c:when>
                                            <c:when test="${resident.relation==60}">
                                                母亲
                                            </c:when>
                                            <c:when test="${resident.relation==70}">
                                                兄弟
                                            </c:when>
                                            <c:when test="${resident.relation==71}">
                                                姐弟
                                            </c:when>
                                            <c:when test="${resident.relation==80}">
                                                兄妹
                                            </c:when>
                                            <c:when test="${resident.relation==81}">
                                                姐妹
                                            </c:when>
                                            <c:otherwise>
                                                迁出或死亡
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td class="center">
                                        <c:choose>
                                            <c:when test="${resident.status==0}">
                                                <span class="label label-success">健康</span>
                                            </c:when>
                                            <c:when test="${resident.status==1}">
                                                <span class="label label-warning">一般</span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="label label-important">较差</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td class="center">${resident.phone}</td>
                                    <td class="center">${resident.remark}</td>
                                    <td class="center">
                                        <a class="btn btn-info" href="/back/resident/modifyPage.do?id=${resident.id}">
                                            <i class="halflings-icon white edit"></i>
                                        </a>
                                        <a class="btn btn-danger" href="/back/resident/delete.do?id=${resident.id}&familyId=${resident.familyId}">
                                            <i class="halflings-icon white trash"></i>
                                        </a>
                                    </td>
                                </tr>

                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div><!--/span-->

            </div><!--/row-->
            <div class="row-fluid">
                <div class="box blue span12">
                    <div class="box-header">
                        <h2><i class="halflings-icon white white hand-top"></i><span class="break"></span>Quick Buttons</h2>
                    </div>
                    <div class="box-content">

                        <a class="quick-button span2" href="/back/resident/addPage.do?familyId=${familyId}">
                            <i class="icon-group"></i>
                            <p>添加家庭成员</p>
                        </a>
                        <a class="quick-button span2" href="/back/record/addPage.do?familyId=${familyId}">
                            <i class="icon-edit"></i>
                            <p>添加个人病历</p>
                        </a>
                        <a class="quick-button span2" href="/back/record/list.do?familyId=${familyId}">
                            <i class="icon-search"></i>
                            <p>查看家庭病历</p>
                        </a>

                        <div class="clearfix"></div>
                    </div>
                </div><!--/span-->

            </div><!--/row-->

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
<div class="common-modal modal fade" id="common-Modal1" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <ul class="list-inline item-details">
            <li><a href="#">Admin templates</a></li>
            <li><a href="http://themescloud.org">Bootstrap themes</a></li>
        </ul>
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
