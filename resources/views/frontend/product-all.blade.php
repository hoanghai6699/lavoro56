@extends('frontend.master')
@section('title','Tất cả sản phẩm')
@section('content')
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
							<a href="{{route('frontend.get.home')}}">{!! trans('message.home') !!}</a>
							<span><i class="fa fa-angle-right"></i></span>
						</li>
						<li class="category3"><span>{!! trans('message.product') !!}</span></li>
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
							<div class="bar-ping"><img src="{{url('/public')}}/frontend/img/bar-ping.png" alt=""></div>
							<h2>Shop by</h2>
						</div>
					</aside>
					<aside class="sidebar-content">
						<div class="sidebar-title">
							<h6>{!! trans('message.price range') !!}</h6>
						</div>
						<ul>
							
							<li><a href="{!! request()->fullUrlWithQuery(['price' => '1']) !!}">{!! trans('message.low') !!} < 1.000.000 (đ)</a></li>
							<li><a href="{!! request()->fullUrlWithQuery(['price' => '2']) !!}">1.000.000 - 2.000.000 (đ)</li>
							<li><a href="{!! request()->fullUrlWithQuery(['price' => '3']) !!}">{!! trans('message.high') !!} > 2.000.000 (đ)</li>
							
						</ul>
					</aside>

					<aside class="sidebar-content">
						<div class="sidebar-title">
							<h6>{{trans('message.category')}}</h6>
						</div>
						<ul>
							<?php $c1 = DB::table('categories')->where('parent_id','<>',0)->get(); ?>
							@foreach($c1 as $item_c1)
							@if($item_c1->active == 1)
							<li><a href="{{route('frontend.get.loaisanpham',[$item_c1->id,$item_c1->slug])}}">{{$item_c1->name}}</a><span> </span></li>
							@endif
							@endforeach
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
									<label>{!! trans('message.sort') !!}</label>
									<select name="orderby" class="orderby">
										<option {{Request::get('orderby') == "menu_order" || !Request::get('orderby') ? "selected='selected'" : ""}} value="menu_order">{!! trans('message.default') !!}</option>
										<option {{Request::get('orderby') == "price" ? "selected='selected'" : ""}} value="price">{!! trans('message.price') !!} ( {!! trans('message.low') !!} > {!! trans('message.high') !!} )</option>
										<option {{Request::get('orderby') == "price-desc" ? "selected='selected'" : ""}} value="price-desc">{!! trans('message.price') !!} ( {!! trans('message.high') !!} > {!! trans('message.low') !!} )</option>
									</select>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="tab-content">
					<div class="tab-pane fade in active" id="shop-grid-tab">
						<div class="row">
							@foreach($product as $item_product)
							@if($item_product->active == 1)
							<div class="shop-product-tab first-sale">
								<div class="col-lg-4 col-md-4 col-sm-4">
									<div class="two-product">
										<div class="single-product">
											
											<div class="product-img">
												<a href="{{route('frontend.get.chitietsanpham',[$item_product->id,$item_product->slug])}}">
													<img class="primary-image" src="{{url('/uploads')}}/{{$item_product->image}}" alt="" />
													<img class="secondary-image" src="{{url('/uploads')}}/{{$item_product->image}}" alt="" />
												</a>
												<div class="action-zoom">
													<div class="add-to-cart">
														<a href="{{route('frontend.get.chitietsanpham',[$item_product->id,$item_product->slug])}}" title="{!! trans('message.detail') !!}"><i class="fa fa-search-plus"></i></a>
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
								</div>
							</div>
							@endif
							@endforeach
						</div>
					</div>
					<div class="shop-content-bottom">
						<div class="shop-toolbar btn-tlbr">
							<div class="col-md-12 col-sm-4 col-xs-12 text-center">
								<div class="pages">
									<label>{!! trans('message.page') !!}:</label>
									<ul>
										@if( $product->currentPage() != 1 )
										<li><a href="{!! str_replace('/?','?',$product->url($product->currentPage() - 1 )) !!}"><i class="fa fa-arrow-left"></i></a></li>
										@endif
										@for ($i = 1; $i <= $product->lastPage() ; $i++)
										<li class="{!! ($product->currentPage() == $i) ? 'active' : '' !!}">
										<a href="{!! str_replace('/?','?',$product->url($i)) !!}">{!! $i !!}</a>
										</li>
										@endfor
										@if( $product->currentPage() != $product->lastPage() )
										<li><a href="{!! str_replace('/?','?',$product->url($product->currentPage() + 1 )) !!}"><i class="fa fa-arrow-right"></i></a></li>
										@endif
										
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
@stop

@section('script')
<script>
    $(function(){
        $('.orderby').change(function(){
            $("#form_order").submit();
        });
    });
</script>
@stop