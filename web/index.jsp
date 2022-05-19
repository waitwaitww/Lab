<%--
  Created by IntelliJ IDEA.
  User: 杨
  Date: 2022/3/9
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="entity.post"%>
<%@ page import="entity.book" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>


<html lang="en">

<head>
  <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">

  <meta charset="utf-8" />

  <title>首页 </title>



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

  <link rel="stylesheet" href="assets/css/bootstrap-timepicker.css" />

  <link rel="stylesheet" href="assets/css/daterangepicker.css" />

  <link rel="stylesheet" href="assets/css/chosen.css" />

  <link rel="stylesheet" href="assets/css/datepicker.css" />



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


<%
  book book = (book)request.getAttribute("book");
  List<post> posts = (List<post>)request.getAttribute("posts");
  post post1 = posts.get(0);
  post post2 = posts.get(1);
  post post3 = posts.get(2);
  String Aname = String.valueOf(session.getAttribute("Aname"));
%>


<body>

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

            <a href="index.jsp">首页</a>

          </li>

        </ul><!-- .breadcrumb -->

        <div class="page-content">
          <div class="row">

            <div class="col-xs-12">

              <!-- PAGE CONTENT BEGINS -->

              <div class="row">

                <div class="col-sm-6">


                  <h3 class="row header smaller lighter blue">


												<span class="col-xs-6">
													<i class="icon-bullhorn"></i>
													公告
												</span><!-- /span -->



                  </h3>



                  <div id="accordion" class="accordion-style1 panel-group">

                    <div class="panel panel-default">

                      <div class="panel-heading">

                        <h4 class="panel-title">

                          <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">

                            <i class="icon-angle-down bigger-110" data-icon-hide="icon-angle-down" data-icon-show="icon-angle-right"></i>

                            &nbsp;<%=post1.getPtitle()%>

                          </a>

                        </h4>

                      </div>



                      <div class="panel-collapse collapse in" id="collapseOne">

                        <div class="panel-body">
                          <%=post1.getPcontent()%>
                        </div>

                      </div>

                    </div>



                    <div class="panel panel-default">

                      <div class="panel-heading">

                        <h4 class="panel-title">

                          <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">

                            <i class="icon-angle-right bigger-110" data-icon-hide="icon-angle-down" data-icon-show="icon-angle-right"></i>

                            &nbsp;&nbsp;<%=post2.getPtitle()%>

                          </a>

                        </h4>

                      </div>



                      <div class="panel-collapse collapse" id="collapseTwo">

                        <div class="panel-body">

                          <%=post2.getPcontent()%>

                        </div>

                      </div>

                    </div>



                    <div class="panel panel-default">

                      <div class="panel-heading">

                        <h4 class="panel-title">

                          <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">

                            <i class="icon-angle-right bigger-110" data-icon-hide="icon-angle-down" data-icon-show="icon-angle-right"></i>

                            &nbsp;&nbsp;<%=post3.getPtitle()%>

                          </a>

                        </h4>

                      </div>



                      <div class="panel-collapse collapse" id="collapseThree">

                        <div class="panel-body">

                          <%=post3.getPcontent()%>

                        </div>

                      </div>

                    </div>

                  </div>

                </div><!-- /span -->

                <div class="col-sm-6">

                  <h3 class="header smaller lighter green">

                    <i class="fa fa-thumbs-o-up"></i>

                    好书推荐

                  </h3>



                </div><!-- /span -->

                <div>

                  <div id="user-profile-1" class="user-profile row">

                    <div class="col-xs-12 col-sm-3 center">

                      <div>

															<span class="profile-picture">

																<img id="avatar" class="editable img-responsive" alt="Alex's Avatar" src="assets/avatars/profile-pic.jpg" />

															</span>



                        <div class="space-4"></div>



                        <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">

                          <div class="inline position-relative">

                            <a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">

                              &nbsp;

                              <span class="white">《<%=book.getBname()%>》</span>

                            </a>

                          </div>

                        </div>

                      </div>



                      <div class="space-6"></div>



                      <div class="profile-contact-info">

                        <div class="profile-contact-links align-left">

                          <a class="btn btn-link" href="#">

                            <i class="icon-plus-sign bigger-120 green"></i>

                            <%=book.getBauthor()%><br>

                          </a>



                          <a class="btn btn-link" href="#">

                            <i class="icon-envelope bigger-120 pink"></i>

                            <%=book.getBcategory()%><br>

                          </a>



                          <a class="btn btn-link" href="#">

                            <i class="icon-globe bigger-125 blue"></i>

                            <%=book.getBpress()%><br>

                          </a>

                        </div>



                        <div class="space-6"></div>

                      </div>



                      <div class="hr hr12 dotted"></div>



                      <div class="clearfix">

                        <div class="grid2">

                          <span class="bigger-175 blue"><%=book.getBrecommend()%></span>



                          <br />

                          推荐值

                        </div>



                        <div class="grid2">

                          <span class="bigger-175 blue"><%=book.getBtimes()%></span>



                          <br />

                          借阅次数

                        </div>

                      </div>



                      <div class="hr hr16 dotted"></div>

                    </div>


                  </div>

                </div>

              </div><!-- /row -->


              <!-- PAGE CONTENT ENDS -->

            </div><!-- /.col -->

          </div><!-- /.row -->
        </div>



      </div>

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

<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>

<script src="assets/js/typeahead-bs2.min.js"></script>


<script src="assets/js/ace-elements.min.js"></script>

<script src="assets/js/ace.min.js"></script>



<script src="assets/js/ace-elements.min.js"></script>

<script src="assets/js/ace.min.js"></script>


<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>

<script src="assets/js/typeahead-bs2.min.js"></script>

<script type="text/javascript">

  window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");

</script>

<script type="text/javascript">

  if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");

</script>

<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>

<script src="assets/js/typeahead-bs2.min.js"></script>


<script src="http://www.jq22.com/jquery/jquery-2.1.1.js"></script>




</body>

</html>


