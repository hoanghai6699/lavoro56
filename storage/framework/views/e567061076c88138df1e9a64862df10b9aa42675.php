<?php $__env->startSection('title','Giỏ hàng'); ?>
<?php $__env->startSection('content'); ?>
<form action="" method="post">
<?php echo e(csrf_field()); ?>

<script>
	function updatecart(qty,rowId){
	$.get(
	    '<?php echo e(asset("cap-nhat")); ?>',
	    {qty:qty,rowId:rowId},
	    function(){
	      	location.reload();
	    }
	);
}
</script>
<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="container-inner">
					<ul>
						<li class="home">
							<a href="<?php echo e(route('frontend.get.home')); ?>"><?php echo trans('message.home'); ?></a>
							<span><i class="fa fa-angle-right"></i></span>
						</li>
						<li class="category3"><span><?php echo trans('message.cart'); ?></span></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-12">
			<?php if(Session::has('success')): ?>
			<div class="alert alert-<?php echo Session::get('level'); ?>">
				<?php echo Session::get('success'); ?>

			</div>
			<?php endif; ?>
		</div>
		</div>
	</div>
</div>
<!-- breadcrumbs area end -->
<!-- Shopping Table Container -->
<div class="cart-area-start">
	<div class="container">
		<?php if(Cart::count()>0): ?>
		<!-- Shopping Cart Table -->
		<div class="row">
			<div class="col-md-12">

				<div class="table-responsive">
					<table class="cart-table">
						<thead>
							<tr>
								<th>STT</th>
								<th><?php echo trans('message.image'); ?></th>
								<th><?php echo trans('message.name product'); ?></th>
								<th><?php echo trans('message.unit price'); ?></th>
								<th><?php echo trans('message.quantity'); ?></th>
								<th><?php echo trans('message.subtotal'); ?></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<?php $stt=0 ?>
							<?php $__currentLoopData = $content; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							<?php $stt++ ?>
							<tr>
								<td>#<?php echo e($stt); ?></td>
								<td>
									<img src="<?php echo e(url('/uploads')); ?>/<?php echo e($item->options->img); ?>" class="img-responsive" alt=""/>
								</td>
								<td>
									<h6>
										<?php echo e($item->name); ?>

										<ul style="padding-left: 20px;">
                                            <li>Size: 
                                            	<?php $p = DB::table('sizes')->where('id',$item->options->size)->first();
                                                        echo "$p->size";
                                                    ?>
                                            </li>
                                        </ul>
									</h6>
								</td>
								<td>
									<div class="cart-price"><?php echo e(number_format($item->options->price_old,0,',','.')); ?> đ</div>
								</td>
								<td>
									<form>
										<input type="text" name="qty" placeholder="<?php echo e($item->qty); ?>" onchange="updatecart(this.value,'<?php echo e($item->rowId); ?>')">
									</form>
								</td>
								<td>
									<div class="cart-subtotal"><?php echo e(number_format($item->price*$item->qty,0,',','.')); ?> đ</div>
								</td>
								<td><a href="<?php echo e(route('shoppingcart.get.xoahang',$key)); ?>"><i class="fa fa-times"></i></a></td>
							</tr>
							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							<tr>
								<td class="actions-crt" colspan="7">
									<div class="">
										<div class="col-md-6 col-sm-6 col-xs-6 align-left"><a class="cbtn" href="<?php echo e(route('frontend.get.home')); ?>"><?php echo trans('message.continue shopping'); ?></a></div>
										<div class="col-md-6 col-sm-6 col-xs-6 align-right"><a class="cbtn" href="<?php echo e(route('shoppingcart.get.xoagiohang')); ?>"><?php echo trans('message.clear shopping cart'); ?></a></div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 vendee-clue">
				<div class="shipping coupon" style="width: 237px;"></div>
				<div class="shipping coupon hidden-sm">
					<?php if(!(session()->has('coupon'))): ?>
					<div class=""><h5><?php echo trans('message.discount codes'); ?></h5></div>
					<form action="<?php echo e(route('coupon.store')); ?>" method="post">
						<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
						<input type="text" class="coupon-input" name="coupon">
						<button class="pull-left" type="submit" id="add-coupon"><?php echo trans('message.apply'); ?></button>
					</form>
					<?php endif; ?>
				</div>
				<div class="shipping coupon cart-totals" style="width: 500px;">
					<ul>
						<li class="cartSubT"><?php echo trans('message.free ship'); ?>:    <span>0đ</span></li>
						<?php if(session()->has('coupon')): ?>
						<li class="cartSubT"><?php echo trans('message.discount codes'); ?> (<?php echo e(session()->get('coupon')['name']); ?>):
						<span>- <?php echo e(number_format(session()->get('coupon')['discount'],0,',','.')); ?> đ</span></li>
						<form action="<?php echo e(route('coupon.destroy')); ?>" method="post" style="display: inline">
							<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
							<?php echo e(method_field('delete')); ?>

							<button type="submit"><?php echo trans('message.cancel code'); ?></button>
						</form>
						<li class="cartSubT"><?php echo trans('message.total'); ?>:    <span><?php echo e(number_format($newtotal,0,',','.')); ?> đ</span></li>
						<?php elseif(!(session()->has('coupon'))): ?>
						<li class="cartSubT"><?php echo trans('message.total'); ?>:    <span><?php echo e(number_format($total,0,',','.')); ?> đ</span></li>
						<?php endif; ?>
						
					</ul>
					<div class="col-md-6"><a class="proceedbtn" href="<?php echo e(route('thanh-toan-nhan-hang')); ?>" data-toggle="tooltip" data-placement="top" title="Ship COD"><?php echo trans('message.payment on delivery'); ?></a></div>
					<div class="col-md-6">
					<a class="proceedbtn" href="<?php echo e(route('thanh-toan-atm')); ?>" data-toggle="tooltip" data-placement="top" title="ATM"><?php echo trans('message.pay by ATM'); ?></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<?php else: ?>
		<h4><?php echo trans('message.no product'); ?>.</h4>
	<?php endif; ?>
</div>
</form>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>