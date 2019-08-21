<?php $__env->startSection('title','Đăng nhập'); ?>
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
						<li class="category3"><span><?php echo trans('message.login'); ?></span></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- breadcrumbs area end -->
<!-- account-details Area Start -->
<div class="customer-login-area">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-xs-12">
				<div class="customer-login my-account">

					<form action="" method="post" class="login">
						<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
							<div class="form-fields">
								<div class="col-lg-12">
								    <?php if(Session::has('success')): ?>
								        <div class="alert alert-<?php echo Session::get('level'); ?>">
								            <?php echo Session::get('success'); ?>

								        </div>
								    <?php endif; ?>
								</div>
								<h2><?php echo trans('message.login'); ?></h2>
								<p class="form-row form-row-wide">
									<label for="username">Email<span class="required">*</span></label>
									<input type="text" class="input-text" name="email">
									<?php if($errors->has('email')): ?>
							        <div class="help-block">
							            <?php echo e($errors->first('email')); ?>

							        </div>
							        <?php endif; ?>
								</p>
								<p class="form-row form-row-wide">
									<label for="password"><?php echo trans('message.password'); ?> <span class="required">*</span></label>
									<input class="input-text" type="password" name="password">
									<?php if($errors->has('password')): ?>
							        <div class="help-block">
							            <?php echo e($errors->first('password')); ?>

							        </div>
							        <?php endif; ?>
								</p>
							</div>
							<div class="form-action">
								<p class="lost_password"> <a href="#"><?php echo trans('message.forgot password'); ?>?</a></p>
								<div class="actions-log">
									<input type="submit" class="button" name="login" value="<?php echo trans('message.login'); ?>">
								</div>
								<label for="rememberme" class="inline"> 
								<input name="rememberme" type="checkbox" id="rememberme" value="forever"> <?php echo trans('message.remember me'); ?> </label>
							</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>