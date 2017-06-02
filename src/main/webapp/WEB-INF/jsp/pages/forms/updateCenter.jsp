<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <!-- jQuery 2.2.3 -->
    <script src="../../../../plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script type="text/javascript">
        // 百度地图解析地址
        $(document).ready(function () {
            $("#getLoc").click(function () {
                var myGeo = new BMap.Geocoder();
                var address = $("#centerAddress").val();
                var city = $("#centerCity").val();
                myGeo.getPoint(address, function (point) {
                    if (point) {
//                        alert(point.lng + "    " + point.lat);
                        $("#centerX").val(point.lng);//经度
                        $("#centerY").val(point.lat);//纬度
                    } else {
                        alert("您选择地址没有解析到结果!地址可能有误！！");
                    }
                }, city);
            })
        })
    </script>
    <script type="text/javascript"
            src="http://api.map.baidu.com/api?v=2.0&ak=TL4HwHPFRLmD7rmMYQowPKCeOp2wdck4"></script>


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Advanced form elements</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="../../../../bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../../../../dist/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="../../../../dist/css/ionicons.min.css">
    <!-- daterange picker -->
    <link rel="stylesheet" href="../../../../plugins/daterangepicker/daterangepicker.css">
    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="../../../../plugins/datepicker/datepicker3.css">
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="../../../../plugins/iCheck/all.css">
    <!-- Bootstrap Color Picker -->
    <link rel="stylesheet" href="../../../../plugins/colorpicker/bootstrap-colorpicker.min.css">
    <!-- Bootstrap time Picker -->
    <link rel="stylesheet" href="../../../../plugins/timepicker/bootstrap-timepicker.min.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="../../../../plugins/select2/select2.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../../../dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../../../../dist/css/skins/_all-skins.min.css">

    <%--<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->--%>
    <%--<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->--%>
    <%--<!--[if lt IE 9]>--%>
    <%--<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>--%>
    <%--<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>--%>
    <%--<![endif]-->--%>
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
                Advanced Form Elements
                <small>Preview</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">Forms</a></li>
                <li class="active">Advanced Elements</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="box box-default">
                <div class="box-header with-border">
                    <h3 class="box-title">编辑中心</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="box box-primary">

                        <!-- form start -->

                        <form role="form" action="/updateCenter" method="post">
                            <div class="box-body">
                                <input type="hidden" value="${center.centerId}" name="centerId">
                                <div class="form-group">
                                    <label>城市</label>
                                    <select class="form-control select2" style="width: 100%;" name="centerCity"
                                            id="centerCity">
                                        <option SELECTED="selected">${center.centerCity}</option>
                                        <option>上海市</option>
                                        <option>北京市</option>
                                        <option>广州市</option>
                                        <option>深圳市</option>

                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="centerIntroduction">广场名称</label>
                                    <input type="text" class="form-control" id="centerIntroduction"
                                           placeholder="请输入新广场描述" name="centerIntroduction"
                                           value="${center.centerIntroduction}">
                                </div>
                                <div class="form-group">
                                    <label for="centerAddress">广场地址</label>
                                    <a id="getLoc">&nbsp;&nbsp;&nbsp;&nbsp;解析地址</a>
                                    <input type="text" class="form-control" id="centerAddress"
                                           placeholder="请输入新广场地址...|确认正确后点击解析地址，获取实际经纬度坐标|..."
                                           name="centerAddress" value="${center.centerAddress}">
                                </div>
                                <div class="form-group">
                                    <label for="centerX">坐标地址</label>

                                    <div class="cal-xs-6">
                                        <input type="text" class="form-control" id="centerX"
                                               placeholder="X:" name="centerX" value="${loX}">
                                    </div>
                                    <div class="cal-xs-6">
                                        <input type="text" class="form-control" id="centerY"
                                               placeholder="Y:" name="centerY" value="${loY}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>总楼层数</label>
                                    <select class="form-control" name="floorAmount">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                        <option>7</option>
                                        <option>8</option>
                                        <option>9</option>
                                        <option>10</option>
                                        <option>11</option>
                                        <option>12</option>
                                        <option>13</option>
                                        <option>14</option>
                                        <option>15</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>广场状态 ( 完成1 / 在建0 )</label>
                                    <select class="form-control" name="isFinished">
                                        <option>0</option>
                                        <option>1</option>
                                    </select>
                                </div>


                                <div class="form-group">
                                    <label for="storesAmount">总商铺数量</label>
                                    <input type="text" class="form-control" id="storesAmount"
                                           placeholder="请输入商铺数量" name="storesAmount" value="${center.storesAmount}">
                                </div>
                                <div class="form-group">
                                    <label for="parkingPlace">总停车位数量</label>
                                    <input type="text" class="form-control" id="parkingPlace"
                                           placeholder="请输入停车位数量" name="parkingPlace" value="${center.parkingPlace}">
                                </div>

                                <%--<div class="form-group">--%>
                                <%--<label for="exampleInputPassword1">Password</label>--%>
                                <%--<input type="password" class="form-control" id="exampleInputPassword1"--%>

                                <%--placeholder="Password">--%>
                                <%--</div>--%>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>


                    </div>
                </div>
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
<!-- Bootstrap 3.3.7 -->
<script src="../../../../bootstrap/js/bootstrap.min.js"></script>
<!-- Select2 -->
<script src="../../../../plugins/select2/select2.full.min.js"></script>
<!-- InputMask -->
<script src="../../../../plugins/input-mask/jquery.inputmask.js"></script>
<script src="../../../../plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="../../../../plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- date-range-picker -->
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>--%>
<script src="../../../../plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap datepicker -->
<script src="../../../../plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- bootstrap color picker -->
<script src="../../../../plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="../../../../plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="../../../../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- iCheck 1.0.1 -->
<script src="../../../../plugins/iCheck/icheck.min.js"></script>
<!-- FastClick -->
<script src="../../../../plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../../../dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../../../dist/js/demo.js"></script>
<!-- Page script -->
<script>
    $(function () {
        //Initialize Select2 Elements
        $(".select2").select2();

        //Datemask dd/mm/yyyy
        $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
        //Datemask2 mm/dd/yyyy
        $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
        //Money Euro
        $("[data-mask]").inputmask();

        //Date range picker
        $('#reservation').daterangepicker();
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
        //Date range as a button
        $('#daterange-btn').daterangepicker(
            {
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                startDate: moment().subtract(29, 'days'),
                endDate: moment()
            },
            function (start, end) {
                $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            }
        );

        //Date picker
        $('#datepicker').datepicker({
            autoclose: true
        });

        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
            checkboxClass: 'icheckbox_minimal-blue',
            radioClass: 'iradio_minimal-blue'
        });
        //Red color scheme for iCheck
        $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
            checkboxClass: 'icheckbox_minimal-red',
            radioClass: 'iradio_minimal-red'
        });
        //Flat red color scheme for iCheck
        $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
            checkboxClass: 'icheckbox_flat-green',
            radioClass: 'iradio_flat-green'
        });

        //Colorpicker
        $(".my-colorpicker1").colorpicker();
        //color picker with addon
        $(".my-colorpicker2").colorpicker();

        //Timepicker
        $(".timepicker").timepicker({
            showInputs: false
        });
    });
</script>
</body>
</html>

