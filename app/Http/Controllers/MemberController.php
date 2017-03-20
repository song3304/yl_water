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

class MemberController extends Controller
{
    use ThrottlesLogins;
	//注册界面
	public function register(Request $request)
	{
	    
	    // 	    $this->_callback_url = $request->get('callback_url');
	    // 	    $keys = 'username,password,phone,gender,password_confirmation';
	    // 	    $this->_validates = $this->getScriptValidate('member.store', $keys);
	    $this->_site_titles = ['用户注册'];
	    return $this->view('member.register');
	    //return $this->view('member.create');
	}
	//用户注册
	public function addMember(Request $request)
	{
	    // 	    $keys = 'username,password,phone,gender,password_confirmation';
	    // 	    $data = $this->autoValidate($request, 'member.store', $keys);
	    // 	    unset($data['password_confirmation']);
	
	    // 	    $find_user = User::where('idcard',$data['idcard'])->first();
	    // 	    if(!empty($find_user)){
	    // 	        //判断病人id存在
	    // 	        if(empty($find_user->patient_id)){
	    // 	            if(isset($result['Code']) && $result['Code'] == '1000000'){
	    // 	                $find_user->update(['patient_id'=>$result['ReturnValue']['Resultset']['brid00']]);
	    // 	                return $this->failure('member_exist',url('home/login'));
	    // 	            }else{
	    // 	                return $this->failure('register.build_fail',FALSE,array('message'=>$result['Message']));
	    // 	            }
	    // 	        }
	    // 	    }else{
	    // 	        if(isset($result['Code']) && $result['Code'] == '1000000'){
	    // 	            $patient_id = $result['ReturnValue']['Resultset']['brid00'];
	    // 	            $user = (new User)->add($data+['patient_id'=>$patient_id]);
	    // 	            $url = $request->get('callback_url')?:url('home/index');
	    // 	            $this->guard()->attempt(['username' => $data['username'], 'password' => $data['password']]);
	    // 	            return $this->success('member.register_success', $url);
	    // 	        }else{
	    // 	            return $this->failure('register.build_fail',FALSE,array('message'=>$result['Message']));
	    // 	        }
	    // 	    }
	}
	//用户登录界面
	public function login(Request $request)
	{
	    $this->_site_titles = ['用户登录'];
	    // 	    $this->_callback_url = $request->get('callback_url');
	    // 	    $keys = 'username,password';
	    // 	    $this->_validates = $this->getScriptValidate('member.login', $keys);
	    return $this->view('member.login');
	}
	//用户登录
	public function auth(Request $request)
	{
	    // 	    $this->guard()->logout();
	    // 	    $keys = ['username','password'];
	    // 	    $data = $this->autoValidate($request, 'member.login', $keys);
	    // 	    if($this->guard()->attempt(['username' => $data['username'], 'password' => $data['password']])){
	    // 	        $url = $request->get('callback_url')?:url('member/index');
	    // 	        $user = $this->guard()->user();
	    // 	        return $this->success_login($url);
	    // 	    }else{
	    // 	        return $this->failure_login(url('home/login'));
	    // 	    }
	}
}
