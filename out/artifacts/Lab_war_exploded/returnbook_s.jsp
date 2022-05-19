<%@ page import="entity.book" %><%--
  Created by IntelliJ IDEA.
  User: 杨
  Date: 2022/3/17
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>


<html lang="en">

<head>
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">

    <meta charset="utf-8" />

    <title>还书 </title>



    <meta name="viewport" content="width=device-width, initial-scale=1.0" />



    <!-- basic styles -->



    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/3.2.1/css/font-awesome.min.css">



    <!--[if IE 7]>

    <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />

    <![endif]-->



    <!-- page specific plugin styles -->



    <link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.custom.min.css" />

    <link rel="stylesheet" href="assets/css/jquery.gritter.css" />

    <link rel="stylesheet" href="assets/css/select2.css" />

    <link rel="stylesheet" href="assets/css/bootstrap-editable.css" />



    <!-- fonts -->







    <!-- ace styles -->



    <link rel="stylesheet" href="assets/css/ace.min.css" />

    <link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

    <link rel="stylesheet" href="assets/css/ace-skins.min.css" />



    <!--[if lte IE 8]>

    <link rel="stylesheet" href="assets/css/ace-ie.min.css" />

    <![endif]-->



    <!-- inline styles related to this page -->



    <!-- ace settings handler -->



    <script src="assets/js/ace-extra.min.js"></script>



    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->



    <!--[if lt IE 9]>

    <script src="assets/js/html5shiv.js"></script>

    <script src="assets/js/respond.min.js"></script>

    <![endif]-->

</head>



<body>

<%
    String Sname = String.valueOf(session.getAttribute("Sname"));
    book book = (book) request.getAttribute("book");
    int Rno = (int)request.getAttribute("Rno");
%>

<div class="navbar navbar-default" id="navbar">

    <script type="text/javascript">

        try{ace.settings.check('navbar' , 'fixed')}catch(e){}

    </script>



    <div class="navbar-container" id="navbar-container">

        <div class="navbar-header pull-left">

            <a href="SqueryindexServlet" class="navbar-brand">

                <small>

                    <i class="fa fa-graduation-cap"></i>

                    图书馆管理系统

                </small>

            </a><!-- /.brand -->

        </div><!-- /.navbar-header -->



        <div class="navbar-header pull-right" role="navigation">

            <ul class="nav ace-nav">



                <li class="light-blue">

                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">

                        <img class="nav-user-photo" src="assets/avatars/user.jpg" alt="Jason's Photo" />

                        <span class="user-info">

									<small>Welcome,</small>

									<%=Sname%>

								</span>



                        <i class="icon-caret-down"></i>

                    </a>



                    <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">

                        <li>

                            <a href="#">

                                <i class="icon-cog"></i>

                                Settings

                            </a>

                        </li>



                        <li class="divider"></li>



                        <li>

                            <a href="removesessionServlet">

                                <i class="icon-off"></i>

                                Logout

                            </a>

                        </li>

                    </ul>

                </li>

            </ul><!-- /.ace-nav -->

        </div><!-- /.navbar-header -->

    </div><!-- /.container -->

</div>



