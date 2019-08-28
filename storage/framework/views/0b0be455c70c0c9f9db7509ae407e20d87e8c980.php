<?php $__env->startSection('content'); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Thêm mới slide</h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(route('admin')); ?>"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="<?php echo e(route('admin.get.list.slide')); ?>">Slide</a></li>
            <li class="active">Thêm mới slide</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <form action="" method="POST" enctype="multipart/form-data">
                        <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
                        <div class="box-body">
                            <div class="form-group">
                                <label>Hình ảnh</label>
                                <input type="file" name="image" multiple />
                                <?php if($errors->has('image')): ?>
                                <div class="help-block" style="color: red;">
                                    <?php echo e($errors->first('image')); ?>

                                </div>
                                <?php endif; ?>
                            </div>
                            <div class="form-group">
                                <label>Loại</label>
                                <select class="form-control" name="type">
                                    <option value="0">Slide</option>
                                    <option value="1">Banner</option>
                                </select>
                                <?php if($errors->has('type')): ?>
                                <div class="help-block" style="color: red;">
                                    <?php echo e($errors->first('type')); ?>

                                </div>
                                <?php endif; ?>
                            </div>
                            <div class="form-group">
                                    <label>Trạng thái </label>
                                    <label class="radio-inline">
                                        <input name="status" value="1" checked="" type="radio"> Hiện
                                    </label>
                                    <label class="radio-inline">
                                        <input name="status" value="0" type="radio"> Ẩn
                                    </label>
                                </div>
                            <button type="submit" class="btn btn-primary">Thêm mới</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>