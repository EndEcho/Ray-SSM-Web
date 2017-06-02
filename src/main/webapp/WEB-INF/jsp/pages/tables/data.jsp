<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Data Tables</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="../../../../bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../../../../dist/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="../../../../dist/css/ionicons.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="../../../../plugins/datatables/dataTables.bootstrap.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../../../dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../../../../dist/css/skins/_all-skins.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <header class="main-header">
        <!-- Logo -->
        <a href="/login" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini">万达星际广场</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg">万达星际广场</span>
        </a>

        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown notifications-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="label label-warning">2</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 2 notifications</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-users text-aqua"></i> 5 个新用户
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <i class="fa fa-users text-red"></i> 5 个新订单
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <%--<li class="footer"><a href="#">View all</a></li>--%>
                        </ul>
                    </li>

                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="${path}" class="user-image" alt="User Image">
                            <span class="hidden-xs">${path}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="${path}" class="img-circle" alt="User Image">

                                <p>
                                    ${path} - Web Developer
                                    <small>Member since Nov. 2012</small>
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Followers</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Sales</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Friends</a>
                                    </div>
                                </div>
                                <!-- /.row -->
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li>
                        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                </ul>
            </div>

        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="${userList.get(1).userIcon}" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>${userName}</p>
                    <a href="#"><i class="fa fa-circle text-success"></i>Online</a>
                </div>
            </div>
            <ul class="sidebar-menu">
                <li class="header">功能</li>
                <li class="active treeview">
                    <a href="#">
                        <i class="fa fa-home"></i> <span>主页</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="active"><a href="#"><i class="fa fa-circle-o"></i>管理员主页</a></li>
                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-building-o"></i> <span>广场管理</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-circle-o"></i>万达广场</a>
                        </li>
                        <li><a href="#"><i class="fa fa-circle-o"></i>广场商铺</a></li>
                    </ul>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-bank"></i>
                        <span>店铺管理</span>
                        <span class="pull-right-container"></span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="/showAllUser"><i class="fa fa-circle-o"></i>全部</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i>按广场</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i>未出租</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i>待确认</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i>已出租</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="ion ion-ios-albums"></i>
                        <span>订单管理</span>
                        <span class="pull-right-container"></span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-circle-o"></i>全部</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i>未处理</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i>已确认</a></li>
                    </ul>
                </li>

                <li><a href="/showAllUser"><i class="fa fa-book"></i> <span>管理员手册</span></a></li>


                <li class="header">快捷方式</li>
                <li><a href="/addNewCenterPage"><i class="fa fa-circle-o text-red"></i> <span>添加广场</span></a></li>
                <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>添加商铺</span></a></li>
                <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>添加用户</span></a></li>

                <li class="header">其他</li>
                <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>文件上传</span></a></li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Data Tables
                <small>advanced tables</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">Tables</a></li>
                <li class="active">Data tables</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Data Table With Full Features</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>userId</th>
                                    <th>account</th>
                                    <th>userName</th>
                                    <th>userIcon</th>
                                    <th>userPwd</th>
                                    <th>userPwdsalt</th>
                                    <th>userEmail</th>
                                    <th>userTele</th>
                                    <th>userBirthday</th>
                                    <th>userIdnum</th>
                                    <th>userGander</th>
                                    <th>role</th>
                                    <th>registerTime</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="store" items="${userList}">
                                    <tr>
                                        <th>${store.userId}</th>
                                        <th>${store.account}</th>
                                        <th>${store.userName}</th>
                                        <th>${store.userIcon}</th>
                                        <th>${store.userPwd}</th>
                                        <th>${store.userPwdsalt}</th>
                                        <th>${store.userEmail}</th>
                                        <th>${store.userTele}</th>
                                        <th>${store.userBirthday}</th>
                                        <th>${store.userIdnum}</th>
                                        <th>${store.userGander}</th>
                                        <th>${store.role}</th>
                                        <th>${store.registerTime}</th>
                                    </tr>
                                </c:forEach>

                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>userId</th>
                                    <th> account</th>
                                    <th>userName</th>
                                    <th>userIcon</th>
                                    <th>userPwd</th>
                                    <th>userPwdsalt</th>
                                    <th>userEmail</th>
                                    <th>userTele</th>
                                    <th>userBirthday</th>
                                    <th>userIdnum</th>
                                    <th>userGander</th>
                                    <th>role</th>
                                    <th>registerTime</th>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>

                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 2.3.12
        </div>
        <strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
        reserved.
    </footer>
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="../../../../plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../../../bootstrap/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="../../../../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../../../../plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="../../../../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../../../../plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../../../dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../../../dist/js/demo.js"></script>
<!-- page script -->
<script>
    $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false
        });
    });
</script>
</body>
</html>
