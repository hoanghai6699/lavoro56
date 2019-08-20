<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Order;
use App\Models\Product;
use App\Models\OrderDetail;
use Auth,DB;

class AdminController extends Controller
{
    public function index(){
        //doanh thu
        $moneyDay = Order::whereDay('updated_at',date('d'))->where('status','=',2)->sum('total');
        $moneyMonth = Order::whereMonth('updated_at',date('m'))->where('status','=',2)->sum('total');
        $moneyYear = Order::whereYear('updated_at',date('Y'))->where('status','=',2)->sum('total');

        
    	return view('admin.index',compact('moneyDay','moneyMonth','moneyYear'));
    }

    public function login(){
    	return view('admin.login');
    }
    public function post_login(Request $req){
        $this->validate($req,[
            'email' => 'required',
            'password' => 'required'
        ],[
            'email.required' => 'Bạn phải nhập email',
            'password.required' => 'Bạn phải nhập password'
        ]);
        $login = array(
            'email' => $req->email,
            'password' => $req->password,
            'level' => 1
        );
        if (Auth::attempt($login)) {
            return redirect()->route('admin');
        }else{
            return redirect()->back()->with(['level'=>'danger','success'=>'Tài khoản không hợp lệ']);
        }
    }

    public function logout(){
		Auth::logout();
		return redirect()->route('login')->with(['level'=>'success','success'=>'Thoát tài khoản thành công']);
	}

    public function report(){
        $qty = OrderDetail::whereDay('created_at',date('d'))->where('product_id','=',1)->sum('qty');
        
        $qtyMonth = OrderDetail::whereMonth('updated_at',date('m'))->where('product_id','=',1)->sum('qty');
        $qtyYear = OrderDetail::whereYear('updated_at',date('Y'))->where('product_id','=',1)->sum('qty');
        return view('admin.report.index',compact('qty','qtyMonth','qtyYear'));
    }
}
