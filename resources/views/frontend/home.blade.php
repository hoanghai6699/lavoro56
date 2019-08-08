@extends('frontend.master')
@section('content')
<div class="slider-area an-1 hm-1">
    <div class="bend niceties preview-2">
        <div id="ensign-nivoslider" class="slides">
            @foreach($slide as $item)
            @if($item->status==1 && $item->type==0)
            <img src="{{url('public/frontend/img/')}}/{{$item->image}}" alt="" title="#slider-direction-1"  />
            @endif
            @endforeach
        </div>
        <!-- direction 1 -->
        <div id="slider-direction-1" class="t-cn slider-direction">
            <div class="slider-progress"></div>
            <div class="slider-content t-cn s-tb slider-1">
                <div class="title-container s-tb-c title-compress">
                    <h2 class="title1">minimal bags</h2>
                    <h3 class="title2" >collection</h3>
                    <h4 class="title2" >Simple is the best.</h4>
                </div>
            </div>  
        </div>
        <!-- direction 2 -->
        <div id="slider-direction-2" class="slider-direction">
            <div class="slider-progress"></div>
            <div class="slider-content t-lfl s-tb slider-2 lft-pr">
                <div class="title-container s-tb-c">
                    <h2 class="title1">minimal bags</h2>
                    <h3 class="title2" >collection</h3>
                    <h4 class="title2" >Simple is the best.</h4>
                    <a class="btn-title" href="">View collection</a>
                </div>
            </div>  
        </div>
    </div>
</div>
<div class="our-product-area">
    <div class="container">
        <!-- area title start -->
        <div class="area-title">
            <h2>{!! trans('message.all products') !!}</h2>
        </div>
        <!-- area title end -->
        <!-- our-product area start -->
        <div class="row">
            <div class="col-md-12">
                <div class="features-tab">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs">
                        <li role="presentation" class="active"><a href="#home" data-toggle="tab">{!! trans('message.man') !!}</a></li>
                        <li role="presentation"><a href="#profile" data-toggle="tab">{!! trans('message.women') !!}</a></li>
                    </ul>
                    <!-- Tab pans -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane fade in active" id="home">
                            <div class="row">
                                
                                <div class="features-curosel">
                                    <?php $menu_product = DB::table('products')->where('gender',1)->get(); ?>
                                    @foreach($menu_product as $item_product)
                                    @if($item_product->active == 1)
                                    <div class="col-lg-12 col-md-12">
                                        <div class="single-product">
                                            

                                            <div class="product-img">
                                                <a href="{{route('frontend.get.chitietsanpham',[$item_product->id,$item_product->slug])}}">
                                                    <img class="primary-image" src="{{url('uploads')}}/{{$item_product->image}}" alt="" />
                                                    <img class="secondary-image" src="{{url('uploads')}}/{{$item_product->image}}" alt="" />
                                                </a>
                                                <div class="action-zoom">
                                                    <div class="add-to-cart">
                                                        <a href="{{route('frontend.get.chitietsanpham',[$item_product->id,$item_product->slug])}}" title="{!! trans('message.detail') !!}"><i class="fa fa-search-plus"></i></a>
                                                    </div>
                                                </div>
                                                <div class="actions">
                                                    <div class="action-buttons">
                                                        <div class="add-to-links">
                                                            <div class="add-to-wishlist">
                                                                <a href="" title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                            </div>                                 
                                                        </div>
                                                        <div class="quickviewbtn">
                                                            <a href="#" title="Add to Compare"><i class="fa fa-retweet"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <span class="new-price">{{number_format($item_product->price,0,',','.')}} đ</span>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h2 class="product-name"><a href="{{route('frontend.get.chitietsanpham',[$item_product->id,$item_product->slug])}}">{{$item_product->name}}</a></h2>
                                            </div>
                                        </div>
                                    </div>
                                    @endif
                                    @endforeach
                                </div>
                                
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="profile">
                            <div class="row">
                                <div class="features-curosel">
                                    <?php $menu_product = DB::table('products')->where('gender',0)->get(); ?>
                                    @foreach($menu_product as $item_product)
                                    @if($item_product->active == 1)
                                    <div class="col-lg-12 col-md-12">
                                        <div class="single-product">
                                            

                                            <div class="product-img">
                                                <a href="{{route('frontend.get.chitietsanpham',[$item_product->id,$item_product->slug])}}">
                                                    <img class="primary-image" src="{{url('uploads')}}/{{$item_product->image}}" alt="" />
                                                    <img class="secondary-image" src="{{url('uploads')}}/{{$item_product->image}}" alt="" />
                                                </a>
                                                <div class="action-zoom">
                                                    <div class="add-to-cart">
                                                        <a href="{{route('frontend.get.chitietsanpham',[$item_product->id,$item_product->slug])}}" title="Chi tiết"><i class="fa fa-search-plus"></i></a>
                                                    </div>
                                                </div>
                                                <div class="actions">
                                                    <div class="action-buttons">
                                                        <div class="add-to-links">
                                                            <div class="add-to-wishlist">
                                                                <a href="#" title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                            </div>                                 
                                                        </div>
                                                        <div class="quickviewbtn">
                                                            <a href="#" title="Add to Compare"><i class="fa fa-retweet"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <span class="new-price">{{number_format($item_product->price,0,',','.')}} đ</span>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h2 class="product-name"><a href="{{route('frontend.get.chitietsanpham',[$item_product->id,$item_product->slug])}}">{{$item_product->name}}</a></h2>
                                            </div>
                                        </div>
                                    </div>
                                    @endif
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>              
            </div>
        </div> 
    </div>
