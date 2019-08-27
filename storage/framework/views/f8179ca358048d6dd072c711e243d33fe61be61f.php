<?php $__env->startSection('title','Loại sản phẩm'); ?>
<?php $__env->startSection('content'); ?>
<div class="category-banner">
	<div class="cat-heading"></div>
</div>
<!-- category-banner area end -->
<!-- breadcrumbs area start -->
<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="container-inner">
					<ul>
						<li class="home">
							<a href="<?php echo e(route('frontend.get.home')); ?>"><?php echo trans('message.home'); ?></a>
							<span><i class="fa fa-angle-right"></i></span>
						</li>
						<li class="category3"><span><?php echo trans('message.product'); ?></span></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- breadcrumbs area end -->
<!-- shop-with-sidebar Start -->
<div class="shop-with-sidebar">
	<div class="container">
		<div class="row">
			<!-- left sidebar start -->
			<div class="col-md-3 col-sm-12 col-xs-12 text-left">
				<div class="topbar-left">
					<aside class="widge-topbar">
						<div class="bar-title">
							<div class="bar-ping"><img src="<?php echo e(url('/public')); ?>/frontend/img/bar-ping.png" alt=""></div>
							<h2>Shop by</h2>
						</div>
					</aside>
					<aside class="sidebar-content">
						<form id="size" method="get">
							<div class="sidebar-title">
								<h6>Size</h6>
							</div>
							<select name="size" class="size" style="width: 150px;">
								<option <?php echo e(Request::get('size') == "default_size" || !Request::get('size') ? "selected='selected'" : ""); ?> value="default_size"><?php echo trans('message.default'); ?></option>
								<option <?php echo e(Request::get('size') == "35" ? "selected='selected'" : ""); ?> value="35">35 EUR</option>
								<option <?php echo e(Request::get('size') == "36" ? "selected='selected'" : ""); ?> value="36">36 EUR</option>
								<option <?php echo e(Request::get('size') == "37" ? "selected='selected'" : ""); ?> value="37">37 EUR</option>
								<option <?php echo e(Request::get('size') == "38" ? "selected='selected'" : ""); ?> value="38">38 EUR</option>
								<option <?php echo e(Request::get('size') == "39" ? "selected='selected'" : ""); ?> value="39">39 EUR</option>
								<option <?php echo e(Request::get('size') == "40" ? "selected='selected'" : ""); ?> value="40">40 EUR</option>
								<option <?php echo e(Request::get('size') == "41" ? "selected='selected'" : ""); ?> value="41">41 EUR</option>
								<option <?php echo e(Request::get('size') == "42" ? "selected='selected'" : ""); ?> value="42">42 EUR</option>
								<option <?php echo e(Request::get('size') == "43" ? "selected='selected'" : ""); ?> value="43">43 EUR</option>
								<option <?php echo e(Request::get('size') == "44" ? "selected='selected'" : ""); ?> value="44">44 EUR</option>
							</select>
						</form>
					</aside>
					<?php if(isset($menu_cate)): ?>
					<aside class="sidebar-content">
						<div class="sidebar-title">
							<h6><?php echo trans('message.products of the same type'); ?></h6>
						</div>
						<ul class="sidebar-tags">
							<?php $__currentLoopData = $menu_cate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_menu_cate): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							<li><a href="<?php echo e(route('frontend.get.loaisanpham',[$item_menu_cate->id,$item_menu_cate->slug])); ?>"><?php echo e($item_menu_cate->name); ?></a></li>
							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						</ul>
					</aside>
					<?php endif; ?>
					<aside class="sidebar-content">
						<div class="sidebar-title">
							<h6><?php echo trans('message.price range'); ?></h6>
						</div>
						<ul>
							<li><a href="<?php echo request()->fullUrlWithQuery(['price' => '1']); ?>"><?php echo trans('message.low'); ?> < 1.000.000 (đ)</a></li>
							<li><a href="<?php echo request()->fullUrlWithQuery(['price' => '2']); ?>">1.000.000 - 2.000.000 (đ)</li>
							<li><a href="<?php echo request()->fullUrlWithQuery(['price' => '3']); ?>"><?php echo trans('message.high'); ?> > 2.000.000 (đ)</li>
						</ul>
					</aside>

					<aside class="sidebar-content">
						<div class="sidebar-title">
							<h6><?php echo e(trans('message.category')); ?></h6>
						</div>
						<ul>
							<?php $cat = DB::table('categories')->where('parent_id','<>','0')->get(); ?>
							<?php $__currentLoopData = $cat; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cate): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							<li><a href="#"><?php echo e($cate->name); ?></a></li>
							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						</ul>
					</aside>
				</div>
			</div>
			<!-- left sidebar end -->
			<!-- right sidebar start -->
			<div class="col-md-9 col-sm-12 col-xs-12">
				<!-- shop toolbar start -->
				<div class="shop-content-area">
					<div class="shop-toolbar">
						<div class="col-xs-12 nopadding-left text-left">
							<form class="tree-most" id="form_order" method="get">
								<div class="orderby-wrapper pull-right">
									<label><?php echo trans('message.sort'); ?></label>
									<select name="orderby" class="orderby">
										<option <?php echo e(Request::get('orderby') == "menu_order" || !Request::get('orderby') ? "selected='selected'" : ""); ?> value="menu_order"><?php echo trans('message.default'); ?></option>
										<option <?php echo e(Request::get('orderby') == "price" ? "selected='selected'" : ""); ?> value="price"><?php echo trans('message.price'); ?> ( <?php echo trans('message.low'); ?> > <?php echo trans('message.high'); ?> )</option>
										<option <?php echo e(Request::get('orderby') == "price-desc" ? "selected='selected'" : ""); ?> value="price-desc"><?php echo trans('message.price'); ?> ( <?php echo trans('message.high'); ?> > <?php echo trans('message.low'); ?> )</option>
									</select>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="tab-content">
					<div class="tab-pane fade in active" id="shop-grid-tab">
						<div class="row">
							<?php $__currentLoopData = $product_cate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item_product_cate): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							<?php if($item_product_cate->active == 1): ?>
							<div class="shop-product-tab first-sale">
								<div class="col-lg-4 col-md-4 col-sm-4">
									<div class="two-product">
										<div class="single-product">
											
											<div class="product-img">
												<a href="<?php echo e(route('frontend.get.chitietsanpham',[$item_product_cate->id,$item_product_cate->slug])); ?>">
													<img class="primary-image" src="<?php echo e(url('/uploads')); ?>/<?php echo e($item_product_cate->image); ?>" alt="" />
													<img class="secondary-image" src="<?php echo e(url('/uploads')); ?>/<?php echo e($item_product_cate->image); ?>" alt="" />
												</a>
												<div class="action-zoom">
													<div class="add-to-cart">
														<a href="<?php echo e(route('frontend.get.chitietsanpham',[$item_product_cate->id,$item_product_cate->slug])); ?>" title="<?php echo trans('message.detail'); ?>"><i class="fa fa-search-plus"></i></a>
													</div>
												</div>
												<div class="price-box">
													<span class="new-price"><?php echo e(number_format($item_product_cate->price,0,',','.')); ?> đ</span>
												</div>
											</div>
											<div class="product-content">
												<h2 class="product-name"><a href="<?php echo e(route('frontend.get.chitietsanpham',[$item_product_cate->id,$item_product_cate->slug])); ?>" data-toggle="tooltip" data-placement="top" title="<?php echo e($item_product_cate->name); ?>"><?php echo e($item_product_cate->name); ?></a></h2>
											</div>
										</div>
									</div>
								</div>
							</div>
							<?php endif; ?>
							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						</div>
					</div>
					<div class="shop-content-bottom">
						<div class="shop-toolbar btn-tlbr">
							<div class="col-md-12 col-sm-4 col-xs-12 text-center">
								<div class="pages">
									<label><?php echo trans('message.page'); ?>:</label>
									<ul>
										<?php if( $product_cate->currentPage() != 1 ): ?>
										<li><a href="<?php echo str_replace('/?','?',$product_cate->url($product_cate->currentPage() - 1 )); ?>"><i class="fa fa-arrow-left"></i></a></li>
										<?php endif; ?>
										<?php for($i = 1; $i <= $product_cate->lastPage() ; $i++): ?>
										<li class="<?php echo ($product_cate->currentPage() == $i) ? 'active' : ''; ?>">
										<a href="<?php echo str_replace('/?','?',$product_cate->url($i)); ?>"><?php echo $i; ?></a>
										</li>
										<?php endfor; ?>
										<?php if( $product_cate->currentPage() != $product_cate->lastPage() ): ?>
										<li><a href="<?php echo str_replace('/?','?',$product_cate->url($product_cate->currentPage() + 1 )); ?>"><i class="fa fa-arrow-right"></i></a></li>
										<?php endif; ?>
										
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- shop toolbar end -->
				</div>
			</div>
			<!-- right sidebar end -->
		</div>
	</div>
</div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<script>
    $(function(){
        $('.orderby').change(function(){
            $("#form_order").submit();
        });
    });
    $(function(){
        $('.size').change(function(){
            $("#size").submit();
        });
    });
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>