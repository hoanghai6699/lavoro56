<?php $__env->startSection('content'); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Chi tiết đơn hàng</h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(route('admin')); ?>"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="<?php echo e(route('admin.get.list.order')); ?>"> Đơn hàng</a></li>
            <li class="active">Chi tiết đơn hàng</li>
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
                    

                    <form action="" method="POST">
                        <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
                        <div class="box-body">
                            <div class="col-md-8">
                                <div class="form-group">
                                    <table class="table table-bordered table-responsive">
                                        <thead>
                                            <th class="form-group" style="width: 500px;">Thông tin khách hàng</th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Mã hóa đơn</td>
                                                <td>#HD<?php echo e($order->id); ?>-<?php echo e($order->created_at->format('dmY')); ?></td>
                                            </tr>
                                            <tr>
                                                <td>Tên khách hàng</td>
                                                <td>
                                                    <?php $u = DB::table('users')->where('id',$order["user_id"])->first();
                                                        echo "$u->name"; 
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Ngày đặt hàng</td>
                                                <td><?php echo e($order->created_at); ?></td>
                                            </tr>
                                            <tr>
                                                <td>Địa chỉ</td>
                                                <td><?php echo e($order->address); ?></td>
                                            </tr>
                                            <tr>
                                                <td>Số điện thoại</td>
                                                <td><?php echo e($order->phone); ?></td>
                                            </tr>
                                            <tr>
                                                <td>Email</td>
                                                <td><?php echo e($order->email); ?></td>
                                            </tr>
                                            <tr>
                                                <td>Ghi chú</td>
                                                <td><?php echo e($order->note); ?></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <?php if(empty($order->status == 2 || $order->status == 3)): ?>
                                        <label>Trạng thái</label>
                                        <select class="form-control" name="status">
                                            <option value="0">Chờ xử lý</option>
                                            <option value="1">Đang giao hàng</option>
                                            <option value="2">Đã nhận hàng</option>
                                            <option value="3">Đã hủy đơn</option>
                                        </select>
                                    <?php endif; ?>
                                            
                                </div>
                                <?php if(empty($order->status == 2 || $order->status == 3)): ?>
                                <input type="submit" value="Xử lý" class="btn btn-primary">
                                <?php endif; ?>
                            </div>
                        </div>
                    </form>

                    
                </div>
            </div>
            
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Hình ảnh</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Giá</th>
                                    <th>Số lượng</th>
                                    <th>Thành tiền</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $stt=0 ?>
                                <?php $__currentLoopData = $order_detail; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php $t = DB::table('orders')->where('id',$item->order_id)->select('total','coupon_id')->first();?>
                                <?php $stt++ ?>
                                <tr>
                                    <td>#<?php echo e($stt); ?></td>
                                    <td>
                                        <img src="<?php echo e(url('uploads')); ?>/<?php echo e($item->product->image); ?>" class="img-responsive" alt="" width="80px" />
                                    </td>
                                    <td>
                                        <h6>
                                            <a href="<?php echo e(route('frontend.get.chitietsanpham',[$item->product->id,$item->product->slug])); ?>" target="_blank"><?php echo e($item->product->name); ?></a>
                                            <ul style="padding-left: 20px;">
                                                <?php if($item->price_sale>0): ?>
                                                <li>Sale: <?php echo e($item->price_sale); ?> (%)</li>
                                                <?php endif; ?>
                                                <li>Size: 
                                                    <?php $p = DB::table('sizes')->where('id',$item->size_id)->first();
                                                        echo "$p->name";
                                                    ?>   
                                                </li>
                                            </ul>
                                        </h6>
                                    </td>
                                    <td><div><?php echo e(number_format($item->price,0,',','.')); ?> đ</div></td>
                                    <td><div><?php echo e($item->qty); ?></div></td>
                                    <td><div class="cart-subtotal">
                                    <?php if(isset($item->price_sale)): ?>
                                        <?php echo e(number_format(($item->price*(100-$item->price_sale)/100)*$item->qty,0,',','.')); ?> đ
                                    <?php endif; ?>
                                        
                                        </div>
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