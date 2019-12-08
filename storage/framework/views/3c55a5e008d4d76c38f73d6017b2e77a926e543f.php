<?php $__env->startSection('content'); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý danh mục </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(route('admin')); ?>"><i class="fa fa-dashboard"></i> Trang tổng quan</a></li>
            <li class="active">Danh mục</li>
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
                                    <th>STT</th>
                                    <th>Tên danh mục</th>
                                    <th>Danh mục cha</th>
                                    <th>Trạng thái</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $stt=0 ?>
                                <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cate): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php $stt++ ?>
                                <tr>
                                    <td><?php echo e($stt); ?></td>
                                    <td><?php echo e($cate->name); ?></td>
                                    <td>
                                        <?php if($cate['parent_id']==0): ?>
                                            <?php echo e("None"); ?>

                                        <?php else: ?>
                                            <?php 
                                                $parent = DB::table('categories')->where('id',$cate["parent_id"])->first();
                                                echo "$parent->name";
                                            ?>
                                        <?php endif; ?>
                                    </td>

                                    <td>
                                        <?php if($cate->active==1): ?>
                                            <a href="<?php echo e(route('admin.get.action.category',$cate->id)); ?>" data-toggle="tooltip" data-placement="top" title="Hiển thị"><img src="<?php echo e(url('/admin/img/publish-check.png')); ?>"></a>
                                        <?php else: ?>
                                            <a href="<?php echo e(route('admin.get.action.category',$cate->id)); ?>" data-toggle="tooltip" data-placement="top" title="Ẩn"><img src="<?php echo e(url('/admin/img/publish-deny.png')); ?>"></a>
                                        <?php endif; ?>
                                    </td>
                                    <td class="center">
                                        <a class="fa fa-pencil fa-fw" href="<?php echo e(route('admin.get.edit.category',$cate->id)); ?>" data-toggle="tooltip" data-placement="top" title="Sửa"></a>
                                        /
                                        <a class="fa fa-trash-o  fa-fw" onclick="return confirm('Bạn có chắc không?')" href="<?php echo e(route('admin.get.delete.category',$cate->id)); ?>" data-toggle="tooltip" data-placement="top" title="Xóa"></a>
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