<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Admin</title>
        <meta name="csrf-token" content="{{csrf_token()}}">
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="{{url('/')}}/public/admin/bower_components/bootstrap/dist/css/bootstrap.min.css">
        <link href="{{url('/')}}/public/admin/toastr.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="{{url('/')}}/public/admin/bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="{{url('/')}}/public/admin/bower_components/Ionicons/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="{{url('/')}}/public/admin/dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="{{url('/')}}/public/admin/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
        <link rel="stylesheet" href="{{url('/')}}/public/admin/dist/css/skins/_all-skins.min.css">
        <!-- Morris chart -->
        <link rel="stylesheet" href="{{url('/')}}/public/admin/bower_components/morris.js/morris.css">
        <!-- jvectormap -->
        <link rel="stylesheet" href="{{url('/')}}/public/admin/bower_components/jvectormap/jquery-jvectormap.css">
        <!-- Date Picker -->
        <link rel="stylesheet" href="{{url('/')}}/public/admin/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="{{url('/')}}/public/admin/bower_components/bootstrap-daterangepicker/daterangepicker.css">
        <!-- bootstrap wysihtml5 - text editor -->
        <link rel="stylesheet" href="{{url('/')}}/public/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
        <script type="text/javascript" src="{{url('/')}}/public/admin/bower_components/ckeditor/ckeditor.js"></script>
        <script type="text/javascript" src="{{url('/')}}/public/admin/bower_components/ckfinder/ckfinder.js"></script>
        <script type="text/javascript">
            var baseURL = "{!! url('/') !!}";
        </script>
        <script type="text/javascript" src="{{url('/')}}/public/admin/bower_components/func_ckfinder.js"></script>
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <header class="main-header">
                <!-- Logo -->
                <a href="{{route('frontend.get.home')}}" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>L</b>a</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Lavoro</b></span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    </a>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <li class="dropdown notifications-menu">
                                @if(Auth::user()->level == 1)
                                    <?php $user = Auth::user();
                                    ?>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-bell-o"></i>
                                <span class="label label-warning ">@if (count($user->unreadNotifications) > 0) {{ count($user->unreadNotifications) }}@else 0 @endif</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">Bạn có @if (count($user->unreadNotifications) > 0) {{ count($user->unreadNotifications) }}@else 0 @endif thông báo mới</li>
                                    <li style="width: 294px;">
                                        <ul class="menu">
                                            @foreach($user->notifications as $key => $notification)
                                            <?php $data_noti = $notification->data;
                                                $data_order_Detail = $data_noti['orderDetail'];
                                                $date = $data_noti['orderCreatedTime'];
                                                $date = \Carbon\Carbon::parse($date['date']);
                                                $after_format = $date->format('d-m-Y H:i:s');

                                                $hightLigth = "color: #007f7f";
                                                if($notification->read_at != null){
                                                    $hightLigth = "color: #7f7f7f";
                                                }
                                            ?>
                                            <li><a href="{{route('admin.get.view.order',$data_order_Detail['id'])}}" style="{{$hightLigth}}">Đơn đặt hàng mới nhất: {{$after_format}}</a></li>
                                            <?php $notification->markAsRead(); ?>
                                            @endforeach
                                        </ul>
                                    </li>
                                </ul>
                                @endif
                            </li>
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <span class="hidden-xs">Xin chào {!! Auth::user()->name !!}</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <p>
                                            {{Auth::user()->email}}
                                            <small>Web Developer</small>
                                        </p>
                                    </li>
                                    <li class="user-footer">
                                        <div class="pull-right">
                                            <a href="{!! route('logout') !!}" class="btn btn-default btn-flat">Đăng xuất</a>
                                        </div>
                                    </li>
                                </ul>
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
                            <img src="{{url('/')}}/public/admin/img/8.jpg" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p>{{Auth::user()->name}}</p>
                            <a><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                            <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                            </button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu" data-widget="tree">
                        <li class="{{\Request::route()->getName()=='admin'?'active':''}}">
                            <a href="{{route('admin')}}">
                            <i class="fa fa-dashboard"></i> <span>Trang tổng quan</span></a>
                        </li>
                        <li class="{{\Request::route()->getName()=='admin.get.list.category' ? 'active' : '' }} treeview">
                            <a href="#">
                            <i class="fa fa-th"></i> <span>Danh mục</span>
                            <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                            </span>
                            </a>
                            <ul class="treeview-menu">
                                <li class="{{\Request::route()->getName()=='admin.get.list.category'?'active':''}}"><a href="{!!route('admin.get.list.category')!!}"><i class="fa fa-circle-o"></i> Quản lý danh mục</a></li>
                                <li class="{{\Request::route()->getName()=='admin.get.add.category'?'active':''}}"><a href="{!!route('admin.get.add.category')!!}"><i class="fa fa-circle-o"></i> Thêm mới</a></li>
                            </ul>
                        </li>
                        <li class="{{\Request::route()->getName()=='admin.get.list.product' ? 'active' : '' }} treeview">
                            <a href="#">
                            <i class="fa fa-product-hunt"></i> <span>Sản phẩm</span>
                            <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                            </span>
                            </a>
                            <ul class="treeview-menu">
                                <li class="{{\Request::route()->getName()=='admin.get.list.product'?'active':''}}"><a href="{!!route('admin.get.list.product')!!}"><i class="fa fa-circle-o"></i> Quản lý sản phẩm</a></li>
                                <li class="{{\Request::route()->getName()=='admin.get.add.product'?'active':''}}"><a href="{!!route('admin.get.add.product')!!}"><i class="fa fa-circle-o"></i> Thêm mới</a></li>
                            </ul>
                        </li>
                        <li class="{{\Request::route()->getName()=='admin.get.list.article' ? 'active' : '' }} treeview">
                            <a href="#">
                            <i class="fa fa-newspaper-o"></i> <span>Tin tức</span>
                            <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                            </span>
                            </a>
                            <ul class="treeview-menu">
                                <li class="{{\Request::route()->getName()=='admin.get.list.article'?'active':''}}"><a href="{!!route('admin.get.list.article')!!}"><i class="fa fa-circle-o"></i> Quản lý bài viết</a></li>
                                <li class="{{\Request::route()->getName()=='admin.get.add.article'?'active':''}}"><a href="{!!route('admin.get.add.article')!!}"><i class="fa fa-circle-o"></i> Thêm mới</a></li>
                            </ul>
                        </li>
                        <li class="{{\Request::route()->getName()=='admin.get.list.order'?'active':''}}">
                            <a href="{!!route('admin.get.list.order')!!}">
                            <i class="fa fa-cart-arrow-down"></i> <span>Đơn hàng</span></a>
                        </li>
                        <li class="{{\Request::route()->getName()=='admin.get.list.user' ? 'active' : '' }} treeview">
                            <a href="#">
                            <i class="fa fa-user-o"></i> <span>Thành viên</span>
                            <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                            </span>
                            </a>
                            <ul class="treeview-menu">
                                <li class="{{\Request::route()->getName()=='admin.get.list.user'?'active':''}}"><a href="{!!route('admin.get.list.user')!!}"><i class="fa fa-circle-o"></i> Quản lý thành viên</a></li>
                                <li class="{{\Request::route()->getName()=='admin.get.add.user'?'active':''}}"><a href="{!!route('admin.get.add.user')!!}"><i class="fa fa-circle-o"></i> Thêm mới</a></li>
                            </ul>
                        </li>
                        <li class="{{\Request::route()->getName()=='admin.get.list.warehouse' ? 'active' : '' }} treeview">
                            <a href="#">
                            <i class="fa fa-shopping-bag"></i> <span>Kho hàng</span>
                            <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                            </span>
                            </a>
                            <ul class="treeview-menu">
                                <li class="{{\Request::route()->getName()=='admin.get.list.warehouse'?'active':''}}"><a href="{!!route('admin.get.list.warehouse')!!}"><i class="fa fa-circle-o"></i> Danh sách kho hàng</a></li>
                                <li class="{{\Request::route()->getName()=='admin.get.hang-ton'?'active':''}}"><a href="{!!route('admin.get.hang-ton')!!}"><i class="fa fa-circle-o"></i> Hàng tồn</a></li>
                            </ul>
                        </li>
                        <li class="{{\Request::route()->getName()=='admin.get.list.sale' ? 'active' : '' }} treeview">
                            <a href="#">
                            <i class="fa fa-money"></i> <span>Khuyến mãi</span>
                            <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                            </span>
                            </a>
                            <ul class="treeview-menu">
                                <li class="{{\Request::route()->getName()=='admin.get.list.sale'?'active':''}}"><a href="{!!route('admin.get.list.sale')!!}"><i class="fa fa-circle-o"></i> Danh sách khuyến mãi</a></li>
                                <li class="{{\Request::route()->getName()=='admin.get.add.sale'?'active':''}}"><a href="{!!route('admin.get.add.sale')!!}"><i class="fa fa-circle-o"></i> Thêm mới</a></li>
                            </ul>
                        </li>
                        <li class="{{\Request::route()->getName()=='admin.get.list.coupon' ? 'active' : '' }} treeview">
                            <a href="#">
                            <i class="fa fa-cc"></i> <span>Mã giảm giá</span>
                            <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                            </span>
                            </a>
                            <ul class="treeview-menu">
                                <li class="{{\Request::route()->getName()=='admin.get.list.coupon'?'active':''}}"><a href="{!!route('admin.get.list.coupon')!!}"><i class="fa fa-circle-o"></i> Danh sách mã giảm giá</a></li>
                                <li class="{{\Request::route()->getName()=='admin.get.add.coupon'?'active':''}}"><a href="{!!route('admin.get.add.coupon')!!}"><i class="fa fa-circle-o"></i> Thêm mới</a></li>
                            </ul>
                        </li>
                        <li class="{{\Request::route()->getName()=='admin.get.list.slide' ? 'active' : '' }} treeview">
                            <a href="#">
                            <i class="fa fa-caret-square-o-right"></i> <span>Slide</span>
                            <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                            </span>
                            </a>
                            <ul class="treeview-menu">
                                <li class="{{\Request::route()->getName()=='admin.get.list.slide'?'active':''}}"><a href="{!!route('admin.get.list.slide')!!}"><i class="fa fa-circle-o"></i> Danh sách slide</a></li>
                                <li class="{{\Request::route()->getName()=='admin.get.add.slide'?'active':''}}"><a href="{!!route('admin.get.add.slide')!!}"><i class="fa fa-circle-o"></i> Thêm mới</a></li>
                            </ul>
                        </li>
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>
            @yield('content')
            <!-- /.content-wrapper -->
            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 2.4.0
                </div>
                <strong>Copyright &copy; 2019-2020 Studio.</strong> All rights
                reserved.
            </footer>
 
        </div>
        <!-- ./wrapper -->
        <!-- jQuery 3 -->
        <script src="{{url('/')}}/public/admin/bower_components/jquery/dist/jquery.min.js"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="{{url('/')}}/public/admin/bower_components/jquery-ui/jquery-ui.min.js"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
            $.widget.bridge('uibutton', $.ui.button);
        </script>
        <!-- Bootstrap 3.3.7 -->
        <script src="{{url('/')}}/public/admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- Morris.js charts -->
        <script src="{{url('/')}}/public/admin/bower_components/raphael/raphael.min.js"></script>
        <script src="{{url('/')}}/public/admin/bower_components/morris.js/morris.min.js"></script>
        <!-- Sparkline -->
        <script src="{{url('/')}}/public/admin/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
        <!-- jvectormap -->
        <script src="{{url('/')}}/public/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="{{url('/')}}/public/admin/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <!-- jQuery Knob Chart -->
        <script src="{{url('/')}}/public/admin/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
        <!-- daterangepicker -->
        <script src="{{url('/')}}/public/admin/bower_components/moment/min/moment.min.js"></script>
        <script src="{{url('/')}}/public/admin/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
        <!-- datepicker -->
        <script src="{{url('/')}}/public/admin/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
        <!-- Bootstrap WYSIHTML5 -->
        <script src="{{url('/')}}/public/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
        <!-- Slimscroll -->
        <script src="{{url('/')}}/public/admin/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="{{url('/')}}/public/admin/bower_components/fastclick/lib/fastclick.js"></script>
        <script src="{{url('/')}}/public/admin/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="{{url('/')}}/public/admin/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
        <!-- AdminLTE App -->
        <script src="{{url('/')}}/public/admin/dist/js/adminlte.min.js"></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <!-- <script src="{{url('/')}}/public/admin/dist/js/pages/dashboard.js"></script> -->
        <!-- AdminLTE for demo purposes -->
        <script src="{{url('/')}}/public/admin/dist/js/demo.js"></script>
        <script type="text/javascript" src="{{url('/')}}/public/admin/toastr.min.js"></script>
        <script>
            $(function () {
              $('#example1').DataTable()
            })
        </script>
        <script>
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            })
        </script>
        <script src="{{url('/')}}/public/admin/js/myscript.js"></script>
        @yield('script')
    </body>
</html>