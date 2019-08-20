@extends('admin.master')
@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <h1>Quản lý kho hàng</h1>
        <ol class="breadcrumb">
            <li><a href="{{route('admin')}}"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li class="active">Kho hàng</li>
        </ol>
        @if(Session::has('success'))
            <div class="alert alert-{!! Session::get('level') !!}">
                {!! Session::get('success') !!}
            </div>
        @endif
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th style="text-align: center;">STT</th>
                                    <th style="text-align: center;">Ảnh sản phẩm</th>
                                    <th>Tên sản phẩm</th>
                                    <th style="text-align: center;">Loại sản phẩm</th>
                                    <th style="text-align: center;">Ngày nhập</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <?php $stt=0 ?>
                                @foreach($ware as $item)
                                <?php $stt++ ?>
                                <tr>
                                    <td>{{$stt}}</td>
                                    <td style="text-align: center;"><img src="{!!url('uploads')!!}/{!!$item['image']!!}" width="100px"></td>
                                    <td>{{$item->name}}
                                        <ul style="padding-left: 20px;">
                                            <li>Giá: {{ number_format($item->price,'0',',','.') }} (đ)</li>
                                            <li>Số lượng đã bán: <?php $qty=DB::table('order_details')->where('product_id',$item->id)->sum('qty'); echo $qty;?>
                                            </li>
                                            <li>Còn lại: <?php $qty=DB::table('product_properties')->where('product_id',$item->id)->sum('qty'); echo $qty;?>
                                            </li>
                                        </ul>
                                    </td>
                                    <td style="text-align: center;padding-top: 43px;">
                                        <?php 
                                            $cate = DB::table('categories')->where('id',$item["category_id"])->first();
                                            echo "$cate->name";
                                        ?>
                                    </td>
                                    <td style="text-align: center;padding-top: 43px;">{{$item->created_at}}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@stop