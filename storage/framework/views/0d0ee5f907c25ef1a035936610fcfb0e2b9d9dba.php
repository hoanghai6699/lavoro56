<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
    <section class="content-header">
        <h1>Quản lý sản phẩm giảm giá</h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(route('admin')); ?>"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li class="active">Sản phẩm giảm giá</li>
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
                                    <th style="text-align: center;">STT</th>
                                    <th style="text-align: center;">Ảnh sản phẩm</th>
                                    <th>Tên sản phẩm</th>
                                    <th style="text-align: center;">% Giảm giá</th>
                                    <th style="text-align: center;">Ngày bắt đầu</th>
                                    <th style="text-align: center;">Ngày kết thúc</th>
                                    <th style="text-align: center;">Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $stt=0 ?>
                                <?php $__currentLoopData = $sale; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php $stt++ ?>
                                <tr>
                                    <td><?php echo e($stt); ?></td>
                                    <td style="text-align: center;">
                                        <?php $n = DB::table('products')->where('id',$item->product_id)->first();?>
                                        <img src="<?php echo e(url('uploads')); ?>/<?php echo e($n->image); ?>" width="80px">
                                    </td>
                                    <td>
                                        <?php $n = DB::table('products')->where('id',$item->product_id)->first();
                                        echo "$n->name";
                                        ?>
                                    </td>
                                    <td style="text-align: center;"><?php echo e($item->sale); ?> %</td>
                                    <td style="text-align: center;"><?php echo e($item->start_date); ?></td>
                                    <td style="text-align: center;"><?php echo e($item->end_date); ?></td>
                                    <td class="center" style="text-align: center;">
                                        <a class="fa fa-trash-o fa-fw" onclick="return confirm('Bạn có chắc không?')" href="<?php echo e(route('admin.get.delete.sale',$item->id)); ?>" data-toggle="tooltip" data-placement="top" title="Xóa"></a>
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