<%@ page import="entity.book" %><%--
  Created by IntelliJ IDEA.
  User: 杨
  Date: 2022/3/17
  Time: 8:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>


<html lang="en">

<head>
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">

    <meta charset="utf-8" />

    <title>删除书籍 </title>



    <meta name="viewport" content="width=device-width, initial-scale=1.0" />



    <!-- basic styles -->



    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/3.2.1/css/font-awesome.min.css">



    <!--[if IE 7]>

    <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />

    <![endif]-->



    <!-- page specific plugin styles -->




    <link rel="stylesheet" href="assets/css/select2.css" />



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
    book book = (book)session.getAttribute("book");
    String Apassword = String.valueOf(session.getAttribute("Apassword"));
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

                    <li>  <a href="deletebook.jsp">删除书籍</a></li>

                </ul><!-- .breadcrumb -->


            </div>



            <div class="page-content">

                <div class="row">

                    <div class="col-xs-12">

                        <!-- PAGE CONTENT BEGINS -->



                        <div class="row-fluid">

                            <div class="span12">

                                <div class="widget-box">

                                    <div class="widget-header widget-header-blue widget-header-flat">

                                        <h4 class="lighter">书本删除</h4>

                                    </div>



                                    <div class="widget-body">

                                        <div class="widget-main">

                                            <div id="fuelux-wizard" class="row-fluid" data-target="#step-container">

                                                <ul class="wizard-steps">

                                                    <li data-target="#step1" class="active">

                                                        <span class="step">1</span>

                                                        <span class="title">确认管理员</span>

                                                    </li>



                                                    <li data-target="#step2">

                                                        <span class="step">2</span>

                                                        <span class="title">确认书本</span>

                                                    </li>



                                                    <li data-target="#step3">

                                                        <span class="step">3</span>

                                                        <span class="title">成功删除</span>

                                                    </li>

                                                </ul>

                                            </div>



                                            <hr />

                                            <div class="step-content row-fluid position-relative" id="step-container">

                                                <div class="step-pane active" id="step1">

                                                    <h3 class="lighter block green">请输入以下信息</h3>




                                                    <form class="form-horizontal" id="adimnistrator-form" name = "adimnistrator-form">

                                                        <div class="form-group has-info">

                                                            <label for="Apassword" class="col-xs-12 col-sm-3 control-label no-padding-right">请输入当前管理员密码</label>



                                                            <div class="col-xs-12 col-sm-5">

																		<span class="block input-icon input-icon-right">

																			<input type="password" id="Apassword" name = "Apassword" class="width-100" >

																		</span>

                                                            </div>


                                                        </div>

                                                    </form>

                                                </div>



                                                <div class="step-pane" id="step2">

                                                    <h3 class="lighter block green">请输入以下信息</h3>



                                                    <form class="form-horizontal" id="book-form" name = "book-form">

                                                        <div class="form-group has-info">

                                                            <label for="Bno" class="col-xs-12 col-sm-3 control-label no-padding-right">请输入书本编号</label>



                                                            <div class="col-xs-12 col-sm-5">

																		<span class="block input-icon input-icon-right">

																			<input type="text" id="Bno" name = "Bno"class="width-100" value="<%=book.getBno()%>"/>

																		</span>

                                                            </div>


                                                        </div>

                                                        <div class="form-group has-info">

                                                            <label for="Bname" class="col-xs-12 col-sm-3 control-label no-padding-right">请输入书名</label>



                                                            <div class="col-xs-12 col-sm-5">

																		<span class="block input-icon input-icon-right">

																			<input type="text" id="Bname" class="width-100" value="<%=book.getBname()%>"/>

																		</span>

                                                            </div>


                                                        </div>



                                                        <div class="form-group has-info">

                                                            <label for="Bquantity" class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">请输入剩余书本数目</label>



                                                            <div class="col-xs-12 col-sm-5">

																		<span class="block input-icon input-icon-right">

																			<input type="text" id="Bquantity" class="width-100" value="<%=book.getBquantity()%>"/>

																		</span>

                                                            </div>

                                                        </div>

                                                    </form>

                                                </div>



                                                <div class="step-pane" id="step3">

                                                    <div class="center">

                                                        <h3 class="green">删除成功!</h3>

                                                    </div>

                                                </div>

                                            </div>



                                            <hr />

                                            <div class="row-fluid wizard-actions">

                                                <button class="btn btn-prev">

                                                    <i class="icon-arrow-left"></i>

                                                    Prev

                                                </button>



                                                <button class="btn btn-success btn-next" data-last="Finish ">

                                                    Next

                                                    <i class="icon-arrow-right icon-on-right"></i>

                                                </button>

                                            </div>

                                        </div><!-- /widget-main -->

                                    </div><!-- /widget-body -->

                                </div>

                            </div>

                        </div>

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




<script src="assets/js/fuelux/fuelux.wizard.min.js"></script>

<script src="assets/js/jquery.validate.min.js"></script>

<script src="assets/js/additional-methods.min.js"></script>

<script src="assets/js/bootbox.min.js"></script>

<script src="assets/js/jquery.maskedinput.min.js"></script>

<script src="assets/js/select2.min.js"></script>



<!-- ace scripts -->



<script src="assets/js/ace-elements.min.js"></script>

<script src="assets/js/ace.min.js"></script>

<script type="text/javascript">

    jQuery(function($) {



        $('[data-rel=tooltip]').tooltip();



        $(".select2").css('width','200px').select2({allowClear:true})

            .on('change', function(){

                $(this).closest('form').validate().element($(this));

            });






        $('#fuelux-wizard').ace_wizard().on('change' , function(e, info){
            var  pwd = $('input[name="Apassword"]').val();
            if(info.step == 1 && pwd!=<%=Apassword%>) {
                alert("管理员密码错误");

                if(!$('#validation-form').valid()) return false;

            }

        }).on('finished', function(e) {

           var Bno = $('input[name="Bno"]').val();
            location.href = "deletebookServlet?Bno="+Bno;

        }).on('stepclick', function(e){



        });





        $('#skip-validation').removeAttr('checked').on('click', function(){

            $validation = this.checked;

            if(this.checked) {

                $('#sample-form').hide();

                $('#validation-form').removeClass('hide');

            }

            else {

                $('#validation-form').addClass('hide');

                $('#sample-form').show();

            }

        });




        $.mask.definitions['~']='[+-]';

        $('#phone').mask('(999) 999-9999');



        jQuery.validator.addMethod("phone", function (value, element) {

            return this.optional(element) || /^\(\d{3}\) \d{3}\-\d{4}( x\d{1,6})?$/.test(value);

        }, "Enter a valid phone number.");



        $('#modal-wizard .modal-header').ace_wizard();

        $('#modal-wizard .wizard-actions .btn[data-dismiss=modal]').removeAttr('disabled');

    })

</script>

<!-- inline scripts related to this page -->



