<%--
  Created by IntelliJ IDEA.
  User: 杨
  Date: 2022/3/16
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>


<html lang="en">

<head>
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">

    <meta charset="utf-8" />

    <title>添加书本 </title>



    <meta name="viewport" content="width=device-width, initial-scale=1.0" />



    <!-- basic styles -->



    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/3.2.1/css/font-awesome.min.css">



    <!--[if IE 7]>

    <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />

    <![endif]-->



    <!-- page specific plugin styles -->

    <link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.custom.min.css" />

    <link rel="stylesheet" href="assets/css/chosen.css" />

    <link rel="stylesheet" href="assets/css/datepicker.css" />

    <link rel="stylesheet" href="assets/css/bootstrap-timepicker.css" />

    <link rel="stylesheet" href="assets/css/daterangepicker.css" />

    <link rel="stylesheet" href="assets/css/colorpicker.css" />



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
    String Aname = String.valueOf(session.getAttribute("Aname"));
%>

<div class="navbar navbar-default" id="navbar">

    <script type="text/javascript">

        try{ace.settings.check('navbar' , 'fixed')}catch(e){}

    </script>



    <div class="navbar-container" id="navbar-container">

        <div class="navbar-header pull-left">

            <a href="queryindexServlet" class="navbar-brand">

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

									<%=Aname%>

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

                    <a href="queryindexServlet">

                        <i class="icon-home home-icon"></i>

                        <span class="menu-text"> 首页 </span>

                    </a>

                </li>



                <li>

                    <a href="queryallbookServlet">

                        <i class="icon-book"></i>

                        <span class="menu-text"> 书本信息查询</span>

                    </a>

                </li>


                <li>

                    <a href="#" class="dropdown-toggle">

                        <i class="icon-leaf"></i>

                        <span class="menu-text"> 书籍管理 </span>



                        <b class="arrow icon-angle-down"></b>

                    </a>



                    <ul class="submenu">

                        <li>

                            <a href="addbook.jsp">

                                <i class="icon-double-angle-right"></i>

                                添加书籍

                            </a>

                        </li>



                        <li>

                            <a href="deletebook.jsp">

                                <i class="icon-double-angle-right"></i>

                                删除书籍

                            </a>

                        </li>

                    </ul>

                </li>




                <li>

                    <a href="#" class="dropdown-toggle">

                        <i class="icon-list"></i>

                        <span class="menu-text"> 公告管理 </span>



                        <b class="arrow icon-angle-down"></b>

                    </a>



                    <ul class="submenu">

                        <li>

                            <a href="addpost.jsp">

                                <i class="icon-double-angle-right"></i>

                                发布公告

                            </a>

                        </li>



                        <li>

                            <a href="deletepost.jsp">

                                <i class="icon-double-angle-right"></i>

                                删除公告

                            </a>

                        </li>

                    </ul>

                </li>



                <li>

                    <a href="queryrecordingServlet">

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

                        <a href="#">书籍管理</a>

                    </li>



                    <li>

                        <a href="addbook.jsp">添加书籍</a>

                    </li>

                </ul><!-- .breadcrumb -->

            </div>



            <div class="page-content">

                <div class="row">

                    <div class="col-xs-12">

                        <!-- PAGE CONTENT BEGINS -->



                        <form class="form-horizontal" role="form" action="addbookServlet" method="get">

                            <div class="form-group">

                                <label class="col-sm-3 control-label no-padding-right" for="Bname"> 书名: </label>



                                <div class="col-sm-9">

                                    <input type="text" id="Bname" name="Bname" placeholder="Bookname" class="col-xs-10 col-sm-5" />

                                </div>


                            </div>


                            <div class="space-4"></div>




                            <div>
                                <div class="form-group">

                                    <label class="col-sm-3 control-label no-padding-right" for="Bcategory"> 类型:   </label>
                                    <div class="col-sm-9">

                                        <select class="form-control" id="Bcategory" name="Bcategory" style="width:405px" >

                                            <option value="VA">Please Select</option>

                                            <option value="论文期刊">论文期刊</option>

                                            <option value="小说">小说</option>

                                            <option value="杂志">杂志</option>

                                            <option value="教辅用书">教辅用书</option>

                                            <option value="传记">传记</option>

                                            <option value="图文写真">图文写真</option>

                                            <option value="科普读物">科普读物</option>

                                            <option value="大众图书">大众图书</option>

                                            <option value="其它">其它</option>

                                        </select>
                                    </div>
                                </div>

                            </div>



                            <div class="space-4"></div>



                            <div class="form-group">

                                <label class="col-sm-3 control-label no-padding-right" for="Bauthor"> 作者: </label>



                                <div class="col-sm-9">

                                    <input type="text" id="Bauthor" name="Bauthor" placeholder="Bookauthor" class="col-xs-10 col-sm-5" />

                                </div>

                            </div>



                            <div class="space-4"></div>



                            <div class="form-group">

                                <label class="col-sm-3 control-label no-padding-right" for="Bpress"> 出版社: </label>



                                <div class="col-sm-9">

                                    <input type="text" id="Bpress" name="Bpress" placeholder="Bookpress" class="col-xs-10 col-sm-5" />

                                </div>

                            </div>



                            <div class="space-4"></div>



                            <div class="form-group">

                                <label class="col-sm-3 control-label no-padding-right" for="Blocation"> 放置位置: </label>



                                <div class="col-sm-9">

                                    <input type="text" id="Blocation" name="Blocation" placeholder="Booklocation" class="col-xs-10 col-sm-5" />

                                </div>

                            </div>



                            <div class="space-4"></div>



                            <div class="form-group">

                                <label class="col-sm-3 control-label no-padding-right" for="Bquantity"> 书本数目: </label>



                                <div class="col-sm-9">

                                    <input type="text" id="Bquantity" name="Bquantity" placeholder="Bookquantity" class="col-xs-10 col-sm-5" />

                                </div>

                            </div>



                            <div class="space-4"></div>



                            <div class="form-group">

                                <label class="col-sm-3 control-label no-padding-right" for="Biamge"> 图片路径: </label>



                                <div class="col-sm-9">

                                    <input type="text" name="Bimage" id="Biamge"  placeholder="Bookimage" class="col-xs-10 col-sm-5" />

                                </div>

                            </div>



                            <div class="clearfix form-actions">

                                <div class="col-md-offset-3 col-md-9">

                                    <input class="btn btn-info" type="submit">

                                        提交

                                    </input>





                                    <button class="btn" type="reset">

                                        <i class="icon-undo bigger-110"></i>

                                        重置

                                    </button>

                                </div>

                            </div>





                        </form>



                        <div class="hr hr-18 dotted hr-double"></div>


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


<script src="http://www.jq22.com/jquery/jquery-2.1.1.js"></script>


<script type="text/javascript">

    window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");

</script>


<script type="text/javascript">

    if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");

</script>

<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>

<script src="assets/js/typeahead-bs2.min.js"></script>


<!-- basic scripts -->




<script src="assets/js/ace-elements.min.js"></script>

<script src="assets/js/ace.min.js"></script>





</body>

</html>

