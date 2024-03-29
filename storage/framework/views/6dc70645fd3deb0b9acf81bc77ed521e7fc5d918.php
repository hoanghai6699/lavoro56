<!DOCTYPE html>
<html>
<head>
	<style>
	    table {
	        font-family: arial, sans-serif;
	        border-collapse: collapse;
	        width: 100%;
	    }

	    td, th {
	        border: 1px solid #dddddd;
	        text-align: left;
	        padding: 8px;
	    }

	    tr:nth-child(even) {
	        background-color: #dddddd;
	    }
	</style>
</head>
<body>
	<section id="typography">      
		<div id="wrap-inner">
			<div id="khach-hang">
				<h3>Thông tin khách hàng</h3>
				<p>
					<span class="info">Khách hàng: </span>
					<?php echo e($info['name']); ?>

				</p>
				<p>
					<span class="info">Email: </span>
					<?php echo e($info['email']); ?>

				</p>
				<p>
					<span class="info">Điện thoại: </span>
					<?php echo e($info['phone']); ?>

				</p>
				<p>
					<span class="info">Địa chỉ: </span>
					<?php 
						$city = DB::table('cities')->where('id',$info['city_id'])->first();
						$district = DB::table('districts')->where('id',$info['district_id'])->first();
					?>
					<?php echo e($info['address']); ?>-<?php echo e($district->district); ?>-<?php echo e($city->city); ?>

				</p>
				<p>
					<span class="info">Ghi chú: </span>
					<?php echo e($info['note']); ?>

				</p>
			</div>						
			<div id="hoa-don">
				<h3>Hóa đơn mua hàng</h3>							
				<table class="table-bordered table-responsive">
					<tr class="bold">
						<td width="30%">Tên sản phẩm</td>
						<td width="25%">Giá</td>
						<td width="20%">Số lượng</td>
						<td width="15%">Thành tiền</td>
					</tr>
					<?php $__currentLoopData = $cart; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<tr>
						<td>
							<?php echo e($item->name); ?>

							<ul style="padding-left: 20px;">
                                <li>Size: 
									<?php $p = DB::table('sizes')->where('id',$item->options->size)->first();
                                        echo "$p->size";
                                    ?>
                                </li>
                            </ul>
						</td>
						<td class="price"><?php echo e(number_format($item->price,0,",",".")); ?> VNĐ</td>
						<td><?php echo e($item->qty); ?></td>
						<td class="price"><?php echo e(number_format($item->price*$item->qty,0,",",".")); ?> VNĐ</td>
					</tr>
					<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
					<tr>
						<td colspan="3">Tổng tiền:</td>
						<td class="total-price"><?php echo e(number_format($total,0,',','.')); ?>VNĐ</td>
					</tr>
					<?php if(session()->has('coupon')): ?>
					<tr>
						<td colspan="3">Khuyến mãi:</td>
						<td class="total-price">- <?php echo e(number_format(session()->get('coupon')['discount'],0,',','.')); ?> VNĐ</td>
					</tr>
					<tr>
						<?php $new = ($total - session()->get('coupon')['discount']); ?>
						<td colspan="3">Sau khuyến mãi:</td>
						<td class="total-price"><?php echo e(number_format($new,0,',','.')); ?>VNĐ</td>
					</tr>
					<?php endif; ?>
				</table>
			</div>
			<div id="xac-nhan">
				<br>
				<p align="justify">
					<b>Quý khách đã đặt hàng thành công!</b><br />
					• Sản phẩm của Quý khách sẽ được chuyển đến Địa chỉ có trong phần Thông tin Khách hàng của chúng Tôi sau thời gian 2 đến 3 ngày, tính từ thời điểm này.<br />
					• Nhân viên giao hàng sẽ liên hệ với Quý khách qua Số Điện thoại trước khi giao hàng 24 tiếng.<br />
					<b><br />Cám ơn Quý khách đã sử dụng Sản phẩm của chúng Tôi!</b>
				</p>
			</div>
		</div>
	</section>
</body>
</html>

