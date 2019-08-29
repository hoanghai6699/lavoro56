<?php $__env->startSection('title','Trang chủ'); ?>
<?php $__env->startSection('content'); ?>
<div class="slider-area an-1 hm-1">
    <div class="bend niceties preview-2">
        <div id="ensign-nivoslider" class="slides">
            <?php $__currentLoopData = $slide; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php if($item->status==1 && $item->type==0): ?>
            <img src="<?php echo e(url('/public/frontend/img/')); ?>/<?php echo e($item->image); ?>" alt="" title="#slider-direction-1"/>
            <?php endif; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
        <!-- direction 1 -->
        <div id="slider-direction-1" class="t-cn slider-direction">
            <div class="slider-progress"></div>
            <div class="slider-content t-cn s-tb slider-1">
                <div class="title-container s-tb-c title-compress">
                    <h2 class="title1">minimal bags</h2>
                    <h3 class="title2" >collection</h3>
                </div>
            </div>  
        </div>
    </div>
</div>
<div class="our-product-area">
    <div class="container">
        <!-- area title start -->
        <div class="area-title">
            <h2><?php echo trans('message.all products'); ?></h2>
        </div>
        <!-- area title end -->
        <!-- our-product area start -->
        <div class="row">
            <div class="col-md-12">
                <div class="features-tab">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs">
                        <li role="presentation" class="active"><a href="#home" data-toggle="tab"><?php echo trans('message.man'); ?></a></li>
                        <li role="presentation"><a href="#profile" data-toggle="tab"><?php echo trans('message.women'); ?></a></li>
                    </ul>
                    <!-- Tab pans -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane fade in active" id="home">
                            <div class="row">
                                
                                <div class="features-curosel">
                                    <?php $menu_product = DB::table('products')->where('gender',1)->get(); ?>
                                    <?php $__currentLoopData = $menu_product; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php if($item_product->active == 1): ?>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="single-product">
                                            <div class="product-img">
                                                <a href="<?php echo e(route('frontend.get.chitietsanpham',[$item_product->id,$item_product->slug])); ?>">
                                                    <img class="primary-image" src="<?php echo e(url('/uploads')); ?>/<?php echo e($item_product->image); ?>" alt="" />
                                                    <img class="secondary-image" src="<?php echo e(url('/uploads')); ?>/<?php echo e($item_product->image); ?>" alt="" />
                                                </a>
                                                <div class="action-zoom">
                                                    <div class="add-to-cart">
                                                        <a href="<?php echo e(route('frontend.get.chitietsanpham',[$item_product->id,$item_product->slug])); ?>" title="<?php echo trans('message.detail'); ?>"><i class="fa fa-search-plus"></i></a>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <span class="new-price"><?php echo e(number_format($item_product->price,0,',','.')); ?> đ</span>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h2 class="product-name"><a href="<?php echo e(route('frontend.get.chitietsanpham',[$item_product->id,$item_product->slug])); ?>" data-toggle="tooltip" data-placement="top" title="<?php echo e($item_product->name); ?>"><?php echo e($item_product->name); ?></a></h2>
                                            </div>
                                        </div>
                                    </div>
                                    <?php endif; ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>
                                
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="profile">
                            <div class="row">
                                <div class="features-curosel">
                                    <?php $menu_product = DB::table('products')->where('gender',0)->get(); ?>
                                    <?php $__currentLoopData = $menu_product; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php if($item_product->active == 1): ?>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="single-product">
                                            
                                            <div class="product-img">
                                                <a href="<?php echo e(route('frontend.get.chitietsanpham',[$item_product->id,$item_product->slug])); ?>">
                                                    <img class="primary-image" src="<?php echo e(url('/uploads')); ?>/<?php echo e($item_product->image); ?>" alt="" />
                                                    <img class="secondary-image" src="<?php echo e(url('/uploads')); ?>/<?php echo e($item_product->image); ?>" alt="" />
                                                </a>
                                                <div class="action-zoom">
                                                    <div class="add-to-cart">
                                                        <a href="<?php echo e(route('frontend.get.chitietsanpham',[$item_product->id,$item_product->slug])); ?>" title="Chi tiết"><i class="fa fa-search-plus"></i></a>
                                                    </div>
                                                </div>
                                                
                                                <div class="price-box">
                                                    <span class="new-price"><?php echo e(number_format($item_product->price,0,',','.')); ?> đ</span>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h2 class="product-name"><a href="<?php echo e(route('frontend.get.chitietsanpham',[$item_product->id,$item_product->slug])); ?>" data-toggle="tooltip" data-placement="top" title="<?php echo e($item_product->name); ?>"><?php echo e($item_product->name); ?></a></h2>
                                            </div>
                                        </div>
                                    </div>
                                    <?php endif; ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
            <?php $__currentLoopData = $slide; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_banner): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php if($item_banner->status==1 && $item_banner->type==1): ?>
            <img src="<?php echo e(url('/public/frontend/img/')); ?>/<?php echo e($item_banner->image); ?>" alt="" width="1903px" height="300px" />
            <?php endif; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</div>
