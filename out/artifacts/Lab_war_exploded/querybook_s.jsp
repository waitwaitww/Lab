<%@ page import="entity.book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 杨
  Date: 2022/3/16
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>


<html lang="en">

<head>
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <meta charset="utf-8" />

    <title>书本信息查询 </title>



    <meta name="viewport" content="width=device-width, initial-scale=1.0" />



    <!-- basic styles -->



    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/3.2.1/css/font-awesome.min.css">



    <!--[if IE 7]>

    <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />

    <![endif]-->



    <!-- page specific plugin styles -->


    <link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.full.min.css" />

    <link rel="stylesheet" href="assets/css/datepicker.css" />

    <link rel="stylesheet" href="assets/css/ui.jqgrid.css" />


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

                            <a href="returnbook_s.jsp">

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

                        <a href="queryallbookServlet">书本信息查询</a>

                    </li>


                </ul><!-- .breadcrumb -->





            </div>



            <div class="page-content">





                <div class="row">

                    <div class="col-xs-12">

                        <!-- PAGE CONTENT BEGINS -->



                        <table id="grid-table"></table>



                        <div id="grid-pager"></div>



                        <script type="text/javascript">

                            var $path_base = "/";//this will be used in gritter alerts containing images

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



<script src="assets/js/date-time/bootstrap-datepicker.min.js"></script>

<script src="assets/js/jqGrid/jquery.jqGrid.min.js"></script>

<script src="assets/js/jqGrid/i18n/grid.locale-en.js"></script>



<!-- ace scripts -->



<script src="assets/js/ace-elements.min.js"></script>

<script src="assets/js/ace.min.js"></script>



<!-- inline scripts related to this page -->