</div>
<div class="banner-area">
    <div class="container-fluid">
        <div class="row">
            @foreach($slide as $item_banner)
            @if($item_banner->status==1 && $item_banner->type==1)
            <img src="{{url('public/frontend/img/')}}/{{$item_banner->image}}" alt="" width="1903px" height="300px" />
            @endif
            @endforeach
        </div>
    </div>
</div>
<!-- banner-area end -->
<!-- product section start -->
<div class="our-product-area new-product">
    <div class="container">
        <div class="area-title">
            <h2>{!! trans('message.product news') !!}</h2>
        </div>
        <!-- our-product area start -->
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="features-curosel">
                        <!-- single-product start -->
                        @foreach($product as $item_1)
                        @if($item_1->active == 1)
                        <div class="col-lg-12 col-md-12">
                            <div class="single-product first-sale">
                                

                                <div class="product-img">
                                    <a href="{{route('frontend.get.chitietsanpham',[$item_1->id,$item_1->slug])}}">
                                        <img class="primary-image" src="{{url('uploads')}}/{{$item_1->image}}" alt="" />
                                        <img class="secondary-image" src="{{url('uploads')}}/{{$item_1->image}}" alt="" />
                                    </a>
                                    <div class="action-zoom">
                                        <div class="add-to-cart">
                                            <a href="{{route('frontend.get.chitietsanpham',[$item_1->id,$item_1->slug])}}" title="Chi tiết"><i class="fa fa-search-plus"></i></a>
                                        </div>
                                    </div>
                                    <div class="actions">
                                        <div class="action-buttons">
                                            <div class="add-to-links">
                                                <div class="add-to-wishlist">
                                                    <a href="#" title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                </div>                                 
                                            </div>
                                            <div class="quickviewbtn">
                                                <a href="#" title="Add to Compare"><i class="fa fa-retweet"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="price-box">
                                        <span class="new-price">{{number_format($item_1->price,0,',','.')}} đ</span>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h2 class="product-name"><a href="{{route('frontend.get.chitietsanpham',[$item_1->id,$item_1->slug])}}">{{$item_1->name}}</a></h2>
                                </div>
                            </div>
                        </div>
                        @endif
                        @endforeach
                    </div>
                </div>  
            </div>
        </div>
        <!-- our-product area end -->   
    </div>
</div>
<!-- product section end -->
<!-- latestpost area start -->
<div class="latest-post-area">
    <div class="container">
        <div class="area-title">
            <h2>{!! trans('message.news') !!}</h2>
        </div>
        <div class="row">
            <div class="all-singlepost">
                <!-- single latestpost start -->
                <?php 
                    $menu_post = DB::table('articles')->select('id','name','image','slug','description','active')->get();
                ?>
                
                @foreach($menu_post as $item_post)
                @if($item_post->active==1)
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="single-post">
                        
                        <div class="post-thumb">
                            <a href="{{route("chi-tiet-tin-tuc",[$item_post->id,$item_post->slug])}}">
                                <img src="{{url('uploads/article')}}/{{$item_post->image}}" alt="" style="height: 316px;width: 370px" />
                            </a>
                        </div>
                        <div class="post-thumb-info">
                            <div class="post-time">
                                <a href="{{route("chi-tiet-tin-tuc",[$item_post->id,$item_post->slug])}}">{{$item_post->name}}</a>
                            </div>
                            <div class="postexcerpt">
                                <p>{{$item_post->description}}</p>
                                <a href="{{route("chi-tiet-tin-tuc",[$item_post->id,$item_post->slug])}}" class="read-more">Read more</a>
                            </div>
                        </div>
                        
                    </div>
                </div>
                @endif
                @endforeach
                
            </div>
        </div>
    </div>
