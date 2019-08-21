<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
    <section class="content-header">
        <h1>Thêm khuyến mãi</h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(route('admin')); ?>"><i class="fa fa-dashboard"></i> Trang tổng quan</a></li>
            <li><a href="<?php echo e(route('admin.get.list.product')); ?>">Danh sách khuyến mãi</a></li>
            <li class="active">Thêm khuyến mãi</li>
        </ol>
        <?php if(Session::has('success')): ?>
            <div class="alert alert-<?php echo Session::get('level'); ?>">
                <?php echo Session::get('success'); ?>

            </div>
        <?php endif; ?>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    
                    <div class="box-body">
                        <form action="" method="POST" enctype="multipart/form-data">
                            <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Tên sản phẩm</label>
                                        <select class="form-control" name="name_product">
                                            <?php $__currentLoopData = $product; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($item->id); ?>"><?php echo e($item->name); ?></option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                        <?php if($errors->has('name_product')): ?>
                                        <div class="help-block">
                                        <?php echo e($errors->first('name_product')); ?>

                                        </div>
                                        <?php endif; ?>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Từ ngày</label>
                                                <div class="input-group date">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                    <input type="date" class="form-control pull-right" name="startdate">
                                                    <?php if($errors->has('startdate')): ?>
                                                    <div class="help-block">
                                                    <?php echo e($errors->first('startdate')); ?>

                                                    </div>
                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Đến ngày</label>
                                                <div class="input-group date">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                    <input type="date" class="form-control pull-right" name="enddate">
                                                    <?php if($errors->has('enddate')): ?>
                                                    <div class="help-block">
                                                    <?php echo e($errors->first('enddate')); ?>

                                                    </div>
                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            
                                    <div class="form-group">
                                        <label>% Giảm giá</label>
                                        <input type="number" class="form-control" name="sale" placeholder="% Giảm giá">
                                        <?php if($errors->has('sale')): ?>
                                        <div class="help-block">
                                        <?php echo e($errors->first('sale')); ?>

                                        </div>
                                        <?php endif; ?>
                                    </div>
                                <button type="submit" class="btn btn-primary">Thêm khuyến mãi</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>