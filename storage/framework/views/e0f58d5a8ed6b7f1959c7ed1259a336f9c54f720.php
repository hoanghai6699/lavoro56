<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Lavoro - <?php echo $__env->yieldContent('title'); ?></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
        
        <!-- Favicon
        ============================================ -->
        <link rel="shortcut icon" type="image/x-icon">
        
        <!-- Fonts
        ============================================ -->
        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
        
        <!-- CSS  -->
        
        <!-- Bootstrap CSS
        ============================================ -->      
        <link rel="stylesheet" href="<?php echo e(url('/public')); ?>/frontend/css/bootstrap.min.css">
        <link href="<?php echo e(url('/public')); ?>/admin/toastr.min.css" rel="stylesheet">
        
        <!-- owl.carousel CSS
        ============================================ -->      
        <link rel="stylesheet" href="<?php echo e(url('/public')); ?>/frontend/css/owl.carousel.css">
        
        <!-- owl.theme CSS
        ============================================ -->      
        <link rel="stylesheet" href="<?php echo e(url('/public')); ?>/frontend/css/owl.theme.css">
            
        <!-- owl.transitions CSS
        ============================================ -->      
        <link rel="stylesheet" href="<?php echo e(url('/public')); ?>/frontend/css/owl.transitions.css">
        
        <!-- font-awesome.min CSS
        ============================================ -->      
        <link rel="stylesheet" href="<?php echo e(url('/public')); ?>/frontend/css/font-awesome.min.css">
        
        <!-- font-icon CSS
        ============================================ -->      
        <link rel="stylesheet" href="<?php echo e(url('/public')); ?>/frontend/fonts/font-icon.css">
        
        <!-- jquery-ui CSS
        ============================================ -->
        <link rel="stylesheet" href="<?php echo e(url('/public')); ?>/frontend/css/jquery-ui.css">
        
        <!-- mobile menu CSS
        ============================================ -->
        <link rel="stylesheet" href="<?php echo e(url('/public')); ?>/frontend/css/meanmenu.min.css">
        
        <!-- nivo slider CSS
        ============================================ -->
        <link rel="stylesheet" href="<?php echo e(url('/public')); ?>/frontend/custom-slider/css/nivo-slider.css" type="text/css" />
        <link rel="stylesheet" href="<?php echo e(url('/public')); ?>/frontend/custom-slider/css/preview.css" type="text/css" media="screen" />
        
        <!-- animate CSS
        ============================================ -->         
        <link rel="stylesheet" href="<?php echo e(url('/public')); ?>/frontend/css/animate.css">
        
        <!-- normalize CSS
        ============================================ -->        
        <link rel="stylesheet" href="<?php echo e(url('/public')); ?>/frontend/css/normalize.css">
   
        <!-- main CSS
        ============================================ -->          
        <link rel="stylesheet" href="<?php echo e(url('/public')); ?>/frontend/css/main.css">
        
        <!-- style CSS
        ============================================ -->          
        <link rel="stylesheet" href="<?php echo e(url('/public')); ?>/frontend/style.css">
        
        <!-- responsive CSS
        ============================================ -->          
        <link rel="stylesheet" href="<?php echo e(url('/public')); ?>/frontend/css/responsive.css">
        
        <script src="<?php echo e(url('/public')); ?>/frontend/js/vendor/modernizr-2.8.3.min.js"></script>

    </head>
    <body class="home-one">
        <div class="sticky-header">
            <header class="short-stor">
            <div class="container-fluid">
                
                    <div class="row">
                        
                        
                            <!-- logo start -->
                            <div class="col-md-3 col-sm-12 text-center nopadding-right">
                                <div class="top-logo">
                                    <a href="<?php echo e(route('frontend.get.home')); ?>"><img src="<?php echo e(url('/public')); ?>/frontend/img/logo.gif" alt="" /></a>
                                </div>
                            </div>
                            <div class="col-md-6 text-center">
                                <div class="mainmenu">
                                    <nav>
                                        <ul>
                                            <li class="expand"><a href="<?php echo e(route('frontend.get.home')); ?>"><?php echo trans('message.home'); ?></a></li>
                                            <li class="expand"><a href="<?php echo e(route('frontend.get.sanpham')); ?>"><?php echo trans('message.product'); ?></a>
                                                <div class="restrain mega-menu megamenu2">
                                                    <?php 
                                                        $menu_1 = DB::table('categories')->where('parent_id',0)->get();
                                                    ?>
                                                    <?php $__currentLoopData = $menu_1; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_1): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <?php if($item_1->active==1): ?>
                                                    <span class="block-last">
                                                        <a class="mega-menu-title"><?php echo e($item_1->name); ?></a>
                                                        <?php  
                                                            $menu_2 = DB::table('categories')->where('parent_id',$item_1->id)->get();
                                                        ?>
                                                        <?php $__currentLoopData = $menu_2; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_2): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <?php if($item_2->active==1): ?>
                                                        <a href="<?php echo e(route('frontend.get.loaisanpham',[$item_2->id,$item_2->slug])); ?>"><?php echo e($item_2->name); ?></a>
                                                        <?php endif; ?>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    </span>
                                                    <?php endif; ?>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </div>
                                            </li>
                                            
                                            <li class="expand"><a href="<?php echo e(route('tin-tuc')); ?>"><?php echo trans('message.news'); ?></a></li>
                                            <li class="expand"><a href="<?php echo e(route('gioi-thieu')); ?>"><?php echo trans('message.about'); ?></a></li>
                                            <li class="expand"><a href="<?php echo e(route('lien-he')); ?>"><?php echo trans('message.contact'); ?></a></li>
                                        </ul>
                                    </nav>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 mobile-menu-area">
                                        <div class="mobile-menu hidden-md hidden-lg" id="mob-menu">
                                            <span class="mobile-menu-title">Menu</span>
                                            <nav>
                                                <ul>
                                                    <li class="expand"><a href="<?php echo e(route('frontend.get.home')); ?>"><?php echo trans('message.home'); ?></a></li>
                                                    <li><a href="<?php echo e(route('frontend.get.sanpham')); ?>"><?php echo trans('message.product'); ?></a>
                                                        <ul>
                                                            <?php 
                                                                $menu_m1 = DB::table('categories')->where('parent_id',0)->get();
                                                            ?>
                                                            <?php $__currentLoopData = $menu_m1; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_m1): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <?php if($item_m1->active==1): ?>
                                                            <li><a href="shop-list.html"><?php echo e($item_m1->name); ?></a>
                                                                <ul>
                                                                    <?php  
                                                                    $menu_m2 = DB::table('categories')->where('parent_id',$item_m1->id)->get();
                                                                ?>
                                                                <?php $__currentLoopData = $menu_m2; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_m2): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                <?php if($item_m2->active==1): ?>
                                                                    <li><a href="<?php echo e(route('frontend.get.loaisanpham',[$item_m2->id,$item_m2->slug])); ?>"><?php echo e($item_m2->name); ?></a></li>
                                                                <?php endif; ?>
                                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                </ul>
                                                            </li>
                                                            <?php endif; ?>
                                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                        </ul>
                                                    </li>
                                                    <li class="expand"><a href="<?php echo e(route('tin-tuc')); ?>"><?php echo trans('message.news'); ?></a></li>
                                                    <li class="expand"><a href="<?php echo e(route('gioi-thieu')); ?>"><?php echo trans('message.about'); ?></a></li>
                                                    <li class="expand"><a href="<?php echo e(route('lien-he')); ?>"><?php echo trans('message.contact'); ?></a></li>
                                                </ul>
                                            </nav>
                                        </div>                      
                                    </div>
                                </div>
                            </div>
                            <!-- mainmenu area end -->
                            <!-- top details area start -->
                            <div class="col-md-3 col-sm-12 nopadding-left">
                                <div class="top-detail">
                                    <div class="disflow">
                                        <div class="expand lang-all disflow">
                                            <a href="<?php echo e(route('change-language',['en'])); ?>" data-toggle="tooltip" data-placement="top" title="<?php echo e(trans('message.english')); ?>">EN</a>
                                            <a href="<?php echo e(route('change-language',['vi'])); ?>" data-toggle="tooltip" data-placement="top" title="<?php echo e(trans('message.vietnam')); ?>">VN</a>
                                        </div>
                                    </div>
                                    <div class="disflow">
                                        <div class="circle-shopping expand">
                                            <div class="shopping-carts text-right">
                                                <div class="cart-toggler" data-toggle="tooltip" data-placement="top" title="<?php echo e(trans('message.cart')); ?>">
                                                    <a href="<?php echo e(route('shoppingcart.get.giohang')); ?>"><i class="icon-bag"></i></a>
                                                    <a href="<?php echo e(route('shoppingcart.get.giohang')); ?>"><span class="cart-quantity"><?php echo e(Cart::count()); ?></span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- addcart top start -->
                                    <!-- search divition start -->
                                    <div class="disflow">
                                        <div class="header-search expand">
                                            <div class="search-icon fa fa-search" data-toggle="tooltip" data-placement="top" title="<?php echo e(trans('message.search')); ?>"></div>
                                            <div class="product-search restrain">
                                                <div class="container nopadding-right">
                                                    <form action="<?php echo e(route('frontend.get.sanpham')); ?>" id="searchform" method="get">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control" name="k" maxlength="128" placeholder="<?php echo e(trans('message.search product')); ?>...">
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
                                            <?php if(Auth::check()): ?>
                                            <a><?php echo e(Auth::user()->name); ?> <i class="fa fa-align-right"></i></a>
                                            <ul class="restrain language">
                                                <?php if(Auth::user()->level==1): ?>
                                                <li><a href="<?php echo e(route('admin')); ?>"><?php echo trans('message.manage'); ?></a></li>
                                                <li><a href="<?php echo e(route('shoppingcart.get.giohang')); ?>"><?php echo trans('message.cart'); ?></a></li>
                                                <li><a href="<?php echo e(route('don-hang')); ?>"><?php echo trans('message.track my order'); ?></a></li>
                                                <li><a href="<?php echo e(route('thay-doi-mat-khau')); ?>"><?php echo trans('message.change password'); ?></a></li>
                                                <li><a href="<?php echo e(route('home.logout')); ?>"><?php echo trans('message.logout'); ?></a></li>
                                                <?php else: ?>
                                                <li><a href="<?php echo e(route('shoppingcart.get.giohang')); ?>"><?php echo trans('message.cart'); ?></a></li>
                                                <li><a href="<?php echo e(route('don-hang')); ?>"><?php echo trans('message.track my order'); ?></a></li>
                                                <li><a href="<?php echo e(route('thay-doi-mat-khau')); ?>"><?php echo trans('message.change password'); ?></a></li>
                                                <li><a href="<?php echo e(route('home.logout')); ?>"><?php echo trans('message.logout'); ?></a></li>
                                                <?php endif; ?>
                                            </ul>
                                            <?php else: ?>
                                            <a><i class="fa fa-align-right"></i></a>
                                            <ul class="restrain language">
                                                <li><a href="<?php echo e(route('home.login')); ?>"><?php echo trans('message.login'); ?></a></li>
                                                <li><a href="<?php echo e(route('register')); ?>"><?php echo trans('message.register'); ?></a></li>
                                            </ul>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
                    </div>

                
            </div>
        </header>
        </div>
        
        
        <?php echo $__env->yieldContent('content'); ?>
        <footer>
            <div class="top-footer-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-4">
                            <div class="single-snap-footer">
                                <div class="snap-footer-title">
                                    <h4><?php echo e(trans('message.company info')); ?></h4>
                                </div>
                                <div class="cakewalk-footer-content">
                                    <p class="footer-des">Giầy dép là một trong những phụ kiện không thể thiếu góp phần tạo nên phong cách thời trang của mỗi người. Chính vì điều đó LAVORO mong muốn đem đến những mẫu giầy mới nhất được cập nhật thường xuyên ...</p>
                                    <a href="<?php echo e(route('gioi-thieu')); ?>" class="read-more"><?php echo e(trans('message.read more')); ?></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-4">
                            <div class="single-snap-footer">
                                <div class="snap-footer-title">
                                    <h4><?php echo e(trans('message.category')); ?></h4>
                                </div>
                                <div class="cakewalk-footer-content">
                                    <ul>
                                        <?php $ca = DB::table('categories')->where('parent_id','<>',0)->get(); ?>
                                        <?php $__currentLoopData = $ca; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <li><a href="<?php echo e(route('frontend.get.loaisanpham',[$item->id,$item->slug])); ?>"><?php echo e($item->name); ?></a></li>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5 col-sm-6">
                            <div class="single-snap-footer">
                                <div class="snap-footer-title">
                                    <h4>Google maps</h4>
                                </div>
                                <div class="google-map-area">
                                    <div id="contacts" class="map-area">
                                        <div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.6971156731092!2d105.9307250142449!3d21.00477499397414!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135a8d22485051d%3A0x5cb2530a1a6b6c0!2zxJDhuqFpIEjhu41jIE7DtG5nIE5naGnhu4dw!5e0!3m2!1svi!2s!4v1565660590518!5m2!1svi!2s" width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe></div>
                                    </div>
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
                                        <li><a href="https://google.com/" target="_blank"><i class="fa fa-google-plus"></i></a><span> Google</span></li>
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
                                    <h3><?php echo e(trans('message.address')); ?></h3>
                                    <p>Trâu Quỳ, Gia Lâm, Hà Nội</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <div class="info-fcontainer">
                                <div class="infof-icon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div class="infof-content">
                                    <h3><?php echo e(trans('message.phone')); ?></h3>
                                    <p>0912345678</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <div class="info-fcontainer">
                                <div class="infof-icon">
                                    <i class="fa fa-envelope"></i>
                                </div>
                                <div class="infof-content">
                                    <h3>Email <?php echo e(trans('message.suport')); ?></h3>
                                    <p>nghhai2712@gmail.com</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 hidden-sm">
                            <div class="info-fcontainer">
                                <div class="infof-icon">
                                    <i class="fa fa-clock-o"></i>
                                </div>
                                <div class="infof-content">
                                    <h3><?php echo e(trans('message.openning hour')); ?></h3>
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
                                <a href="#"><img src="<?php echo e(url('/public')); ?>/frontend/img/payment.png" alt="" /></a>
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
        <script src="<?php echo e(url('/public')); ?>/frontend/js/vendor/jquery-1.11.3.min.js"></script>
        
        <!-- bootstrap js
        ============================================ -->         
        <script src="<?php echo e(url('/public')); ?>/frontend/js/bootstrap.min.js"></script>
        
        <!-- Nivo slider js
        ============================================ -->        
        <script src="<?php echo e(url('/public')); ?>/frontend/custom-slider/js/jquery.nivo.slider.js" type="text/javascript"></script>
        <script src="<?php echo e(url('/public')); ?>/frontend/custom-slider/home.js" type="text/javascript"></script>
        
        <!-- owl.carousel.min js
        ============================================ -->       
        <script src="<?php echo e(url('/public')); ?>/frontend/js/owl.carousel.min.js"></script>
        
        <!-- jquery scrollUp js 
        ============================================ -->
        <script src="<?php echo e(url('/public')); ?>/frontend/js/jquery.scrollUp.min.js"></script>
        
        <!-- price-slider js
        ============================================ --> 
        <script src="<?php echo e(url('/public')); ?>/frontend/js/price-slider.js"></script>
        
        <!-- elevateZoom js 
        ============================================ -->
        <script src="<?php echo e(url('/public')); ?>/frontend/js/jquery.elevateZoom-3.0.8.min.js"></script>
        
        <!-- jquery.bxslider.min.js
        ============================================ -->       
        <script src="<?php echo e(url('/public')); ?>/frontend/js/jquery.bxslider.min.js"></script>
        
        <!-- mobile menu js
        ============================================ -->  
        <script src="<?php echo e(url('/public')); ?>/frontend/js/jquery.meanmenu.js"></script>  
        
        <!-- wow js
        ============================================ -->       
        <script src="<?php echo e(url('/public')); ?>/frontend/js/wow.js"></script>
        
        <!-- plugins js
        ============================================ -->         
        <script src="<?php echo e(url('/public')); ?>/frontend/js/plugins.js"></script>
        <script src="<?php echo e(url('/public')); ?>/frontend/js/gmap.js"></script>
        
        <!-- main js
        ============================================ -->           
        <script src="<?php echo e(url('/public')); ?>/frontend/js/main.js"></script>
        <script src="<?php echo e(url('/public')); ?>/admin/js/myscript.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
   
        <script type="text/javascript" src="<?php echo e(url('/public')); ?>/admin/toastr.min.js"></script>

        <script>
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            })
        </script>
        <div class="call-btn">
            <div class="zoomIn"></div>
            <div class="pulse"></div>
            <div class="tada"><a href="tel:0912345678 ">0912345678</a>
            </div>
            <div class="tel">0912345678</div>
        </div>
