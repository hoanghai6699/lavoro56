<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
    <section class="content-header">
        <h1>Quản lý hàng tồn kho</h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(route('admin')); ?>"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="<?php echo e(route('admin.get.list.warehouse')); ?>"></i> Kho hàng</a></li>
            <li class="active">Hàng tồn</li>
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
                                    <th style="text-align: center;">Loại sản phẩm</th>
                                    <th style="text-align: center;">Ngày tạo</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <?php $stt=0 ?>
                                <?php $__currentLoopData = $stock; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if($item->pay==0): ?>
                                <?php $stt++ ?>
                                <tr>
                                    <td><?php echo e($stt); ?></td>
                                    <td style="text-align: center;"><img src="<?php echo url('uploads'); ?>/<?php echo $item['image']; ?>" width="100px"></td>
                                    <td><?php echo e($item->name); ?>

                                        <ul style="padding-left: 20px;">
                                            <li>Giá: <?php echo e(number_format($item->price,'0',',','.')); ?> (đ)</li>
                                            <li>Còn lại: <?php $qty=DB::table('product_properties')->where('product_id',$item->id)->sum('qty'); echo $qty; ?></li>
                                        </ul>
                                    </td>
                                    <td style="text-align: center;padding-top: 43px;">
                                        <?php 
                                            $cate = DB::table('categories')->where('id',$item["category_id"])->first();
                                            echo "$cate->name";
                                        ?>
                                    </td>
                                    <td style="text-align: center;padding-top: 43px;"><?php echo e($item->created_at); ?></td>
                                </tr>
                                <?php endif; ?>
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