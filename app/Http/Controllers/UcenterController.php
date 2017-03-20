<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Lang;
//trait
use Addons\Core\Controllers\ThrottlesLogins;
use App\User;
use App\Role;

class UcenterController extends Controller
{
    use ThrottlesLogins;
	//个人中心
	public function index(Request $request)
	{
        return $this->view('ucenter.index');
	}
	//个人信息
	public function info(Request $request)
	{
	    return $this->view('ucenter.info');
	}
	//保存个人信息
	public function saveInfo(Request $request)
	{
	    //保存用户信息.
	}
	//住址信息
	public function addressList(Request $request)
	{
	    //最多可添加5个地址
	    return $this->view('ucenter.address_list');
	}
	//添加住址
	public function addAddress(Request $request)
	{
	    return $this->view('ucenter.add_address');
	}
	//添加住址方法
	public function addedAddress(Request $request)
	{
	    return $this->view('ucenter.add_address');
	}
	//修改住址
	public function modifyAddress(Request $request)
	{
	    return $this->view('ucenter.add_address');
	}
	//修改住址方法
	public function modifiedAddress(Request $request)
	{
	    return $this->view('ucenter.add_address');
	}
	//个人缴费纪录
	public function orderList(Request $request)
	{
	    return $this->view('ucenter.order_list');
	}
	//生成支付二维码
	public function qrcode(Request $request)
	{
	    return $this->view('ucenter.qrcode');
	}
	//个人水费查询
	public function feeInquiry(Request $request)
	{
	    return $this->view('ucenter.fee_inquiry');
	}
	//修改密码视图
	public function modifyPwd(Request $request)
	{
	    return $this->view('ucenter.modify_pwd');
	}
	//修改密码
	public function modifiedPwd(Request $request)
	{
	    $url = $request->get('callback_url')?:url('home/index');
	    //return $this->failure('ucenter.modify_pwd_fail',FALSE,array('message'=>$result['Message']));
	    return $this->success('ucenter.modify_pwd_success', $url);
	}
	//退出
	public function logout(Request $request)
	{
	    $this->guard()->logout();
	    $request->session()->flush();
	    $request->session()->regenerate();
	    return $this->success_logout(''); // redirect to homepage
	}
}