</div>
<!-- latestpost area end -->
<!-- block category area start -->
<div class="block-category">
    <div class="container">
        <div class="row">
            <!-- featured block start -->
            <div class="col-md-4">
                <!-- block title start -->
                <div class="block-title">
                    <h2>{!! trans('message.featured') !!}</h2>
                </div>
                <!-- block title end -->
                <!-- block carousel start -->
                <?php $hot_product = DB::table('products')->where('hot',1)->get();?>
                
                <div class="block-carousel">
                    @foreach($hot_product as $item_hot)
                    @if($item_hot->active == 1)
                    <div class="block-content">
                        <!-- single block start -->
                        <div class="single-block">
                            <div class="block-image pull-left">
                                <a href="{{route('frontend.get.chitietsanpham',[$item_hot->id,$item_hot->slug])}}"><img src="{{url('uploads')}}/{{$item_hot->image}}" style="height: 208px;width: 170px;" alt="" /></a>
                            </div>
                            <div class="category-info">
                                <h3><a href="{{route('frontend.get.chitietsanpham',[$item_hot->id,$item_hot->slug])}}">{{$item_hot->name}}</a></h3>
                                
                                
                                <div class="cat-price">{{number_format($item_hot->price,0,',','.')}}</div>
                                
                                <div class="cat-rating">
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                </div>                              
                            </div>
                        </div>
                    </div>
                    @endif
                    @endforeach
                </div>
                
                <!-- block carousel end -->
            </div>
            <!-- featured block end -->
            <!-- featured block start -->
            <div class="col-md-4">
                <!-- block title start -->
                <div class="block-title">
                    <h2>On Sales</h2>
                </div>
                <!-- block title end -->
                <!-- b4lock carousel start -->
                <div class="block-carousel">
                    
                    <div class="block-content">

                        <div class="single-block">
                            <div class="block-image pull-left">
                                <a href="{{-- {{route('frontend.get.chitietsanpham',[$item_pay->id,$item_pay->slug])}} --}}"><img src="{{url('/')}}/public/frontend/img/block-cat/block-13.jpg" alt="" /></a>
                            </div>
                            <div class="category-info">
                                <h3><a href="product-details.html">Cras neque metus</a></h3>
                                <p>Nunc facilisis sagittis ullamcorper...</p>
                                <div class="cat-price">$235.00</div>
                                <div class="cat-rating">
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                </div>                              
                            </div>
                        </div>
                        <!-- single block end -->
                    </div>
                </div>
                <!-- block carousel end -->
            </div>
            <!-- featured block end -->
            <!-- featured block start -->
            <div class="col-md-4">
                <!-- block title start -->
                <div class="block-title">
                    <h2>Populers</h2>
                </div>
                <!-- block title end -->
                <!-- block carousel start -->
                <div class="block-carousel">
                    <div class="block-content">
                        <!-- single block start -->
                        <div class="single-block">
                            <div class="block-image pull-left">
                                <a href="product-details.html"><img src="{{url('/')}}/public/frontend/img/block-cat/block-13.jpg" alt="" /></a>
                            </div>
                            <div class="category-info">
                                <h3><a href="product-details.html">Voluptas nulla</a></h3>
                                <p>Nunc facilisis sagittis ullamcorper...</p>
                                <div class="cat-price">$99.00 <span class="old-price">$111.00</span></div>
                                <div class="cat-rating">
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                </div>                              
                            </div>
                        </div>

                    </div>

                </div>
                <!-- block carousel end -->
            </div>
            <!-- featured block end -->
        </div>
    </div>
</div>
<!-- block category area end -->
<!-- testimonial area start -->
<div class="testimonial-area lap-ruffel">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="crusial-carousel">
                    <div class="crusial-content">
                        <p>“Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat."</p>
                        <span>BootExperts</span>
                    </div>
                    <div class="crusial-content">
                        <p>“Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat."</p>
                        <span>Lavoro Store!</span>
                    </div>
                    <div class="crusial-content">
                        <p>“Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat."</p>
                        <span>MR Selim Rana</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="brand-area">
    <div class="container">
        <div class="row">
            <div class="brand-carousel">
                <div class="brand-item"><a href="#"><img src="{{url('/')}}/public/frontend/img/brand/bg1-brand.jpg" alt="" /></a></div>
                <div class="brand-item"><a href="#"><img src="{{url('/')}}/public/frontend/img/brand/bg2-brand.jpg" alt="" /></a></div>
                <div class="brand-item"><a href="#"><img src="{{url('/')}}/public/frontend/img/brand/bg3-brand.jpg" alt="" /></a></div>
                <div class="brand-item"><a href="#"><img src="{{url('/')}}/public/frontend/img/brand/bg4-brand.jpg" alt="" /></a></div>
                <div class="brand-item"><a href="#"><img src="{{url('/')}}/public/frontend/img/brand/bg5-brand.jpg" alt="" /></a></div>
                <div class="brand-item"><a href="#"><img src="{{url('/')}}/public/frontend/img/brand/bg2-brand.jpg" alt="" /></a></div>
                <div class="brand-item"><a href="#"><img src="{{url('/')}}/public/frontend/img/brand/bg3-brand.jpg" alt="" /></a></div>
                <div class="brand-item"><a href="#"><img src="{{url('/')}}/public/frontend/img/brand/bg4-brand.jpg" alt="" /></a></div>
            </div>
        </div>
    </div>
</div>
@stop