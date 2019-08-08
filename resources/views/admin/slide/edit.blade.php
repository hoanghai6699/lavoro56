@extends('admin.master')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Sửa slide</h1>
        <ol class="breadcrumb">
            <li><a href="{{route('admin')}}"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="{{route('admin.get.list.slide')}}">Slide</a></li>
            <li class="active">Sửa slide</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <form action="" method="POST" enctype="multipart/form-data">
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                        <div class="box-body">
                            <div class="form-group">
                                <label>Hình ảnh</label>
                                <a class="thumbnail">
                                    <img src="{{url('public/frontend/img')}}/{{$slide->image}}" alt="" width="100%">
                                    <input type="hidden" name="img_current" value="{!! $slide->image !!}">
                                </a>
                                <input type="file" name="image" multiple />
                                @if($errors->has('image'))
                                <div class="help-block">
                                    {{$errors->first('image')}}
                                </div>
                                @endif
                            </div>
                            <div class="form-group">
                                <label>Loại</label>
                                <select class="form-control" name="type">
                                    <option value="0" @if($slide["type"]==0) selected="selected" ; @endif>Slide</option>
                                    <option value="1" @if($slide["type"]==1) selected="selected"; @endif>Banner</option>
                                </select>
                                @if($errors->has('type'))
                                <div class="help-block">
                                    {{$errors->first('type')}}
                                </div>
                                @endif
                            </div>
                            <div class="form-group">
                                    <label>Trạng thái </label>
                                    <label class="radio-inline">
                                        <input name="status" value="1" @if($slide["status"]==1) checked="checked"; @endif type="radio"> Hiện
                                    </label>
                                    <label class="radio-inline">
                                        <input name="status" value="0" @if($slide["status"]==0) checked="checked"; @endif type="radio"> Ẩn
                                    </label>
                                </div>
                            <button type="submit" class="btn btn-primary">Lưu</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
@stop