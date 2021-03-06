<%--
  Created by IntelliJ IDEA.
  User: 杨
  Date: 2022/3/17
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8" />

    <title>login</title>



    <!-- basic styles -->



    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/3.2.1/css/font-awesome.min.css">



    <!--[if IE 7]>

    <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />

    <![endif]-->



    <!-- page specific plugin styles -->



    <!-- fonts -->







    <!-- ace styles -->



    <link rel="stylesheet" href="assets/css/ace.min.css" />

    <link rel="stylesheet" href="assets/css/ace-rtl.min.css" />



    <!--[if lte IE 8]>

    <link rel="stylesheet" href="assets/css/ace-ie.min.css" />

    <![endif]-->



    <!-- inline styles related to this page -->



    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->



    <!--[if lt IE 9]>

    <script src="assets/js/html5shiv.js"></script>

    <script src="assets/js/respond.min.js"></script>

    <![endif]-->

</head>



<body class="login-layout" >

<div class="main-container">

    <div class="main-content">

        <div class="row">

            <div class="col-sm-10 col-sm-offset-1">

                <div class="login-container">

                    <div class="center">

                        <h1>

                            <i class="icon-leaf green"></i>

                            <span class="red">图书馆</span>

                            <span class="white">管理系统</span>

                        </h1>

                    </div>



                    <div class="space-6"></div>



                    <div class="position-relative">

                        <div id="login-box" class="login-box visible widget-box no-border">

                            <div class="widget-body">

                                <div class="widget-main">

                                    <h4 class="header blue lighter bigger">

                                        <i class="icon-coffee green"></i>

                                        请输入您的信息
                                    </h4>



                                    <div class="space-6"></div>



                                    <form action="distinguishServlet">

                                        <fieldset>

                                            <label class="block clearfix">

														<span class="block input-icon input-icon-right">

															<input type="text" name="No" class="form-control" placeholder="UserID" />

															<i class="icon-user"></i>

														</span>

                                            </label>



                                            <label class="block clearfix">

														<span class="block input-icon input-icon-right">

															<input type="password" name="password" class="form-control" placeholder="Password" />

															<i class="icon-lock"></i>

														</span>

                                            </label>



                                            <div class="space"></div>



                                            <div class="clearfix">

                                                <label class="inline">

                                                    <input type="checkbox" name="choose" class="ace" />

                                                    <span class="lbl"> 以管理员身份进入</span>

                                                </label>

<%--                                                <%--%>
<%--                                                    if(Boolean.parseBoolean(request.getParameter("choose"))){--%>
<%--                                                %>--%>
<%--                                                <a href="loginServlet"><button type="button" class="width-35 pull-right btn btn-sm btn-primary">--%>

<%--                                                    <%--%>
<%--                                                        }--%>
<%--                                                    else {--%>
<%--                                                    %>--%>
<%--                                                        <a href="SloginServlet"><button type="button" class="width-35 pull-right btn btn-sm btn-primary">--%>
<%--                                                    <%--%>
<%--                                                        }--%>
<%--                                                    %>--%>

                                                <input type="submit" class="width-35 pull-right btn btn-sm btn-primary">
                                                <i class="icon-key"></i>

                                                Login
                                                </input>


                                            </div>



                                            <div class="space-4"></div>

                                        </fieldset>

                                    </form>

                                </div><!-- /widget-main -->

                            </div><!-- /widget-body -->

                        </div><!-- /login-box -->

                    </div><!-- /position-relative -->

                </div>

            </div><!-- /.col -->

        </div><!-- /.row -->

    </div>

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



<!-- inline scripts related to this page -->



<script type="text/javascript">

    function show_box(id) {

        jQuery('.widget-box.visible').removeClass('visible');

        jQuery('#'+id).addClass('visible');

    }

</script>



</body>

</html>


