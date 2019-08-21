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
						<li class="category3"><span><?php echo trans('message.follow'); ?> <?php echo trans('message.order'); ?></span></li>
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
				<?php $__currentLoopData = $order; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
				<ol class="progtrckr" data-progtrckr-steps="3">
				    <li <?php if($item->status==2 || $item->status==1 || $item->status==0): ?> class="progtrckr-done" <?php else: ?> class="progtrckr-todo" <?php endif; ?>>Đang xử lý</li>
					<li <?php if($item->status==2 || $item->status==1): ?> class="progtrckr-done" <?php else: ?> class="progtrckr-todo" <?php endif; ?>>Đang giao hàng</li>
					<li <?php if($item->status==2): ?> class="progtrckr-done" <?php else: ?> class="progtrckr-todo" <?php endif; ?>>Đã nhận hàng</li>
				</ol>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			</div>
		</div>
	</div>	
</div>

<style type="text/css">
	ol.progtrckr {
    margin: 0;
    padding: 0;
    list-style-type none;
}

ol.progtrckr li {
    display: inline-block;
    text-align: center;
    line-height: 3.5em;
}

ol.progtrckr[data-progtrckr-steps="2"] li { width: 49%; }
ol.progtrckr[data-progtrckr-steps="3"] li { width: 33%; }
ol.progtrckr[data-progtrckr-steps="4"] li { width: 24%; }
ol.progtrckr[data-progtrckr-steps="5"] li { width: 19%; }
ol.progtrckr[data-progtrckr-steps="6"] li { width: 16%; }
ol.progtrckr[data-progtrckr-steps="7"] li { width: 14%; }
ol.progtrckr[data-progtrckr-steps="8"] li { width: 12%; }
ol.progtrckr[data-progtrckr-steps="9"] li { width: 11%; }

ol.progtrckr li.progtrckr-done {
    color: black;
    border-bottom: 4px solid yellowgreen;
}
ol.progtrckr li.progtrckr-todo {
    color: silver; 
    border-bottom: 4px solid silver;
}

ol.progtrckr li:after {
    content: "\00a0\00a0";
}
ol.progtrckr li:before {
    position: relative;
    bottom: -2.5em;
    float: left;
    left: 50%;
    line-height: 1em;
}
ol.progtrckr li.progtrckr-done:before {
    content: "\2713";
    color: white;
    background-color: yellowgreen;
    height: 2.2em;
    width: 2.2em;
    line-height: 2.2em;
    border: none;
    border-radius: 2.2em;
}
ol.progtrckr li.progtrckr-todo:before {
    content: "\039F";
    color: silver;
    background-color: white;
    font-size: 2.2em;
    bottom: -1.2em;
}
</style>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('frontend.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>