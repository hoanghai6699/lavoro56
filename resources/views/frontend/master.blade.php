<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Lavoro</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{csrf_token()}}">
        
        <!-- Favicon
        ============================================ -->
        <link rel="shortcut icon" type="image/x-icon" href="{{url('/')}}/public/frontend/img/favicon.ico">
        
        <!-- Fonts
        ============================================ -->
        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
        
        <!-- CSS  -->
        
        <!-- Bootstrap CSS
        ============================================ -->      
        <link rel="stylesheet" href="{{url('/')}}/public/frontend/css/bootstrap.min.css">
        <link href="{{url('/')}}/public/admin/toastr.min.css" rel="stylesheet">
        
        <!-- owl.carousel CSS
        ============================================ -->      
        <link rel="stylesheet" href="{{url('/')}}/public/frontend/css/owl.carousel.css">
        
        <!-- owl.theme CSS
        ============================================ -->      
        <link rel="stylesheet" href="{{url('/')}}/public/frontend/css/owl.theme.css">
            
        <!-- owl.transitions CSS
        ============================================ -->      
        <link rel="stylesheet" href="{{url('/')}}/public/frontend/css/owl.transitions.css">
        
        <!-- font-awesome.min CSS
        ============================================ -->      
        <link rel="stylesheet" href="{{url('/')}}/public/frontend/css/font-awesome.min.css">
        
        <!-- font-icon CSS
        ============================================ -->      
        <link rel="stylesheet" href="{{url('/')}}/public/frontend/fonts/font-icon.css">
        
        <!-- jquery-ui CSS
        ============================================ -->
        <link rel="stylesheet" href="{{url('/')}}/public/frontend/css/jquery-ui.css">
        
        <!-- mobile menu CSS
        ============================================ -->
        <link rel="stylesheet" href="{{url('/')}}/public/frontend/css/meanmenu.min.css">
        
        <!-- nivo slider CSS
        ============================================ -->
        <link rel="stylesheet" href="{{url('/')}}/public/frontend/custom-slider/css/nivo-slider.css" type="text/css" />
        <link rel="stylesheet" href="{{url('/')}}/public/frontend/custom-slider/css/preview.css" type="text/css" media="screen" />
        
        <!-- animate CSS
        ============================================ -->         
        <link rel="stylesheet" href="{{url('/')}}/public/frontend/css/animate.css">
        
        <!-- normalize CSS
        ============================================ -->        
        <link rel="stylesheet" href="{{url('/')}}/public/frontend/css/normalize.css">
   
        <!-- main CSS
        ============================================ -->          
        <link rel="stylesheet" href="{{url('/')}}/public/frontend/css/main.css">
        
        <!-- style CSS
        ============================================ -->          
        <link rel="stylesheet" href="{{url('/')}}/public/frontend/style.css">
        
        <!-- responsive CSS
        ============================================ -->          
        <link rel="stylesheet" href="{{url('/')}}/public/frontend/css/responsive.css">
        
        <script src="{{url('/')}}/public/frontend/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body class="home-one">
        <header class="short-stor">
            <div class="container-fluid">
                <div class="row">
                    <!-- logo start -->
                    <div class="col-md-3 col-sm-12 text-center nopadding-right">
                        <div class="top-logo">
                            <a href="{{route('frontend.get.home')}}"><img src="{{url('/')}}/public/frontend/img/logo.gif" alt="" /></a>
                        </div>
                    </div>
                    <div class="col-md-6 text-center">
                        <div class="mainmenu">
                            <nav>
                                <ul>
                                    <li class="expand"><a href="{{route('frontend.get.home')}}">{!! trans('message.home') !!}</a></li>
                                    <li class="expand"><a href="#">{!! trans('message.product') !!}</a>
                                    	<div class="restrain mega-menu megamenu2">
                                            <?php 
                                                $menu_1 = DB::table('categories')->where('parent_id',0)->get();
                                            ?>
                                            @foreach($menu_1 as $item_1)
                                            @if($item_1->active==1)
                                            <span class="block-last">
                                                <a class="mega-menu-title">{{$item_1->name}}</a>
                                                <?php  
                                                    $menu_2 = DB::table('categories')->where('parent_id',$item_1->id)->get();
                                                ?>
                                                @foreach($menu_2 as $item_2)
                                                @if($item_2->active==1)
                                                <a href="{{route('frontend.get.loaisanpham',[$item_2->id,$item_2->slug])}}">{{$item_2->name}}</a>
                                                @endif
                                                @endforeach
                                            </span>
                                            @endif
                                            @endforeach
                                        </div>
                                    </li>
                                    
                                    <li class="expand"><a href="{{route('tin-tuc')}}">{!! trans('message.news') !!}</a></li>
                                    <li class="expand"><a href="">{!! trans('message.about') !!}</a></li>
                                    <li class="expand"><a href="{{route('lien-he')}}">{!! trans('message.contact') !!}</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!-- mainmenu area end -->
                    <!-- top details area start -->
                    <div class="col-md-3 col-sm-12 nopadding-left">
                        <div class="top-detail">
                            <div class="disflow">
                                <div class="expand lang-all disflow">
                                    <a href="{{route('change-language',['en'])}}">EN</a>
                                    <a href="{{route('change-language',['vi'])}}">VN</a>
                                </div>
                            </div>
                            <div class="disflow">
                                <div class="circle-shopping expand">
                                    <div class="shopping-carts text-right">
                                        <div class="cart-toggler">
                                            <a href="{{route('shoppingcart.get.giohang')}}"><i class="icon-bag"></i></a>
                                            <a href="{{route('shoppingcart.get.giohang')}}"><span class="cart-quantity">{{Cart::count()}}</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- addcart top start -->
                            <!-- search divition start -->
                            <div class="disflow">
                                <div class="header-search expand">
                                    <div class="search-icon fa fa-search"></div>
                                    <div class="product-search restrain">
                                        <div class="container nopadding-right">
                                            <form action="index.html" id="searchform" method="get">
                                                <div class="input-group">
                                                    <input type="text" class="form-control" maxlength="128" placeholder="Search product...">
                                                    <span class="input-group-btn">
                                                        <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                                                    </span>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- search divition end -->
                            <div class="disflow">
                                <div class="expand dropps-menu">
                                    @if(Auth::check())
                                    <a>{{Auth::user()->name}} <i class="fa fa-align-right"></i></a>
                                    <ul class="restrain language">
                                        @if(Auth::user()->level==1)
                                        <li><a href="{{route('admin')}}">{!! trans('message.manage') !!}</a></li>
                                        <li><a href="{{route('shoppingcart.get.giohang')}}">{!! trans('message.cart') !!}</a></li>
                                        <li><a href="{{route('home.logout')}}">{!! trans('message.logout') !!}</a></li>
                                        @else
                                        <li><a href="{{route('shoppingcart.get.giohang')}}">{!! trans('message.cart') !!}</a></li>
                                        <li><a href="{{route('home.logout')}}">{!! trans('message.logout') !!}</a></li>
                                        @endif
                                    </ul>
                                    @else
                                    <a><i class="fa fa-align-right"></i></a>
                                    <ul class="restrain language">
                                        <li><a href="{{route('home.login')}}">{!! trans('message.login') !!}</a></li>
                                        <li><a href="{{route('register')}}">{!! trans('message.register') !!}</a></li>
                                    </ul>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        @yield('content')
        <footer>
            <div class="top-footer-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-4">
                            <div class="single-snap-footer">
                                <div class="snap-footer-title">
                                    <h4>Company info</h4>
                                </div>
                                <div class="cakewalk-footer-content">
                                    <p class="footer-des">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim adm.</p>
                                    <a href="#" class="read-more">Read more</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <div class="single-snap-footer">
                                <div class="snap-footer-title">
                                    <h4>Information</h4>
                                </div>
                                <div class="cakewalk-footer-content">
                                    <ul>
                                        <li><a href="#">About Us</a></li>
                                        <li><a href="#">Careers</a></li>
                                        <li><a href="#">Delivery Information</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                        <li><a href="#">Terms & Condition</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-4">
                            <div class="single-snap-footer">
                                <div class="snap-footer-title">
                                    <h4>Fashion Tags</h4>
                                </div>
                                <div class="cakewalk-footer-content">
                                    <ul>
                                        <li><a href="#">My Account</a></li>
                                        <li><a href="#">Login</a></li>
                                        <li><a href="#">My Cart</a></li>
                                        <li><a href="#">Wishlist</a></li>
                                        <li><a href="#">Checkout</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 hidden-sm">
                            <div class="single-snap-footer">
                                <div class="snap-footer-title">
                                    <h4>Fashion Tags</h4>
                                </div>
                                <div class="cakewalk-footer-content">
                                    <ul>
                                        <li><a href="#">Sitemap</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                        <li><a href="#">Advanced Search</a></li>
                                        <li><a href="#">Affiliates</a></li>
                                        <li><a href="#">Contact Us</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 hidden-sm">
                            <div class="single-snap-footer">
                                <div class="snap-footer-title">
                                    <h4>Follow Us</h4>
                                </div>
                                <div class="cakewalk-footer-content social-footer">
                                    <ul>
                                        <li><a href="https://www.facebook.com" target="_blank"><i class="fa fa-facebook"></i></a><span> Facebook</span></li>
                                        <li><a href="https://plus.google.com/" target="_blank"><i class="fa fa-google-plus"></i></a><span> Google Plus</span></li>
                                        <li><a href="https://twitter.com/" target="_blank"><i class="fa fa-twitter"></i></a><span> Twitter</span></li>
                                        <li><a href="https://youtube.com/" target="_blank"><i class="fa fa-youtube-play"></i></a><span> Youtube</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>  
            <!-- top footer area end -->
            <!-- info footer start -->
            <div class="info-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-4">
                            <div class="info-fcontainer">
                                <div class="infof-icon">
                                    <i class="fa fa-map-marker"></i>
                                </div>
                                <div class="infof-content">
                                    <h3>Our Address</h3>
                                    <p>Main Street, Banasree, Dhaka</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <div class="info-fcontainer">
                                <div class="infof-icon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div class="infof-content">
                                    <h3>Phone Support</h3>
                                    <p>+88 0173 7803547</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <div class="info-fcontainer">
                                <div class="infof-icon">
                                    <i class="fa fa-envelope"></i>
                                </div>
                                <div class="infof-content">
                                    <h3>Email Support</h3>
                                    <p>admin@bootexperts.com</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 hidden-sm">
                            <div class="info-fcontainer">
                                <div class="infof-icon">
                                    <i class="fa fa-clock-o"></i>
                                </div>
                                <div class="infof-content">
                                    <h3>Openning Hour</h3>
                                    <p>Sat - Thu : 9:00 am - 22:00 pm</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- info footer end -->
            <!-- banner footer area start -->
            
            <!-- banner footer area end -->
            <!-- footer address area start -->
            <div class="address-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-xs-12">
                            <address>Copyright © <a>Nguyễn Hoàng Hải</a> Khóa luận tốt nghiệp</address>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="footer-payment pull-right">
                                <a href="#"><img src="{{url('/')}}/public/frontend/img/payment.png" alt="" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- footer address area end -->
        </footer>
        <!-- FOOTER END -->
        
        <!-- JS -->
        
        <!-- jquery-1.11.3.min js
        ============================================ -->         
        <script src="{{url('/')}}/public/frontend/js/vendor/jquery-1.11.3.min.js"></script>
        
        <!-- bootstrap js
        ============================================ -->         
        <script src="{{url('/')}}/public/frontend/js/bootstrap.min.js"></script>
        
        <!-- Nivo slider js
        ============================================ -->        
        <script src="{{url('/')}}/public/frontend/custom-slider/js/jquery.nivo.slider.js" type="text/javascript"></script>
        <script src="{{url('/')}}/public/frontend/custom-slider/home.js" type="text/javascript"></script>
        
        <!-- owl.carousel.min js
        ============================================ -->       
        <script src="{{url('/')}}/public/frontend/js/owl.carousel.min.js"></script>
        
        <!-- jquery scrollUp js 
        ============================================ -->
        <script src="{{url('/')}}/public/frontend/js/jquery.scrollUp.min.js"></script>
        
        <!-- price-slider js
        ============================================ --> 
        <script src="{{url('/')}}/public/frontend/js/price-slider.js"></script>
        
        <!-- elevateZoom js 
        ============================================ -->
        <script src="{{url('/')}}/public/frontend/js/jquery.elevateZoom-3.0.8.min.js"></script>
        
        <!-- jquery.bxslider.min.js
        ============================================ -->       
        <script src="{{url('/')}}/public/frontend/js/jquery.bxslider.min.js"></script>
        
        <!-- mobile menu js
        ============================================ -->  
        <script src="{{url('/')}}/public/frontend/js/jquery.meanmenu.js"></script>  
        
        <!-- wow js
        ============================================ -->       
        <script src="{{url('/')}}/public/frontend/js/wow.js"></script>
        
        <!-- plugins js
        ============================================ -->         
        <script src="{{url('/')}}/public/frontend/js/plugins.js"></script>
        <script src="{{url('/')}}/public/frontend/js/gmap.js"></script>
        
        <!-- main js
        ============================================ -->           
        <script src="{{url('/')}}/public/frontend/js/main.js"></script>
        <script src="{{url('/')}}/public/admin/js/myscript.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
   
        <script type="text/javascript" src="{{url('/')}}/public/admin/toastr.min.js"></script>

        <script>
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            })
        </script>
        @yield('script')
    </body>
</html>