<style>
.call-btn {
    position: fixed;
    margin: 0;
    padding: 0;
    left: 0;
    bottom: 18px;
    background: #fff;
    background-color: transparent;
    cursor: pointer;
    font-size: 0;
    width: 110px;
    height: 110px;
    z-index: 1000;
}

.call-btn .zoomIn {
    width: 70px;
    height: 70px;
    border: 2px solid #db0005;
    border-radius: 100px;
    position: absolute;
    top: 50%;
    left: 50%;
    margin-top: -40px;
    margin-left: -40px;
    animation-name: zoomIn;
    animation-duration: 1s;
    animation-iteration-count: infinite;
    animation-timing-function: ease-out;
}

.call-btn .pulse {
    width: 50px;
    height: 50px;
    background: rgba(219, 0, 5, 0.6);
    border-radius: 100px;
    position: absolute;
    top: 50%;
    left: 50%;
    margin-top: -30px;
    margin-left: -30px;
    animation-name: pulse;
    animation-duration: .5s;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    animation-timing-function: ease-in-out;
}

.call-btn .tada {
    background: #db0005;
    border-radius: 100px;
    width: 30px;
    height: 30px;
    position: absolute;
    left: 50%;
    top: 50%;
    margin-top: -20px;
    margin-left: -20px;
    animation-name: tadaa;
    animation-duration: .5s;
    animation-iteration-count: infinite;
    animation-direction: alternate;
}

