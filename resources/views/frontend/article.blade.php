@extends('frontend.master')
@section('content')
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
						<li class="category3"><span>{!! trans('message.news') !!}</span></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="main-contact-area">
	<div class="container">
		<div class="row">
			<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
				@if(isset($article))
				@foreach($article as $item)
				<?php 
                    $user_name = DB::table('users')->where('id',$item["user_id"])->first();
                ?>
				<div class="article" style="display: flex;padding-bottom: 10px;margin-bottom: 10px;border-bottom: 1px solid #f2f2f2;">
					<div class="article_img">
						<a href="{{route('chi-tiet-tin-tuc',[$item->id,$item->slug])}}"><img src="{{url('uploads/article')}}/{{$item->image}}" style="width: 200px;height: 120px"></a>
					</div>
					<div class="article_info" style="margin-left: 20px;width: 80%;">
						<h2 style="font-size: 15px"><a href="{{route('chi-tiet-tin-tuc',[$item->id,$item->slug])}}">{{$item->name}}</a></h2>
						<p style="font-size: 13px">{{$item->description}}</p>
						<p>{{$user_name->name}} - <span><?php echo \Carbon\Carbon::createFromTimeStamp(strtotime($item->created_at))->diffForHumans() ?></span></p>
					</div>
				</div>
				@endforeach
				@endif
			</div>
			<div class="col-sm-4"></div>
		</div>
	</div>	
</div>
<div class="shop-content-bottom">
	<div class="shop-toolbar btn-tlbr">
		<div class="col-md-12 col-sm-4 col-xs-12 text-center">
			<div class="pages">
				<label>{!! trans('message.page') !!}:</label>
				<ul>
					@if( $article->currentPage() != 1 )
					<li><a href="{!! str_replace('/?','?',$article->url($article->currentPage() - 1 )) !!}"><i class="fa fa-arrow-left"></i></a></li>
					@endif
					@for ($i = 1; $i <= $article->lastPage() ; $i++)
					<li class="{!! ($article->currentPage() == $i) ? 'active' : '' !!}">
					<a href="{!! str_replace('/?','?',$article->url($i)) !!}">{!! $i !!}</a>
					</li>
					@endfor
					@if( $article->currentPage() != $article->lastPage() )
					<li><a href="{!! str_replace('/?','?',$article->url($article->currentPage() + 1 )) !!}"><i class="fa fa-arrow-right"></i></a></li>
					@endif
					
				</ul>
			</div>
		</div>
	</div>
</div>
@stop