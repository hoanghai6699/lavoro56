<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
    <section class="content-header">
        <h1>Quản lý slide </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(route('admin')); ?>"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li class="active">Slide</li>
        </ol>
        <?php if(Session::has('success')): ?>
            <div class="alert alert-<?php echo Session::get('level'); ?>">
                <?php echo Session::get('success'); ?>

            </div>
        <?php endif; ?>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th style="text-align: center;width: 80%;">Slide</th>
                                    <th style="text-align: center;">Trạng thái</th>
                                    <th style="text-align: center;">Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $__currentLoopData = $slide; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr style="text-align: center;">
                                    <td>
                                        <img src="<?php echo e(url('/frontend/img')); ?>/<?php echo e($item->image); ?>" style="width: 500px;height: 200px;">
                                    </td>
                                    <td style="padding-top: 93px;">

                                        
                                        <?php if($item->status==1): ?>
                                            <a href="<?php echo e(route('admin.get.action.slide',$item->id)); ?>" data-toggle="tooltip" data-placement="top" title="Hiển thị"><img src="<?php echo e(url('/admin/img/publish-check.png')); ?>"></a>
                                        <?php else: ?>
                                            <a href="<?php echo e(route('admin.get.action.slide',$item->id)); ?>" data-toggle="tooltip" data-placement="top" title="Ẩn"><img src="<?php echo e(url('/admin/img/publish-deny.png')); ?>"></a>
                                        <?php endif; ?>

                                    </td>
                                    <td class="center" style="padding-top: 93px;">
                                        <a class="fa fa-pencil fa-fw" href="<?php echo e(route('admin.get.edit.slide',[$item->id])); ?>" data-toggle="tooltip" data-placement="top" title="Sửa"></a>
                                        /
                                        <a class="fa fa-trash-o  fa-fw" onclick="return confirm('Bạn có chắc không?')" href="<?php echo e(route('admin.get.delete.slide',[$item->id])); ?>" data-toggle="tooltip" data-placement="top" title="Xóa"></a>
                                    </td>
                                </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>