<?php $__env->startSection('content'); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý đơn hàng</h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(route('admin')); ?>"><i class="fa fa-dashboard"></i> Trang tổng quan</a></li>
            <li class="active">Đơn hàng</li>
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
                                    <th>Mã ĐH</th>
                                    <th style="text-align: center">Tên khách hàng</th>
                                    <th style="text-align: center">Tổng tiền</th>
                                    <th style="text-align: center">Mã giảm giá</th>
                                    <th style="text-align: center">Trạng thái</th>
                                    <th style="text-align: center">Phương thức</th>
                                    <th style="text-align: center">Thanh toán</th>
                                    <th style="text-align: center">Ngày tạo</th>
                                    <th style="text-align: center">Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                
                                <?php $__currentLoopData = $order; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                
                                <tr>
                                    <td>#HD<?php echo e($item->id); ?>-<?php echo e($item->created_at->format('dmY')); ?></td>
                                    <td style="text-align: center">
                                        <?php 
                                            $u = DB::table('users')->where('id',$item["user_id"])->first();
                                            echo "$u->name";
                                        ?>
                                    </td>
                                    <td style="text-align: center"><?php echo e(number_format($item->total,0,',','.')); ?> đ</td>
                                    <td style="text-align: center">
                                        <?php if($item->coupon_id): ?>
                                            <?php echo e($item->coupon->code); ?>

                                        <?php else: ?>
                                            Không nhập
                                        <?php endif; ?>
                                    </td>
                                    <td style="text-align: center">
                                        <?php if($item->status==0): ?>
                                            Chờ xử lý
                                        <?php elseif($item->status==1): ?>
                                            Đang giao hàng
                                        <?php elseif($item->status==2): ?>
                                           Đã nhận hàng
                                        <?php elseif($item->status==3): ?>
                                            Đã hủy đơn
                                        <?php endif; ?>
                                    </td>
                                    <td style="text-align: center">
                                        <?php if($item->payment_method=='cod'): ?>
                                            Ship COD
                                        <?php elseif($item->payment_method=='atm'): ?>
                                            ATM
                                        <?php endif; ?>
                                    </td>
                                    <td style="text-align: center">
                                        <?php if($item->payment=='Chưa thanh toán'): ?>
                                            Chưa thanh toán
                                        <?php elseif($item->payment=='Đã thanh toán'): ?>
                                            Đã thanh toán
                                        <?php endif; ?>
                                    </td>
                                    <td style="text-align: center"><?php echo e($item->created_at->format('d-m-Y')); ?></td>
                                    
                                    <td style="text-align: center">
                                        <a class="fa fa-eye fa-fw" data-id="<?php echo e($item->id); ?>" href="<?php echo e(route('admin.get.view.order',$item->id)); ?>" data-toggle="tooltip" data-placement="top" title="Chi tiết"></a>
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