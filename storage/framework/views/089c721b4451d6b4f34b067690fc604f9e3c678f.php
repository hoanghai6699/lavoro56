<?php $__env->startSection('title','Thanh toán vnpay'); ?>
<?php $__env->startSection('content'); ?>
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
                        <li class="home">
                            <a href="<?php echo e(route('shoppingcart.get.giohang')); ?>"><?php echo trans('message.cart'); ?></a>
                            <span><i class="fa fa-angle-right"></i></span>
                        </li>
                        <li class="category3"><span><?php echo trans('message.payment'); ?> vnpay</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="main-contact-area">
    <div class="container wrapper">
        <div class="row cart-body">
            <form class="form-horizontal" method="post" action="<?php echo e(route('create-vnpay')); ?>" id="create_form">
            <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-push-6 col-sm-push-6">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <?php echo trans('message.order confirmation'); ?> <div class="pull-right"><small><a class="afix-1" href="<?php echo e(route('shoppingcart.get.giohang')); ?>"><?php echo trans('message.update'); ?></a></small></div>
                    </div>
                    <div class="panel-body">
                        <?php $__currentLoopData = $content; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="form-group">
                            <div class="col-sm-3 col-xs-3">
                                <img class="img-responsive" src="<?php echo e(url('/uploads')); ?>/<?php echo e($item->options->img); ?>" />
                            </div>
                            <div class="col-sm-6 col-xs-6">
                                <div class="col-xs-12"><?php echo e($item->name); ?></div>
                                <div class="col-xs-12"><small><?php echo trans('message.quantity'); ?> : <span><?php echo e($item->qty); ?></span></small></div>
                                <div class="col-xs-12">
                                    <small>Size : 
                                        <span>
                                            <?php $p = DB::table('sizes')->where('id',$item->options->size)->first();
                                                echo "$p->name";
                                            ?>   
                                        </span>
                                    </small>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-3 text-right">
                                <h6><?php echo e(number_format($item->price,0,',','.')); ?> đ</h6>
                                <?php if(session()->has('coupon')): ?>
                                - <?php echo e(number_format(session()->get('coupon')['discount'],0,',','.')); ?> đ
                                <?php endif; ?>
                            </div>
                        </div>
                        <div class="form-group"><hr /></div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <strong><?php echo trans('message.total'); ?>: </strong>
                                <?php if(session()->has('coupon')): ?>
                                <div class="pull-right"><span><?php echo e(number_format($newtotal,0,',','.')); ?> đ</span></div>
                                <?php elseif(!(session()->has('coupon'))): ?>
                                <div class="pull-right"><span><?php echo e(number_format($total,0,',','.')); ?> đ</span></div>
                                <?php endif; ?>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-pull-6 col-sm-pull-6">
                <?php if(Auth::check()): ?>
                <div class="panel panel-info">
                    <div class="panel-heading"><?php echo trans('message.billing information'); ?></div>
                    <div class="panel-body">
                        <div class="form-group">
                            <div class="col-md-12"><strong><?php echo trans('message.name'); ?>:</strong></div>
                            <div class="col-md-12">
                                <input type="text" class="form-control" name="name" value="<?php echo e(Auth::user()->name); ?>"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12"><strong>Email:</strong></div>
                            <div class="col-md-12">
                                <input type="email" name="email" class="form-control" value="<?php echo e(Auth::user()->email); ?>" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12"><strong><?php echo trans('message.phone'); ?>:</strong></div>
                            <div class="col-md-12"><input type="number" name="phone" class="form-control" value="<?php echo e(Auth::user()->phone); ?>" /></div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12"><strong><?php echo trans('message.address'); ?>:</strong></div>
                            <div class="col-md-12"><textarea class="form-control" rows="3" name="address"></textarea>
                            <?php if($errors->has('address')): ?>
                            <div class="help-block" style="color: red;">
                                *<?php echo e($errors->first('address')); ?>

                            </div>
                            <?php endif; ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label for="language">Loại hàng hóa </label>
                                <select name="order_type" id="order_type" class="form-control">
                                    <option value="billpayment">Thanh toán hóa đơn</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label for="bank_code">Ngân hàng</label>
                                <select name="bank_code" id="bank_code" class="form-control">
                                    <option value="">Không chọn</option>
                                    <option value="NCB"> Ngan hang NCB</option>
                                    <option value="AGRIBANK"> Ngan hang Agribank</option>
                                    <option value="VIETINBANK">Ngan hang Vietinbank</option>
                                    <option value="BIDV"> Ngân hàng BIDV</option>
                                    <option value="TECHCOMBANK"> Ngân hàng Techcombank</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label for="language">Ngôn ngữ</label>
                                <select name="language" id="language" class="form-control">
                                    <option value="vn">Tiếng Việt</option>
                                    <option value="en">English</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12"><strong><?php echo trans('message.note'); ?>:</strong></div>
                            <div class="col-md-12"><textarea class="form-control" rows="3" name="note"></textarea></div>
                            <?php if($errors->has('note')): ?>
                            <div class="help-block" style="color: red;">
                                *<?php echo e($errors->first('note')); ?>

                            </div>
                            <?php endif; ?>
                        </div>
                        <div class="form-group pull-right">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary btn-submit-fix" id="btnPopup"><?php echo trans('message.confirm'); ?></button>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endif; ?>
            </div>
            </form>
        </div>
    </div>
</div>  
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<link href="https://sandbox.vnpayment.vn/paymentv2/lib/vnpay/vnpay.css" rel="stylesheet"/>
<script src="https://sandbox.vnpayment.vn/paymentv2/lib/vnpay/vnpay.js"></script>
<script type="text/javascript">
    $("#btnPopup").click(function () {
        var postData = $("#create_form").serialize();
        var submitUrl = $("#create_form").attr("action");
        $.ajax({
            type: "POST",
            url: submitUrl,
            data: postData,
            dataType: 'JSON',
            success: function (x) {
                if (x.code === '00') {
                    if (window.vnpay) {
                        vnpay.open({width: 768, height: 600, url: x.data});
                    } else {
                        location.href = x.data;
                    }
                    return false;
                } else {
                    toastr.warning(x.valid.messages);
                }
            }
        });
        return false;
    });
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>