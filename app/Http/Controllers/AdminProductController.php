<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Product;
use App\Models\ProductImage;
use App\Models\ProductProperties;
use App\Models\Size;
use File,Auth,DB;

class AdminProductController extends Controller
{
    public function list(){
    	$products = Product::select('id','name','price','image','category_id','active','hot','created_at')->get();
    	return view('admin.product.index',compact('products'));
    }
    public function add(){
    	$parent = Category::select('id','name','parent_id')->get();
    	return view('admin.product.add',compact('parent'));
    }
    public function create(Request $req){
    	$this->validate($req,[
    		'name' => 'required|unique:products,name',
    		'category_id' => 'required',
    		'price' => 'required',
    		'image' => 'required|mimes:jpg,png,jpeg,gif,bmp'
    	],[
    		'name.required' => 'Tên sản phẩm không được để trống',
    		'name.unique' => 'Tên sản phẩm đã tồn tại',
    		'category_id.required' => 'Bạn phải chọn loại sản phẩm',
    		'price.required' => 'Bạn phải nhập giá sản phẩm',
    		'image.required' => 'Bạn phải nhập ảnh sản phẩm',
    		'image.mimes' => 'Ảnh có một trong các định dạng jpg,png,jpeg,gif,bmp'
    	]);
        $file_name = $req->file('image')->getClientOriginalName();

    	$product = new Product();
    	$product->name = $req->name;
    	$product->slug = str_slug($req->name);
    	$product->category_id = $req->category_id;
    	$product->price = $req->price;
        $product->image = $file_name;
    	$product->description = $req->description;
    	$product->content = $req->content;
        $product->gender = $req->rdoLevel;
        $product->user_id = Auth::user()->id;

        $req->file('image')->move(base_path('uploads/'),$file_name);
    	$product->save();

        $product_id = $product->id;
        if ($req->hasFile('fProductDetail')) {
            foreach ($req->file('fProductDetail') as $file) {
                $product_img = new ProductImage();

                    $product_img->images = $file->getClientOriginalName();
                    $product_img->product_id = $product_id;
                    $file->move(base_path('uploads/detail/'),$file->getClientOriginalName());
                    $product_img->save();
            }
        }
        //dd($product->category_id);
        $cate = Category::where('id',$product->category_id)->select('total_product')->first();
        $total_product = $cate->total_product + 1;
        $cate = Category::where('id',$product->category_id)->update(['total_product'=>$total_product]);
    	return redirect()->route('admin.get.list.product')->with(['level'=>'success','success'=>'Thêm mới sản phẩm thành công']);
    }

    public function edit($id){
    	$parent = Category::select('id','name','parent_id')->get();
    	$product = Product::find($id);
        $product_detail = Product::find($id)->pimages;
    	return view('admin.product.edit',compact('product','parent','product_detail'));
    }
    public function update($id,Request $req){
    	$product = Product::find($id);
    	$product->name = $req->name;
    	$product->slug = str_slug($req->name);
    	$product->category_id = $req->category_id;
    	$product->price = $req->price;
    	$product->description = $req->description;
    	$product->content = $req->content;
        $product->gender = $req->rdoLevel;
        $product->user_id = Auth::user()->id;
        $img_current = 'uploads/'.$req->img_current;
        if (!empty($req->image)) {
            $file_name = $req->file('image')->getClientOriginalName();
            $product->image = $file_name;
            $req->file('image')->move('uploads/',$file_name);
            if (File::exists($img_current)) {
                File::delete($img_current);
            }
        }else{
            echo "không có file";
        }
    	$product->save();

        if (!empty($req->fProductDetail)) {
            foreach ($req->file('fProductDetail') as $file) {
                $product_img = new ProductImage();
                if (isset($file)) {
                    $product_img->images = $file->getClientOriginalName();
                    $product_img->product_id = $id;
                    $file->move('uploads/detail/',$file->getClientOriginalName());
                                   
                    $product_img->save();
                }       
            }
        }
    	return redirect()->route('admin.get.list.product')->with(['level'=>'success','success'=>'Sửa sản phẩm thành công']);
    }

    public function option($id){
        $product = Product::find($id);
        $size = Size::all();
        //$properties = ProductProperties::where('product_id',$product->id)->get()->toArray();

        return view('admin.product.option',compact('product','size'));
    }

    public function update_option($id,Request $req){
        $this->validate($req,[
            'quantity' => 'required',
            
        ],[
            'quantity.required' => 'Bạn chưa nhập số lượng',
            
        ]);

        $sizes = ProductProperties::where('product_id',$id)->where("size_id",$req->size)->get()->toArray();
        if(count($sizes)>0){
            return redirect()->back()->with(['level'=>'danger','success'=>'Size đã tồn tại']);
        }else{
            $size = new ProductProperties;
            $size->product_id = $id;
            $size->size_id    = $req->size;
            $size->qty   = $req->quantity;
            $size->save();

            return redirect()->back()->with(['level'=>'success','success'=>'Thêm size thành công']);   
        }
    }

    public function delete($id){
        $product_detail = Product::find($id)->pimages->toArray();
        foreach ($product_detail as $value) {
            File::delete('uploads/detail/'.$value["images"]);
        }
        $product = Product::find($id);
        File::delete('uploads/'.$product->image);
        $product->delete($id);

        $cate = Category::where('id',$product->category_id)->select('total_product')->first();
        $total_product = $cate->total_product - 1;
        $cate = Category::where('id',$product->category_id)->update(['total_product'=>$total_product]);
        return redirect()->back()->with(['level'=>'success','success'=>'Xóa sản phẩm thành công']);
    }

    public function delete_img($id){
        $delimg = ProductImage::find($id);
        File::delete('uploads/detail/'.$delimg->images);
        $delimg->delete($id);
        
        return redirect()->back()->with(['level'=>'success','success'=>'Xóa ảnh chi tiết thành công']);
    }

    public function action($id){
    	$product = Product::find($id);
    	$product->active = $product->active ? 0 : 1;
		$product->save();
    	return redirect()->back();
    }
    public function action1($id){
    	$product = Product::find($id);
		$product->hot = $product->hot ? 0 : 1;
		$product->save();
    	return redirect()->back();
    }
    public function postAjaxEditQuantity(Request $req){
        $product_id = $req->product_id;
        $size_id    =  $req->size_id;
        if (isset($req->qty)) {
            $qty = $req->qty;
        } else if ($req->qty==null){
            $qty = 1;
        }
        $valid = array('success' => false, 'messages' => array());
        //QueryBuilder udpate table
        $qty = ProductProperties::where('product_id',$product_id)->where('size_id',$size_id)->update(['qty'=>$qty]);
        $valid['success'] = true;
            $valid['messages'] = "Sửa số lượng sản phẩm thành công";
            return json_encode(array(
                'valid' => $valid
            ));
    }
}
