@extends('admin.master')
@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <h1>Thống kê doanh thu</h1>
        <ol class="breadcrumb">
            <li><a href="{{route('admin')}}"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li class="active">Thống kê</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                	<div class="box-body">
                		<div class="form-group">
						    <label>Date:</label>
						    <div class="input-group date">
						        <div class="input-group-addon">
						            <i class="fa fa-calendar"></i>
						        </div>
						        <input type="text" class="form-control pull-right" id="datepicker">
						    </div>
						</div>
                	</div>
                </div>
            </div>
        </div>
    </section>
</div>
@stop