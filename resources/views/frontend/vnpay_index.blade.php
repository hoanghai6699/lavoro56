@extends('frontend.master')
@section('title','Thanh toán vnpay')
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
                        <li class="home">
                            <a href="{{route('shoppingcart.get.giohang')}}">{!! trans('message.cart') !!}</a>
                            <span><i class="fa fa-angle-right"></i></span>
                        </li>
                        <li class="category3"><span>{!! trans('message.payment') !!} vnpay</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="main-contact-area">
    <div class="container wrapper">
        <div class="row cart-body">
            <form class="form-horizontal" method="post" action="{{route('create-vnpay')}}" id="create_form">
            <input type="hidden" name="_token" value="{{csrf_token()}}">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-push-6 col-sm-push-6">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        {!! trans('message.order confirmation') !!} <div class="pull-right"><small><a class="afix-1" href="{{route('shoppingcart.get.giohang')}}">{!! trans('message.update') !!}</a></small></div>
                    </div>
                    <div class="panel-body">
                        @foreach($content as $item)
                        <div class="form-group">
                            <div class="col-sm-3 col-xs-3">
                                <img class="img-responsive" src="{{url('/uploads')}}/{{$item->options->img}}" />
                            </div>
                            <div class="col-sm-6 col-xs-6">
                                <div class="col-xs-12">{{$item->name}}</div>
                                <div class="col-xs-12"><small>{!! trans('message.quantity') !!} : <span>{{$item->qty}}</span></small></div>
                                <div class="col-xs-12">
                                    <small>Size : 
                                        <span>
                                            <?php $p = DB::table('sizes')->where('id',$item->options->size)->first();
                                                echo "$p->name";
                                            ?>   
                                        </span>
                                    </small>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-3 text-right">
                                <h6>{{number_format($item->price,0,',','.')}} đ</h6>
                                @if(session()->has('coupon'))
                                - {{number_format(session()->get('coupon')['discount'],0,',','.')}} đ
                                @endif
                            </div>
                        </div>
                        <div class="form-group"><hr /></div>
                        @endforeach
                        <div class="form-group">
                            <div class="col-xs-12">
                                <strong>{!! trans('message.total') !!}: </strong>
                                @if(session()->has('coupon'))
                                <div class="pull-right"><span>{{number_format($newtotal,0,',','.')}} đ</span></div>
                                @elseif(!(session()->has('coupon')))
                                <div class="pull-right"><span>{{number_format($total,0,',','.')}} đ</span></div>
                                @endif
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-pull-6 col-sm-pull-6">
                @if(Auth::check())
                <div class="panel panel-info">
                    <div class="panel-heading">{!! trans('message.billing information') !!}</div>
                    <div class="panel-body">
                        <div class="form-group">
                            <div class="col-md-12"><strong>{!! trans('message.name') !!}:</strong></div>
                            <div class="col-md-12">
                                <input type="text" class="form-control" name="name" value="{{Auth::user()->name}}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12"><strong>Email:</strong></div>
                            <div class="col-md-12">
                                <input type="email" name="email" class="form-control" value="{{Auth::user()->email}}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12"><strong>{!! trans('message.phone') !!}:</strong></div>
                            <div class="col-md-12"><input type="number" name="phone" class="form-control" value="{{Auth::user()->phone}}" /></div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12"><strong>{!! trans('message.address') !!}:</strong></div>
                            <div class="col-md-12"><textarea class="form-control" rows="3" name="address"></textarea>
                            @if($errors->has('address'))
                            <div class="help-block" style="color: red;">
                                *{{$errors->first('address')}}
                            </div>
                            @endif
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label for="language">Loại hàng hóa </label>
                                <select name="order_type" id="order_type" class="form-control">
                                    <option value="billpayment">Thanh toán hóa đơn</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label for="bank_code">Ngân hàng</label>
                                <select name="bank_code" id="bank_code" class="form-control">
                                    <option value="">Không chọn</option>
                                    <option value="NCB"> Ngan hang NCB</option>
                                    <option value="AGRIBANK"> Ngan hang Agribank</option>
                                    <option value="VIETINBANK">Ngan hang Vietinbank</option>
                                    <option value="BIDV"> Ngân hàng BIDV</option>
                                    <option value="TECHCOMBANK"> Ngân hàng Techcombank</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label for="language">Ngôn ngữ</label>
                                <select name="language" id="language" class="form-control">
                                    <option value="vn">Tiếng Việt</option>
                                    <option value="en">English</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12"><strong>{!! trans('message.note') !!}:</strong></div>
                            <div class="col-md-12"><textarea class="form-control" rows="3" name="note"></textarea></div>
                            @if($errors->has('note'))
                            <div class="help-block" style="color: red;">
                                *{{$errors->first('note')}}
                            </div>
                            @endif
                        </div>
                        <div class="form-group pull-right">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary btn-submit-fix" id="btnPopup">{!! trans('message.confirm') !!}</button>
                            </div>
                        </div>
                    </div>
                </div>
                @endif
            </div>
            </form>
        </div>
    </div>
</div>  
@stop

@section('script')
<link href="https://sandbox.vnpayment.vn/paymentv2/lib/vnpay/vnpay.css" rel="stylesheet"/>
<script src="https://sandbox.vnpayment.vn/paymentv2/lib/vnpay/vnpay.js"></script>
<script type="text/javascript">
    $("#btnPopup").click(function () {
        var postData = $("#create_form").serialize();
        var submitUrl = $("#create_form").attr("action");
        $.ajax({
            type: "POST",
            url: submitUrl,
            data: postData,
            dataType: 'JSON',
            success: function (x) {
                if (x.code === '00') {
                    if (window.vnpay) {
                        vnpay.open({width: 768, height: 600, url: x.data});
                    } else {
                        location.href = x.data;
                    }
                    return false;
                } else {
                    toastr.warning(x.valid.messages);
                }
            }
        });
        return false;
    });
</script>
@stop