<script type="text/javascript">

    // var grid_data =
    //
    //     [
    //
    //         {id:"1",name:"Desktop Computer",note:"note",stock:"Yes",ship:"FedEx", sdate:"2007-12-03"},
    //
    //         {id:"2",name:"Laptop",note:"Long text ",stock:"Yes",ship:"InTime",sdate:"2007-12-03"},
    //
    //         {id:"3",name:"LCD Monitor",note:"note3",stock:"Yes",ship:"TNT",sdate:"2007-12-03"},
    //
    //         {id:"4",name:"Speakers",note:"note",stock:"No",ship:"ARAMEX",sdate:"2007-12-03"},
    //
    //         {id:"5",name:"Laser Printer",note:"note2",stock:"Yes",ship:"FedEx",sdate:"2007-12-03"},
    //
    //         {id:"6",name:"Play Station",note:"note3",stock:"No", ship:"FedEx",sdate:"2007-12-03"},
    //
    //         {id:"7",name:"Mobile Telephone",note:"note",stock:"Yes",ship:"ARAMEX",sdate:"2007-12-03"},
    //
    //         {id:"8",name:"Server",note:"note2",stock:"Yes",ship:"TNT",sdate:"2007-12-03"},
    //
    //         {id:"9",name:"Matrix Printer",note:"note3",stock:"No", ship:"FedEx",sdate:"2007-12-03"},
    //
    //         {id:"10",name:"Desktop Computer",note:"note",stock:"Yes",ship:"FedEx", sdate:"2007-12-03"},
    //
    //         {id:"11",name:"Laptop",note:"Long text ",stock:"Yes",ship:"InTime",sdate:"2007-12-03"},
    //
    //         {id:"12",name:"LCD Monitor",note:"note3",stock:"Yes",ship:"TNT",sdate:"2007-12-03"},
    //
    //         {id:"13",name:"Speakers",note:"note",stock:"No",ship:"ARAMEX",sdate:"2007-12-03"},
    //
    //         {id:"14",name:"Laser Printer",note:"note2",stock:"Yes",ship:"FedEx",sdate:"2007-12-03"},
    //
    //         {id:"15",name:"Play Station",note:"note3",stock:"No", ship:"FedEx",sdate:"2007-12-03"},
    //
    //         {id:"16",name:"Mobile Telephone",note:"note",stock:"Yes",ship:"ARAMEX",sdate:"2007-12-03"},
    //
    //         {id:"17",name:"Server",note:"note2",stock:"Yes",ship:"TNT",sdate:"2007-12-03"},
    //
    //         {id:"18",name:"Matrix Printer",note:"note3",stock:"No", ship:"FedEx",sdate:"2007-12-03"},
    //
    //         {id:"19",name:"Matrix Printer",note:"note3",stock:"No", ship:"FedEx",sdate:"2007-12-03"},
    //
    //         {id:"20",name:"Desktop Computer",note:"note",stock:"Yes",ship:"FedEx", sdate:"2007-12-03"},
    //
    //         {id:"21",name:"Laptop",note:"Long text ",stock:"Yes",ship:"InTime",sdate:"2007-12-03"},
    //
    //         {id:"22",name:"LCD Monitor",note:"note3",stock:"Yes",ship:"TNT",sdate:"2007-12-03"},
    //
    //         {id:"23",name:"Speakers",note:"note",stock:"No",ship:"ARAMEX",sdate:"2007-12-03"}
    //
    //     ];
    //
    var grid_data = []
    <%
     List<book> books = (List<book>)request.getAttribute("books");
     for(book book:books){

    %>

    grid_data.push({Bno:"<%=book.getBno()%>",
        Bname:"<%=book.getBname()%>",
        Bcategory:"<%=book.getBcategory()%>",
        Bauthor:"<%=book.getBauthor()%>",
        Bpress:"<%=book.getBpress()%>",
        Blocation:"<%=book.getBlication()%>",
        Bquantity:"<%=book.getBquantity()%>"})

    <%
    }
    %>
    jQuery(function($) {

        var grid_selector = "#grid-table";

        var pager_selector = "#grid-pager";



        jQuery(grid_selector).jqGrid({

            //direction: "rtl",



            data: grid_data,

            datatype: "local",

            height: 250,

            colNames:['Bno', 'Bname','Bcategory','Bauthor', 'Bpress', 'Blocation','Bquantity',' '],

            colModel:[

                {name:'Bno',index:'Bno', width:60, sorttype:"int", editable: true},

                {name:'Bname',index:'Bname',width:90, editable:true, editoptions:{size:"20",maxlength:"30"}},

                {name:'Bcategory',index:'Bcategory', width:150,editable: true,editoptions:{size:"20",maxlength:"30"}},

                {name:'Bauthor',index:'Bauthor', width:150,editable: true,editoptions:{size:"20",maxlength:"30"}},

                {name:'Bpress',index:'Bpress', width:70, editable: true,editoptions:{size:"20",maxlength:"30"}},

                {name:'Blocation',index:'Blocation', width:90, editable: true,editoptions:{size:"20",maxlength:"30"}},

                {name:'Bquantity',index:'Bquantity', width:100, sorttype:"int", editable: true},

                {name:'myac',index:'', width:80, fixed:true, sortable:false, resize:false,

                    //formatter:'actions',
                    formatter: function (value, grid, rows) {

                        return "<a href=\"SfindbookServlet?Bno="+rows.Bno+"\"  style=\"color:#f60\" οnclick=\"Modify(" + rows.id + ")\">借阅</a>" }
                    // formatoptions:{
                    //
                    //     keys:true,
                    //
                    //     delOptions:{recreateForm: true, beforeShowForm:beforeDeleteCallback},
                    //
                    //     //editformbutton:true, editOptions:{recreateForm: true, beforeShowForm:beforeEditCallback}
                    //
                    // }
                }

            ],



            viewrecords : true,

            rowNum:10,

            rowList:[10,20,30],

            pager : pager_selector,

            altRows: true,

            //toppager: true,



            multiselect: true,

            //multikey: "ctrlKey",

            multiboxonly: true,



            loadComplete : function() {

                var table = this;

                setTimeout(function(){

                    styleCheckbox(table);



                    updateActionIcons(table);

                    updatePagerIcons(table);

                    enableTooltips(table);

                }, 0);

            },



            editurl: $path_base+"/dummy.html",//nothing is saved

            caption: "书本信息",





            autowidth: true



        });



        //enable search/filter toolbar

        //jQuery(grid_selector).jqGrid('filterToolbar',{defaultSearch:true,stringResult:true})



        //switch element when editing inline

        function aceSwitch( cellvalue, options, cell ) {

            setTimeout(function(){

                $(cell) .find('input[type=checkbox]')

                    .wrap('<label class="inline" />')

                    .addClass('ace ace-switch ace-switch-5')

                    .after('<span class="lbl"></span>');

            }, 0);

        }

        //enable datepicker

        function pickDate( cellvalue, options, cell ) {

            setTimeout(function(){

                $(cell) .find('input[type=text]')

                    .datepicker({format:'yyyy-mm-dd' , autoclose:true});

            }, 0);

        }





        //navButtons

        jQuery(grid_selector).jqGrid('navGrid',pager_selector,

            { 	//navbar options

                edit: true,

                editicon : 'icon-pencil blue',

                add: true,

                addicon : 'icon-plus-sign purple',

                del: true,

                delicon : 'icon-trash red',

                search: true,

                searchicon : 'icon-search orange',

                refresh: true,

                refreshicon : 'icon-refresh green',

                view: true,

                viewicon : 'icon-zoom-in grey',

            },

            {

                //edit record form

                //closeAfterEdit: true,

                recreateForm: true,

                beforeShowForm : function(e) {

                    var form = $(e[0]);

                    form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')

                    style_edit_form(form);

                }

            },

            {

                //new record form

                closeAfterAdd: true,

                recreateForm: true,

                viewPagerButtons: false,

                beforeShowForm : function(e) {

                    var form = $(e[0]);

                    form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')

                    style_edit_form(form);

                }

            },

            {

                //delete record form

                recreateForm: true,

                beforeShowForm : function(e) {

                    var form = $(e[0]);

                    if(form.data('styled')) return false;



                    form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')

                    style_delete_form(form);



                    form.data('styled', true);

                },

                onClick : function(e) {

                    alert(1);

                }

            },

            {

                //search form

                recreateForm: true,

                afterShowSearch: function(e){

                    var form = $(e[0]);

                    form.closest('.ui-jqdialog').find('.ui-jqdialog-title').wrap('<div class="widget-header" />')

                    style_search_form(form);

                },

                afterRedraw: function(){

                    style_search_filters($(this));

                }

                ,

                multipleSearch: true,

                /**

                 multipleGroup:true,

                 showQuery: true

                 */

            },

            {

                //view record form

                recreateForm: true,

                beforeShowForm: function(e){

                    var form = $(e[0]);

                    form.closest('.ui-jqdialog').find('.ui-jqdialog-title').wrap('<div class="widget-header" />')

                }

            }

        )







        function style_edit_form(form) {

            //enable datepicker on "sdate" field and switches for "stock" field

            form.find('input[name=sdate]').datepicker({format:'yyyy-mm-dd' , autoclose:true})

                .end().find('input[name=stock]')

                .addClass('ace ace-switch ace-switch-5').wrap('<label class="inline" />').after('<span class="lbl"></span>');



            //update buttons classes

            var buttons = form.next().find('.EditButton .fm-button');

            buttons.addClass('btn btn-sm').find('[class*="-icon"]').remove();//ui-icon, s-icon

            buttons.eq(0).addClass('btn-primary').prepend('<i class="icon-ok"></i>');

            buttons.eq(1).prepend('<i class="icon-remove"></i>')



            buttons = form.next().find('.navButton a');

            buttons.find('.ui-icon').remove();

            buttons.eq(0).append('<i class="icon-chevron-left"></i>');

            buttons.eq(1).append('<i class="icon-chevron-right"></i>');

        }



        function style_delete_form(form) {

            var buttons = form.next().find('.EditButton .fm-button');

            buttons.addClass('btn btn-sm').find('[class*="-icon"]').remove();//ui-icon, s-icon

            buttons.eq(0).addClass('btn-danger').prepend('<i class="icon-trash"></i>');

            buttons.eq(1).prepend('<i class="icon-remove"></i>')

        }



        function style_search_filters(form) {

            form.find('.delete-rule').val('X');

            form.find('.add-rule').addClass('btn btn-xs btn-primary');

            form.find('.add-group').addClass('btn btn-xs btn-success');

            form.find('.delete-group').addClass('btn btn-xs btn-danger');

        }

        function style_search_form(form) {

            var dialog = form.closest('.ui-jqdialog');

            var buttons = dialog.find('.EditTable')

            buttons.find('.EditButton a[id*="_reset"]').addClass('btn btn-sm btn-info').find('.ui-icon').attr('class', 'icon-retweet');

            buttons.find('.EditButton a[id*="_query"]').addClass('btn btn-sm btn-inverse').find('.ui-icon').attr('class', 'icon-comment-alt');

            buttons.find('.EditButton a[id*="_search"]').addClass('btn btn-sm btn-purple').find('.ui-icon').attr('class', 'icon-search');

        }



        function beforeDeleteCallback(e) {

            var form = $(e[0]);

            if(form.data('styled')) return false;



            form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')

            style_delete_form(form);



            form.data('styled', true);

        }



        function beforeEditCallback(e) {

            var form = $(e[0]);

            form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')

            style_edit_form(form);

        }







        //it causes some flicker when reloading or navigating grid

        //it may be possible to have some custom formatter to do this as the grid is being created to prevent this

        //or go back to default browser checkbox styles for the grid

        function styleCheckbox(table) {

            /**

             $(table).find('input:checkbox').addClass('ace')

             .wrap('<label />')

             .after('<span class="lbl align-top" />')





             $('.ui-jqgrid-labels th[id*="_cb"]:first-child')

             .find('input.cbox[type=checkbox]').addClass('ace')

             .wrap('<label />').after('<span class="lbl align-top" />');

             */

        }





        //unlike navButtons icons, action icons in rows seem to be hard-coded

        //you can change them like this in here if you want

        function updateActionIcons(table) {

            /**

             var replacement =

             {

						'ui-icon-pencil' : 'icon-pencil blue',

						'ui-icon-trash' : 'icon-trash red',

						'ui-icon-disk' : 'icon-ok green',

						'ui-icon-cancel' : 'icon-remove red'

					};

             $(table).find('.ui-pg-div span.ui-icon').each(function(){

						var icon = $(this);

						var $class = $.trim(icon.attr('class').replace('ui-icon', ''));

						if($class in replacement) icon.attr('class', 'ui-icon '+replacement[$class]);

					})

             */

        }



        //replace icons with FontAwesome icons like above

        function updatePagerIcons(table) {

            var replacement =

                {

                    'ui-icon-seek-first' : 'icon-double-angle-left bigger-140',

                    'ui-icon-seek-prev' : 'icon-angle-left bigger-140',

                    'ui-icon-seek-next' : 'icon-angle-right bigger-140',

                    'ui-icon-seek-end' : 'icon-double-angle-right bigger-140'

                };

            $('.ui-pg-table:not(.navtable) > tbody > tr > .ui-pg-button > .ui-icon').each(function(){

                var icon = $(this);

                var $class = $.trim(icon.attr('class').replace('ui-icon', ''));



                if($class in replacement) icon.attr('class', 'ui-icon '+replacement[$class]);

            })

        }



        function enableTooltips(table) {

            $('.navtable .ui-pg-button').tooltip({container:'body'});

            $(table).find('.ui-pg-div').tooltip({container:'body'});

        }



        //var selr = jQuery(grid_selector).jqGrid('getGridParam','selrow');





    });

</script>



</body>

</html>


