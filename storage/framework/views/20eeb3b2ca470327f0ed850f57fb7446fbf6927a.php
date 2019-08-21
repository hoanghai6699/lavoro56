<?php $__env->startSection('title','Giới thiệu'); ?>
<?php $__env->startSection('content'); ?>
<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div class="container-inner">
					<ul>
						<li class="home">
							<a href="<?php echo e(route('frontend.get.home')); ?>"><?php echo trans('message.home'); ?></a>
							<span><i class="fa fa-angle-right"></i></span>
						</li>
						<li class="category3"><span><?php echo trans('message.order history'); ?></span></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="main-contact-area">
	<div class="container">
		<div class="row">

			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<?php if($order->count()>0): ?>
				<table id="example1" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th style="text-align: center;"><?php echo e(trans('message.code orders')); ?></th>
							<th style="text-align: center;"><?php echo e(trans('message.order date')); ?></th>
							<th style="text-align: center;"><?php echo e(trans('message.total money')); ?></th>
							<th style="text-align: center;"><?php echo e(trans('message.methods')); ?></th>
							<th style="text-align: center;"><?php echo e(trans('message.payment')); ?></th>
							<th style="text-align: center;"><?php echo e(trans('message.manipulation')); ?></th>
						</tr>
					</thead>

					<tbody>
						<?php $__currentLoopData = $order; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						<tr>
							<td style="text-align: center;">#HD<?php echo e($item->id); ?>-<?php echo e($item->created_at->format('dmY')); ?></td>
							<td style="text-align: center;"><?php echo e($item->created_at->format('d-m-Y H:i:s')); ?></td>
							<td style="text-align: center;"><?php echo e(number_format($item->total,0,',','.')); ?> VNĐ</td>
							<td style="text-align: center;">
								<?php if($item->payment_method=='cod'): ?>
                                    Ship COD
                                <?php elseif($item->payment_method=='atm'): ?>
                                    ATM
                                <?php endif; ?>
							</td>
							<td style="text-align: center;"><?php echo e($item->payment); ?></td>
							
							<td style="text-align: center;">
								<?php if($item->status==3): ?>
									Đã hủy đơn
								<?php else: ?>
								<a class="fa fa-eye fa-fw" data-id="<?php echo e($item->id); ?>" href="<?php echo e(route('chi-tiet',[$item->id])); ?>" data-toggle="tooltip" data-placement="top" title="<?php echo e(trans('message.follow')); ?>"></a>
								<?php endif; ?>
							</td>
							
						</tr>
						<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
					</tbody>

				</table>
				<?php else: ?>
				<h4>Chưa có đơn hàng nào</h4>
				<?php endif; ?>
			</div>
			
		</div>
	</div>	
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>