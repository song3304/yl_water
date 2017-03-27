<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\PayOrder as Order;
use Auth;
use App\User;
use App\UserAddress;
//微信二维码支付
use Plugins\Wechat\App\Tools\API;
use Plugins\Wechat\App\WechatAccount;
use Plugins\Wechat\App\Tools\Pay\BizPayUrl;
use Plugins\Wechat\App\Tools\Pay as WechatPayTool;
use Plugins\Wechat\App\Tools\Pay\UnifiedOrder;
use Plugins\Wechat\App\Tools\Feedback;

class OrderController extends Controller
{
    public function __construct(){
        $this->user = Auth::check() ? Auth::User() : new \App\User;
        if(empty($this->user->id)) return $this->error('member.not_login',url('member/login'));
        $this->_nav = 'pay_water';
    }
	//交水费主界面
	public function index(Request $request)
	{
	    $keys = 'address_id,sumMoney';
	    $this->_validates = $this->getScriptValidate('order.store', $keys);
	    
	    $aid = $request->get('aid');
	    $this->_user_address = ($aid)?UserAddress::find($aid):UserAddress::where('user_id',$this->user->id)->orderBy('created_at','desc')->first();
	    $this->_site_titles = ['交水费'];
        return $this->view('order.index');
	}
	//生成订单,去支付
	public function toPay(Request $request)
	{
	    //生成订单，选择支付方式
	    $keys = 'address_id,sumMoney';
	    $data = $this->autoValidate($request, 'order.store', $keys);
	    
	    $order = Order::create($data+['user_id'=>$this->user->getKey()]);
	    if($order){
	        return $this->success('order.create_order_success', url('order/choose_pay?id=').$order->getKey());
	    }else{
	       return $this->failure('order.create_order_fail');    
	    }
	}
	//选择支付方式
	public function choosePay(Request $request)
	{
	    $order = Order::find($request->get("id"));
	    if (empty($order)) return $this->failure_noexists();
	    	    
	    $this->_order = $order;
	    return $this->view('order.choose_pay');
	}
	
	//去支付
	public function pay(Request $request)
	{
	   $order = Order::find($request->get("id"));
	   if (empty($order)) return $this->failure_noexists();
	    
	   $pay_type = $request->get('pay_type');
	   $order->update(['pay_type'=>$pay_type]);
	   //跳转到相应支付
	   if($pay_type == Order::PAY_WEIXIN){
	       //微信支付
	       $account = WechatAccount::findOrFail(1);//
	       $api = new API($account->toArray(), $account->getKey());
	       $pay = new WechatPayTool($api);
	       $bizpayurl = new BizPayUrl();
	       $bizpayurl->setProductId($order->getKey());
	       $qrcode = $pay->bizpayurl($bizpayurl);
           $this->_qrcode = 'weixin://wxpay/bizpayurl?'.http_build_query($qrcode);
           $this->_pay_type = "weixin";
	   }elseif($pay_type == Order::PAY_ALIPAY){
	       //支付宝

	   }elseif($pay_type == Order::PAY_RCB){
	       //农商行 未处理
	       
	   }
	   return $this->view('order.go_to_pay');
	}
	
	//支付成功，跳出页面
	public function paysuccess(Request $request)
	{
	    return $this->view('order.paysuccess');
	}
	/**
	 * 微信支付回调
	 * @return [type] [description]
	 */
	public function feedback(Request $request)
	{
	    $order_id = $request->input('product_id');
	    $order = Order::find($order_id);
	    if (empty($order)){
	        return $this->failure_noexists();
	    }else{
	        if($order->status >= Order::PAID){
	            //重新生成订单
	            $order_data = $order->toArray();
	            unset($order_data['id']);unset($order_data['out_trade_no']);
	            unset($order_data['pay_type']);unset($order_data['order_log']);
	            $order_data['status'] = Order::INIT;
	            $order = Order::create($order_data);   
	        }else{
	            $order->update(['status'=>Order::INIT]);
	        }
	    }
	    $account = WechatAccount::findOrFail(1);
	    $api = new API($account->toArray(), $account->getKey());
	    $pay = new WechatPayTool($api);
	    $title = '交水费(地址:'.$order->account_address.')';
	    $unified_order = (new UnifiedOrder('NATIVE', date('ymdHis').str_pad($order->getKey(), 8, '0', STR_PAD_LEFT), $title, $order->sumMoney*100))
	    ->SetNotify_url(url('notifyWeixin/'.$order->getKey()));
	    $UnifiedOrderResult = $pay->unifiedOrder($unified_order);
	    if ( $UnifiedOrderResult['return_code'] != 'SUCCESS' || empty($UnifiedOrderResult['prepay_id']))
	       return $this->failure(['content' => $UnifiedOrderResult['return_msg']]);
	    

	    $feedback = new Feedback($api);
	    $result =  $feedback->getPayXML($UnifiedOrderResult);
	    echo $result;exit;
	}
}
