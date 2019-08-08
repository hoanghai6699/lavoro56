@extends('frontend.master')
@section('content')
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
						<li class="category3"><span>{!! trans('message.contact') !!}</span></li>
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
						<div class="contact-us-area">
							<div class="google-map-area">
								<div id="contacts" class="map-area">
									<div id="map" class="map" data-lat="43.6532" data-lng="-79.3832"></div>
								</div>

							</div>
							<!-- google-map-area end -->
							<!-- contact us form start -->
							<div class="contact-us-form">
								<div class="sec-heading-area">
									<h2>{!! trans('message.contact') !!}</h2>
								</div>
								<div class="contact-form">
									<span class="legend">{!! trans('message.contact person information') !!}</span>
									<form action="#" method="post">
										<div class="form-top">
											<div class="form-group col-sm-12 col-md-12 col-lg-12">
												<label>{!! trans('message.name') !!} <sup>*</sup></label>
												<input type="text" class="form-control">
											</div>
											<div class="form-group col-sm-6 col-md-6 col-lg-6">
												<label>Email <sup>*</sup></label>
												<input type="email" class="form-control">
											</div>									
											<div class="form-group col-sm-6 col-md-6 col-lg-6">
												<label>{!! trans('message.phone') !!} <sup>*</sup></label>
												<input type="text" class="form-control">
											</div>
											<div class="form-group col-sm-12 col-md-12 col-lg-12">
												<label>{!! trans('message.address') !!} <sup>*</sup></label>
												<input type="text" class="form-control">
											</div>	
											<div class="form-group col-sm-12 col-md-12 col-lg-12">
												<label>{!! trans('message.content') !!} <sup>*</sup></label>
												<textarea class="yourmessage"></textarea>
											</div>												
										</div>
										<div class="submit-form form-group col-sm-12 submit-review">
											<a href="#" class="add-tag-btn">{!! trans('message.submit') !!}</a>
										</div>
									</form>
								</div>
							</div>
							<!-- contact us form end -->
						</div>					
					</div>
				</div>
			</div>	
		</div>
@stop