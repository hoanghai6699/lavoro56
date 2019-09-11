@extends('admin.master')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Xử lý gộp đơn hàng</h1>
        <ol class="breadcrumb">
            <li><a href="{{route('admin')}}"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li class="active">Xử lý gộp đơn hàng</li>
        </ol>
        @if(Session::has('success'))
            <div class="alert alert-{!! Session::get('level') !!}">
                {!! Session::get('success') !!}
            </div>
        @endif
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <form action="{{route('admin.get.pooled.order')}}" method="post">
                        @csrf
                        <div class="box-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>Mã ĐH</th>
                                        <th style="text-align: center">Tên khách hàng</th>
                                        <th style="text-align: center">Email</th>
                                        <th style="text-align: center">Địa chỉ</th>
                                        <th style="text-align: center">SĐT</th>
                                        <th style="text-align: center">Thao tác</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($pooled as $item)
                                    @if($item->status==0)
                                    <tr>
                                        <td>#HD{{$item->id}}-{{$item->created_at->format('dmY')}}</td>
                                        <td style="text-align: center">
                                            <?php 
                                                $u = DB::table('users')->where('id',$item["user_id"])->first();
                                                echo "$u->name";
                                            ?>
                                        </td>
                                        <td style="text-align: center">{{$item->email}}</td>
                                        <td style="text-align: center">{{$item->address}}</td>
                                        <td style="text-align: center">{{$item->phone}}</td>
                                        <td style="text-align: center">
                                            <input type="checkbox" name="pooled[]" id="{{$item->id}}" value="{{$item->id}}">
                                        </td>
                                    </tr>
                                    @endif
                                    @endforeach
                                </tbody>
                            </table>
                            @if($errors->has('pooled'))
                            <div class="help-block" style="color: red;">
                                {{$errors->first('pooled')}}
                            </div>
                            @endif
                            <button type="submit" class="btn btn-primary pull-right">Gộp đơn</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>

@stop