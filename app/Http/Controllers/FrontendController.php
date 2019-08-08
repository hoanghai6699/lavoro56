<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB,Auth,Cart,Hash;
use App\Models\User;
use App\Models\ProductProperties;
use App\Models\Article;
use App\Models\SaleProduct;
use App\Models\Slide;

class FrontendController extends Controller
{
	public function home(){
		$product = DB::table('products')->select('id','name','slug','price','image','category_id','active','hot','pay')->orderBy('id','DESC')->skip(0)->take(8)->get();
        $slide = Slide::all();
		return view('frontend.home',compact('product','slide'));
	}

    public function loaisanpham(Request $req,$id){
    	$product_cate = DB::table('products')->select('id','name','image','slug','category_id','price','description','active');
        
        if($req->price){
            $price = $req->price;
            switch ($price) {
                case '1':
                    $product_cate->where('price','<',1000000);
                    break;
                case '2':
                    $product_cate->whereBetween('price',[1000000,2000000]);
                    break;
                case '3':
                    $product_cate->where('price','>',2000000);
                    break;
            }
        }
        
        if ($req->orderby) {
            $orderby = $req->orderby;
            switch ($orderby) {
                case 'price':
                    $product_cate->orderBy('price','ASC');
                    break;
                case 'price-desc':
                    $product_cate->orderBy('price','DESC');
                    break;
            }
        }
        

        $product_cate = $product_cate->where('category_id',$id)->paginate(9);

        $cate = DB::table('categories')->select('parent_id')->where('id',$product_cate[0]->category_id)->first();
        $menu_cate = DB::table('categories')->select('id','name','slug')->where('parent_id',$cate->parent_id)->get();
        return view('frontend.shop',compact('product_cate','menu_cate'));
    }
    public function chitietsanpham($id,Request $req){
    	$product = DB::table('products')->where('id',$id)->first();
        $image = DB::table('product_images')->select('id','images')->where('product_id',$product->id)->get();
    	$product_new = DB::table('products')->where('category_id',$product->category_id)->where('id','<>',$id)->take(8)->get();
        $size = ProductProperties::where('product_id',$product->id)->get();
        $sale_product = SaleProduct::where('product_id',$product->id)->select('start_date','end_date','sale')->first();

    	return view('frontend.product-detail',compact('product','product_new','image','size','sale_product'));
    }
    
    public function home_login(){
        return view('frontend.login');
    }
    public function post_home_login(Request $req){
        $this->validate($req,[
            'email' => 'required|email',
            'password' => 'required'
        ],[
            'required' => ':attribute không được rỗng',
            'email' => ':attribute không đúng định dạng (demo@gmail.com)'
        ]);
        if (Auth::attempt($req->only('email','password'))) {
            return redirect()->route('frontend.get.home')->with(['level'=>'success','success'=>'Đăng nhập tài khoản thành công']);
        }else{
            return redirect()->back()->with(['level'=>'danger','success'=>'Đăng nhập tài khoản thất bại, vui lòng thử lại']);
        }
    }
    public function register(){
        return view('frontend.register');
    }
    public function post_register(Request $req){
        $this->validate($req,[
            'name' => 'required',
            'email' => 'required|unique:users,email|email',
            'password' => 'required|min:6',
            're_password' => 'same:password'
        ],[
            'name.required' => 'Họ tên không được để trống',
            'email.required' => 'Email không được để trống',
            'email.unique' => 'Email đã tồn tại',
            'email.email' => 'Email phải đúng định dạng (demo@gmail.com)',
            'password.required' => 'Mật khẩu không được để trống',
            'password.min' => 'Mật khẩu ít nhất 6 ký tự',
            're_password.same' => 'Mật khẩu nhập lại không đúng'
        ]);

        $user = new User();
        $user->name = $req->name;
        $user->email = $req->email;
        $user->password = Hash::make($req->password);
        $user->remember_token = $req->_token;
        $user->phone = $req->phone;
        $user->level = 0;
        $user->save();
        return redirect()->back()->with(['level'=>'success','success'=>'Đăng ký tài khoản thành công']);
    }
    public function home_logout(){
        Auth::logout();
        Cart::destroy();
        return redirect()->route('frontend.get.home')->with(['level'=>'success','success'=>'Thoát tài khoản thành công']);
    }

    public function tintuc(){
        $article = Article::paginate(6);
        return view('frontend.article',compact('article'));
    }

    public function chitiettintuc($id){
        $article = Article::find($id);
        return view('frontend.article-detail',compact('article'));
    }

    public function lienhe(){
        return view('frontend.contact-us');
    }

    public function changeLanguage($language){
        \Session::put('language', $language);
        return redirect()->back();
    }
}