.call-btn .tel {
    position: absolute;
    top: 45%;
    left: 33px;
    color: #fff;
    font-size: 17px;
    width: 170px;
    text-align: center;
    padding-left: 30px;
    -webkit-transform: translate(0, -50%);
    -ms-transform: translate(0, -50%);
    -o-transform: translate(0, -50%);
    transform: translate(0, -50%);
    line-height: 36px;
    border: 1px solid #fb0309;
    border-radius: 20px;
    background: #fb0309;
    z-index: -1;
    font-weight: 700;
    font-family: Arial;
    text-shadow: 1px 1px 2px #5f5f5f;
}

.call-btn .tada a:before {
    content: "\f095";
    font-size: 25px;
    font-family: FontAwesome;
    text-decoration: none;
    color: #fff;
    margin-left: 10px;
    position: absolute;
    top: 50%;
    margin-top: -17px;
}</style>

<script>
    if (window.innerWidth > 768) {
        $(window).scroll(function () {
            if ($(window).scrollTop() >= 100) {
                $('.sticky-header').addClass('fixed');
            } else {
                $('.sticky-header').removeClass('fixed');
            }
        });
    }
    if (window.innerWidth > 320) {
        $(window).scroll(function () {
            if ($(window).scrollTop() >= 100) {
                $('.sticky-header').addClass('clearfix');
            } else {
                $('.sticky-header').removeClass('clearfix');
            }
        });
    }
</script>
<style>
    .sticky-header.clearfix, .sticky-header.fixed {
        background: #ffffff;
        position: fixed;
        top: 0px;
        width: 100%;
        left: 0px;
        z-index: 999999;
    }
</style>


        <?php echo $__env->yieldContent('script'); ?>
    </body>
</html>