<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
    <section class="content-header">
        <h1>Mã giảm giá</h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(route('admin')); ?>"><i class="fa fa-dashboard"></i> Trang tổng quan</a></li>
            <li class="active">Mã giảm giá</li>
        </ol>
        <?php if(Session::has('success')): ?>
            <div class="alert alert-<?php echo Session::get('level'); ?>">
                <?php echo Session::get('success'); ?>

            </div>
        <?php endif; ?>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>Mã code</th>
                                    <th style="text-align: center;">Hình thức</th>
                                    <th style="text-align: center;">Giá trị</th>
                                    <th style="text-align: center;">Số lượng</th>
                                    <th style="text-align: center;">Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $__currentLoopData = $coupon; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td><?php echo e($item->code); ?></td>
                                    <td style="text-align: center;">
                                        <?php if($item->type == 'percent'): ?>
                                            Phần trăm
                                        <?php elseif($item->type == 'fixed'): ?>
                                            Giá trị
                                        <?php endif; ?>
                                    </td>
                                    <td style="text-align: center;">
                                        <?php if($item->type == 'percent'): ?>
                                            <?php echo e($item->percent_off); ?> %
                                        <?php elseif($item->type == 'fixed'): ?>
                                            <?php echo e(number_format($item->value,0,',','.')); ?> đ
                                        <?php endif; ?>
                                    </td>
                                    <td style="text-align: center;"><?php echo e($item->qty); ?></td>
                                    <td class="center" style="text-align: center;">
                                        <a class="fa fa-trash-o fa-fw" onclick="return confirm('Bạn có chắc không?')" href="<?php echo e(route('admin.get.delete.coupon',$item->id)); ?>" data-toggle="tooltip" data-placement="top" title="Xóa"></a>
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