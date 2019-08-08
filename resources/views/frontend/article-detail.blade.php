@extends('frontend.master')
@section('content')
<style>
	.article_info img,em {
		margin: 0 auto;
		text-align: center;
		display: block;
		max-width: 100%;
	}
</style>
<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div class="container-inner">
					<ul>
						<li class="home">
							<a href="{{route('frontend.get.home')}}">{!! trans('message.home') !!}</a>
							<span><i class="fa fa-angle-right"></i></span>
						</li>
						<li class="home">
							<a href="{{route('tin-tuc')}}">{!! trans('message.news') !!}</a>
							<span><i class="fa fa-angle-right"></i></span>
						</li>
						<li class="category3"><span>{{$article->name}}</span></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="main-contact-area">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				@if(isset($article))
				
				<div class="article" style="display: flex;padding-bottom: 10px;margin-bottom: 10px;">
					<div class="article_info" style="margin-left: 20px;width: 80%;">
						<h2 style="font-size: 20px"><a href="">{{$article->name}}</a></h2>
						<p style="font-size: 13px">{!!$article->content!!}</p>
					</div>
				</div>
				
				@endif
			</div>
		</div>
	</div>	
</div>
@stop