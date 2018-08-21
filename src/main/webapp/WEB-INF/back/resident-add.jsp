<%--
  Created by IntelliJ IDEA.
  User: L
  Date: 2018/1/8
  Time: 0:11
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
                    <a href="/back/resident/list.do?familyId=${resident.familyId}">家庭成员列表</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li>
                    <i class="icon-user"></i>
                    <a href="#">添加家庭成员</a>
                </li>
            </ul>



            <div class="row-fluid sortable">
                <div class="box span12">
                    <div class="box-header" data-original-title>
                        <h2><i class="halflings-icon white edit"></i><span class="break"></span>新增家庭成员</h2>
                        <div class="box-icon">
                            <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
                            <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                            <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        <form class="form-horizontal" action="/back/resident/add.do">
                            <fieldset>
                                <div class="control-group">
                                    <label class="control-label" >姓名</label>
                                    <div class="controls">
                                        <input class="input-xlarge focused" name="name" type="text" >
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" >年龄</label>
                                    <div class="controls">
                                        <input class="input-xlarge focused" name="age" type="text" >
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" >电话</label>
                                    <div class="controls">
                                        <input class="input-xlarge focused" name="phone" type="text" >
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">家庭编号</label>
                                    <div class="controls">
                                        <input class="input-xlarge focused" name="familyId" type="text" value="${familyId}" readonly="readonly">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" >性别</label>
                                    <div class="controls">
                                        <label class="checkbox">
                                            男<input type="radio" name="gender" value="1" >
                                            &nbsp;
                                            女<input type="radio"  name="gender" value="0">
                                        </label>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" >健康状况</label>
                                    <div class="controls">
                                        <select name="status">
                                            <option value="0">健康</option>
                                            <option value="1">一般</option>
                                            <option value="-1">较差</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" >与户主的关系</label>
                                    <div class="controls">
                                        <select name="relation">
                                            <option value="0">本人</option>
                                            <option value="10">配偶</option>
                                            <option value="20">儿子</option>
                                            <option value="30">女儿</option>
                                            <option value="40">孙子</option>
                                            <option value="50">父亲</option>
                                            <option value="60">母亲</option>
                                            <option value="70">兄弟</option>
                                            <option value="71">姐弟</option>
                                            <option value="80">兄妹</option>
                                            <option value="81">姐妹</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" >备注</label>
                                    <div class="controls">
                                        <textarea tabindex="3" class="input-xlarge span12" name="remark" rows="12" placeholder="添加备注信息：如过往病史，过敏药物等"></textarea>
                                    </div>
                                </div>

                                <div class="form-actions">
                                    <button type="submit" class="btn btn-primary">保存</button>
                                    <button class="btn">取消</button>
                                </div>
                            </fieldset>
                        </form>

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
