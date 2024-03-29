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
                                                echo "$p->size";
                                            ?>   
                                        </span>
                                    </small>
                                </div>
                            </div>
                            <div class="col-sm-3 col-xs-3 text-right">
                                <h6><?php echo e(number_format($item->price,0,',','.')); ?> đ</h6>
                            </div>
                        </div>
                        <div class="form-group"><hr /></div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <strong><?php echo trans('message.total'); ?>: </strong>
                                <div class="pull-right"><span><?php echo e(number_format($total,0,',','.')); ?> đ</span></div>
                            </div>
                            <?php if(session()->has('coupon')): ?>
                            <div class="col-xs-12">
                                <strong><?php echo trans('message.sale'); ?>: </strong>
                                <div class="pull-right"><span>- <?php echo e(number_format(session()->get('coupon')['discount'],0,',','.')); ?> đ</span></div>
                            </div>
                            <div class="col-xs-12">
                                <strong><?php echo trans('message.total'); ?> <?php echo trans('message.after'); ?> <?php echo trans('message.sale'); ?>: </strong>
                                <div class="pull-right"><span><?php echo e(number_format($newtotal,0,',','.')); ?> đ</span></div>
                            </div>
                            <?php endif; ?>
                            
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
                                <input type="text" class="form-control" name="name" readonly value="<?php echo e(Auth::user()->name); ?>"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12"><strong>Email:</strong></div>
                            <div class="col-md-12">
                                <input type="email" name="email" class="form-control" readonly value="<?php echo e(Auth::user()->email); ?>" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12"><strong><?php echo trans('message.phone'); ?>:</strong></div>
                            <div class="col-md-12"><input type="number" name="phone" class="form-control" value="<?php echo e(Auth::user()->phone); ?>" readonly/></div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="col-md-12"><strong><?php echo trans('message.city'); ?>:</strong></div>
                                    <div class="col-md-12">
                                        <select class="form-control" name="city" id="city">
                                            <option value="">Vui lòng chọn thành phố</option>
                                            <?php $city = DB::table('cities')->pluck('city','id'); ?>
                                            <?php $__currentLoopData = $city; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($key); ?>"><?php echo e($value); ?></option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                    <?php if($errors->has('city')): ?>
                                    <div class="help-block" style="color: red;">
                                        *<?php echo e($errors->first('city')); ?>

                                    </div>
                                    <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="col-md-12"><strong><?php echo trans('message.district'); ?>:</strong></div>
                                    <div class="col-md-12">
                                        <select class="form-control" name="district" id="district"></select>
                                    <?php if($errors->has('district')): ?>
                                    <div class="help-block" style="color: red;">
                                        *<?php echo e($errors->first('district')); ?>

                                    </div>
                                    <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12"><strong><?php echo trans('message.address'); ?>:</strong></div>
                            <div class="col-md-12"><textarea class="form-control" rows="2" name="address"></textarea>
                            <?php if($errors->has('address')): ?>
                            <div class="help-block" style="color: red;">
                                *<?php echo e($errors->first('address')); ?>

                            </div>
                            <?php endif; ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label for="language"><?php echo trans('message.commodities'); ?></label>
                                <select name="order_type" id="order_type" class="form-control">
                                    <option value="billpayment"><?php echo trans('message.payment'); ?> <?php echo trans('message.bill'); ?></option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label for="bank_code"><?php echo trans('message.bank'); ?></label>
                                <select name="bank_code" id="bank_code" class="form-control">
                                    <option value=""><?php echo trans('message.not selected'); ?></option>
                                    <option value="NCB"> <?php echo trans('message.bank'); ?> NCB</option>
                                    <option value="AGRIBANK"> <?php echo trans('message.bank'); ?> Agribank</option>
                                    <option value="VIETINBANK"><?php echo trans('message.bank'); ?> Vietinbank</option>
                                    <option value="BIDV"> <?php echo trans('message.bank'); ?> BIDV</option>
                                    <option value="TECHCOMBANK"> <?php echo trans('message.bank'); ?> Techcombank</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label for="language"><?php echo trans('message.language'); ?></label>
                                <select name="language" id="language" class="form-control">
                                    <option value="vn"><?php echo trans('message.vietnam'); ?></option>
                                    <option value="en"><?php echo trans('message.english'); ?></option>
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
    })
    $(document).ready(function (){
        $('#city').change(function (){
            var city_id = $(this).val();
            if(city_id){
                $.ajax({
                    url: `<?php echo e(route('getDistrict')); ?>?city_id=`+city_id,
                    type: 'GET',
                    dataType: 'json',
                    success:function(data)
                    {
                        if(data){
                            $('#district').empty();
                            $("#district").append('<option value="">Select</option>');
                            $.each(data,function(key,value){
                                $("#district").append('<option value="'+key+'">'+value+'</option>');
                            });
                        }else{
                            $('#district').empty();
                        }
                    }
                })
            }else{
                $("#district").empty();
            }
        })
    })
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>