<!-- banner-area end -->
<!-- product section start -->
<div class="our-product-area new-product">
    <div class="container">
        <div class="area-title">
            <h2><?php echo trans('message.product news'); ?></h2>
        </div>
        <!-- our-product area start -->
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="features-curosel">
                        <!-- single-product start -->
                        <?php $__currentLoopData = $product; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_1): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if($item_1->active == 1): ?>
                        <div class="col-lg-12 col-md-12">
                            <div class="single-product first-sale">
                                
                                <div class="product-img">
                                    <a href="<?php echo e(route('frontend.get.chitietsanpham',[$item_1->id,$item_1->slug])); ?>">
                                        <img class="primary-image" src="<?php echo e(url('/uploads')); ?>/<?php echo e($item_1->image); ?>" alt="" />
                                        <img class="secondary-image" src="<?php echo e(url('/uploads')); ?>/<?php echo e($item_1->image); ?>" alt="" />
                                    </a>
                                    <div class="action-zoom">
                                        <div class="add-to-cart">
                                            <a href="<?php echo e(route('frontend.get.chitietsanpham',[$item_1->id,$item_1->slug])); ?>" title="Chi tiết"><i class="fa fa-search-plus"></i></a>
                                        </div>
                                    </div>
                                    <div class="price-box">
                                        <span class="new-price"><?php echo e(number_format($item_1->price,0,',','.')); ?> đ</span>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h2 class="product-name"><a href="<?php echo e(route('frontend.get.chitietsanpham',[$item_1->id,$item_1->slug])); ?>" data-toggle="tooltip" data-placement="top" title="<?php echo e($item_1->name); ?>"><?php echo e($item_1->name); ?></a></h2>
                                </div>
                            </div>
                        </div>
                        <?php endif; ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
            <h2><?php echo trans('message.news'); ?></h2>
        </div>
        <div class="row">
            <div class="all-singlepost">
                <!-- single latestpost start -->
                <?php 
                    $menu_post = DB::table('articles')->select('id','name','image','slug','description','active')->skip(0)->take(3)->get();
                ?>
                
                <?php $__currentLoopData = $menu_post; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php if($item_post->active==1): ?>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="single-post">
                        
                        <div class="post-thumb">
                            <a href="<?php echo e(route('chi-tiet-tin-tuc',[$item_post->id,$item_post->slug])); ?>">
                                <img src="<?php echo e(url('/uploads/article')); ?>/<?php echo e($item_post->image); ?>" alt="" style="height: 316px;width: 370px" />
                            </a>
                        </div>
                        <div class="post-thumb-info">
                            <div class="post-time">
                                <a href="<?php echo e(route('chi-tiet-tin-tuc',[$item_post->id,$item_post->slug])); ?>" data-toggle="tooltip" data-placement="top" title="<?php echo e($item_post->name); ?>"><?php echo e($item_post->name); ?></a>
                            </div>
                            <div class="postexcerpt">
                                <p><?php echo e($item_post->description); ?></p>
                                <a href="<?php echo e(route('chi-tiet-tin-tuc',[$item_post->id,$item_post->slug])); ?>" class="read-more"><?php echo e(trans('message.read more')); ?></a>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <?php endif; ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                
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
                    <h2><?php echo trans('message.featured'); ?></h2>
                </div>
                <!-- block title end -->
                <!-- block carousel start -->
                <?php $hot_product = DB::table('products')->where('hot',1)->get();?>
                <div class="block-carousel">
                    <?php $__currentLoopData = $hot_product; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_hot): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php if($item_hot->active == 1): ?>
                    <div class="block-content">
                        <!-- single block start -->
                        <div class="single-block">
                            <div class="block-image pull-left">
                                <a href="<?php echo e(route('frontend.get.chitietsanpham',[$item_hot->id,$item_hot->slug])); ?>"><img src="<?php echo e(url('/uploads')); ?>/<?php echo e($item_hot->image); ?>" style="height: 208px;width: 170px;" alt="" /></a>
                            </div>
                            <div class="category-info">
                                <h3><a href="<?php echo e(route('frontend.get.chitietsanpham',[$item_hot->id,$item_hot->slug])); ?>" data-toggle="tooltip" data-placement="top" title="<?php echo e($item_hot->name); ?>"><?php echo e($item_hot->name); ?></a></h3>
                                
                                
                                <div class="cat-price"><?php echo e(number_format($item_hot->price,0,',','.')); ?></div>
                                
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
                    <?php endif; ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
                
                <!-- block carousel end -->
            </div>
            <!-- featured block end -->
            <!-- featured block start -->
            <div class="col-md-4">
                <div class="block-title">
                    <h2><?php echo e(trans('message.selling')); ?></h2>
                </div>
                <div class="block-carousel">
                <?php
                $sql = "SELECT product_id,sum(qty) as soLuongBan FROM order_details INNER  JOIN orders on orders.id = order_details.order_id WHERE orders.status = 2 GROUP BY product_id ORDER BY sum(qty) DESC LIMIT 5";
                $b = DB::select($sql);
                ?>
                <?php $__currentLoopData = $b; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $bs): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php $pro = DB::table('products')->where('id',$bs->product_id)->first(); ?>
                    <div class="block-content">
                        <div class="single-block">
                            <div class="block-image pull-left">
                                <a href="<?php echo e(route('frontend.get.chitietsanpham',[$pro->id,$pro->slug])); ?>"><img src="<?php echo e(url('/uploads')); ?>/<?php echo e($pro->image); ?>" style="height: 208px;width: 170px;" alt="" /></a>
                            </div>
                            <div class="category-info">
                                <h3><a href="<?php echo e(route('frontend.get.chitietsanpham',[$pro->id,$pro->slug])); ?>" data-toggle="tooltip" data-placement="top" title="<?php echo e($pro->name); ?>"><?php echo e($pro->name); ?></a></h3>
                                <div class="cat-price"><?php echo e(number_format($pro->price,0,',','.')); ?></div>
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
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
            <!-- featured block end -->
            <!-- featured block start -->
            <div class="col-md-4">
                <div class="block-title">
                    <h2><?php echo e(trans('message.sale')); ?></h2>
                </div>
                <div class="block-carousel">
                    <?php $s = DB::table('sale_products')->get();?>
                    <?php $__currentLoopData = $s; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ss): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php $p = DB::table('products')->where('id',$ss->product_id)->first(); ?>
                    <div class="block-content">
                        <div class="single-block">
                            <div class="block-image pull-left">
                                <a href="<?php echo e(route('frontend.get.chitietsanpham',[$p->id,$p->slug])); ?>"><img src="<?php echo e(url('/uploads')); ?>/<?php echo e($p->image); ?>" style="height: 208px;width: 170px;" alt="" /></a>
                            </div>
                            <div class="category-info">
                                <h3><a href="<?php echo e(route('frontend.get.chitietsanpham',[$p->id,$p->slug])); ?>" data-toggle="tooltip" data-placement="top" title="<?php echo e($p->name); ?>"><?php echo e($p->name); ?></a></h3>
                                <p>KM: <?php echo e($ss->sale); ?> (%)</p>
                                <p>Từ "<?php echo e($ss->start_date); ?>" đến "<?php echo e($ss->end_date); ?>"</p>
                                <div class="cat-price"><?php echo e(number_format($p->price,0,',','.')); ?></div>
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
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
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
                <div class="brand-item"><a href="#"><img src="<?php echo e(url('/public')); ?>/frontend/img/brand/bg1-brand.jpg" alt="" /></a></div>
                <div class="brand-item"><a href="#"><img src="<?php echo e(url('/public')); ?>/frontend/img/brand/bg2-brand.jpg" alt="" /></a></div>
                <div class="brand-item"><a href="#"><img src="<?php echo e(url('/public')); ?>/frontend/img/brand/bg3-brand.jpg" alt="" /></a></div>
                <div class="brand-item"><a href="#"><img src="<?php echo e(url('/public')); ?>/frontend/img/brand/bg4-brand.jpg" alt="" /></a></div>
                <div class="brand-item"><a href="#"><img src="<?php echo e(url('/public')); ?>/frontend/img/brand/bg5-brand.jpg" alt="" /></a></div>
                <div class="brand-item"><a href="#"><img src="<?php echo e(url('/public')); ?>/frontend/img/brand/bg2-brand.jpg" alt="" /></a></div>
                <div class="brand-item"><a href="#"><img src="<?php echo e(url('/public')); ?>/frontend/img/brand/bg3-brand.jpg" alt="" /></a></div>
                <div class="brand-item"><a href="#"><img src="<?php echo e(url('/public')); ?>/frontend/img/brand/bg4-brand.jpg" alt="" /></a></div>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>