<div class="main-container" id="main-container">

    <script type="text/javascript">

        try{ace.settings.check('main-container' , 'fixed')}catch(e){}

    </script>



    <div class="main-container-inner">

        <a class="menu-toggler" id="menu-toggler" href="#">

            <span class="menu-text"></span>

        </a>



        <div class="sidebar" id="sidebar">

            <script type="text/javascript">

                try{ace.settings.check('sidebar' , 'fixed')}catch(e){}

            </script>


            <ul class="nav nav-list">

                <li class="active">

                    <a href="SqueryindexServlet">

                        <i class="icon-home home-icon"></i>

                        <span class="menu-text"> 首页 </span>

                    </a>

                </li>



                <li>

                    <a href="SqueryallbookServlet">

                        <i class="icon-book"></i>

                        <span class="menu-text"> 书本信息查询</span>

                    </a>

                </li>




                <li>

                    <a href="#" class="dropdown-toggle">

                        <i class="icon-list"></i>

                        <span class="menu-text"> 借阅管理 </span>



                        <b class="arrow icon-angle-down"></b>

                    </a>



                    <ul class="submenu">

                        <li>

                            <a href="borrowbook_s.jsp">

                                <i class="icon-double-angle-right"></i>

                                借书

                            </a>

                        </li>



                        <li>

                            <a href="returnbookindex.jsp">

                                <i class="icon-double-angle-right"></i>

                                还书

                            </a>

                        </li>

                    </ul>

                </li>



                <li>

                    <a href="SqueryrecordingServlet">

                        <i class="icon-list-alt"></i>

                        <span class="menu-text"> 借阅记录管理 </span>

                    </a>

                </li>

            </ul><!-- /.nav-list -->



            <div class="sidebar-collapse" id="sidebar-collapse">

                <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>

            </div>



            <script type="text/javascript">

                try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}

            </script>

        </div>



        <div class="main-content">

            <div class="breadcrumbs" id="breadcrumbs">

                <script type="text/javascript">

                    try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}

                </script>



                <ul class="breadcrumb">

                    <li>

                        <i class="icon-home home-icon"></i>

                        <a href="#">借阅管理</a>

                    </li>

                </ul><!-- .breadcrumb -->


            </div>



            <div class="page-content">

                <div class="row">

                    <div class="col-xs-12">

                        <!-- PAGE CONTENT BEGINS -->

                        <hr />

                        <div class="row">

                            <div class="col-sm-6">

                                <h3 class="header smaller lighter red">书本信息</h3>



                                <div class="well">

                                    <h4 class="green smaller lighter">书名-作者</h4>

                                    《<%=book.getBname()%>》—— <%=book.getBauthor()%>

                                </div>



                                <div class="well well-lg">

                                    <h4 class="blue">所在书架</h4>

                                    <%=book.getBlication()%>

                                </div>

                            </div><!-- /span -->

                            <div style="margin-left:20px;margin-top:155px">
                                <a href="returnbookplusServlet?Rno=<%=Rno%>"><button type="button" class="am-btn am-btn-warning" style="width: 265px;height: 50px;font-size: 16px;border: 1px rgba(0, 255, 21, 0.5) solid;margin: 0 auto;border-radius: 5px;">


                                    <i class="icon-ok"></i>

                                    确认归还且推荐

                                </button>
                            </div>

                            <div style="margin-left:20px;margin-top:20px">
                                <a href="returnbookServlet?Rno=<%=Rno%>"><button type="button" class="am-btn am-btn-warning" style="width: 265px;height: 50px;font-size: 16px;border: 1px rgba(0, 255, 21, 0.5) solid;margin: 0 auto;border-radius: 5px;">


                                    <i class="icon-ok"></i>

                                    确认归还

                                </button>
                            </div>



                        </div><!-- /row -->



                        <script type="text/javascript">

                            var $path_assets = "assets";//this will be used in gritter alerts containing images

                        </script>



                        <!-- PAGE CONTENT ENDS -->

                    </div><!-- /.col -->

                </div><!-- /.row -->

            </div><!-- /.page-content -->

        </div><!-- /.main-content -->



        <div class="ace-settings-container" id="ace-settings-container">

            <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">

                <i class="icon-cog bigger-150"></i>

            </div>



            <div class="ace-settings-box" id="ace-settings-box">

                <div>

                    <div class="pull-left">

                        <select id="skin-colorpicker" class="hide">

                            <option data-skin="default" value="#438EB9">#438EB9</option>

                            <option data-skin="skin-1" value="#222A2D">#222A2D</option>

                            <option data-skin="skin-2" value="#C6487E">#C6487E</option>

                            <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>

                        </select>

                    </div>

                    <span>&nbsp; Choose Skin</span>

                </div>



                <div>

                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />

                    <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>

                </div>



                <div>

                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />

                    <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>

                </div>



                <div>

                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />

                    <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>

                </div>



                <div>

                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />

                    <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>

                </div>



                <div>

                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />

                    <label class="lbl" for="ace-settings-add-container">

                        Inside

                        <b>.container</b>

                    </label>

                </div>

            </div>

        </div><!-- /#ace-settings-container -->

    </div><!-- /.main-container-inner -->



    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">

        <i class="icon-double-angle-up icon-only bigger-110"></i>

    </a>

</div><!-- /.main-container -->



<!-- basic scripts -->



<!--[if !IE]> -->



<script src="http://www.jq22.com/jquery/jquery-2.1.1.js"></script>



<!-- <![endif]-->



<!--[if IE]>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<![endif]-->



<!--[if !IE]> -->



<script type="text/javascript">

    window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");

</script>



<!-- <![endif]-->



<!--[if IE]>

<script type="text/javascript">

    window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");

</script>

<![endif]-->



<script type="text/javascript">

    if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");

</script>

<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>

<script src="assets/js/typeahead-bs2.min.js"></script>



<!-- page specific plugin scripts -->



<!--[if lte IE 8]>

<script src="assets/js/excanvas.min.js"></script>

<![endif]-->



<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>

<script src="assets/js/jquery.ui.touch-punch.min.js"></script>

<script src="assets/js/jquery.gritter.min.js"></script>

<script src="assets/js/bootbox.min.js"></script>

<script src="assets/js/jquery.slimscroll.min.js"></script>

<script src="assets/js/jquery.easy-pie-chart.min.js"></script>

<script src="assets/js/jquery.hotkeys.min.js"></script>

<script src="assets/js/bootstrap-wysiwyg.min.js"></script>

<script src="assets/js/select2.min.js"></script>

<script src="assets/js/date-time/bootstrap-datepicker.min.js"></script>

<script src="assets/js/fuelux/fuelux.spinner.min.js"></script>

<script src="assets/js/x-editable/bootstrap-editable.min.js"></script>

<script src="assets/js/x-editable/ace-editable.min.js"></script>

<script src="assets/js/jquery.maskedinput.min.js"></script>



<!-- ace scripts -->



<script src="assets/js/ace-elements.min.js"></script>

<script src="assets/js/ace.min.js"></script>



<!-- inline scripts related to this page -->


