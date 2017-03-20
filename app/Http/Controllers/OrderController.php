<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\PayOrder as Order;

class OrderController extends Controller
{
	//交水费主界面
	public function index(Request $request)
	{
	    $this->_site_titles = ['交水费'];
        return $this->view('order.index');
	}
	//生成订单,去支付
	public function toPay(Request $request)
	{
	    //生成订单，选择支付方式
	    
	    return $this->view('order.choose_pay');
	}
	
	private function getPayJsParameter( Order $model, $title, $attach = '')
	{
	    $wechatUser = $this->getWechatUser();
	    $account = WechatAccount::findOrFail($this->wechat_oauth2_account);
	    $api = new API($account->toArray(), $account->getKey());
	
	    $pay = new Pay($api);
	    $order = (new UnifiedOrder('JSAPI', date('ymdHis').str_pad($model->getKey(), 8, '0', STR_PAD_LEFT), $title, ceil($model->total_money*100-$model->cost_pk_val)))
	    ->SetNotify_url(url('wechat/feedback/'.$account->getKey().'/'.$model->getKey()))->SetOpenid($wechatUser->openid)->setDetail($model->title)->SetAttach($attach);
	    $UnifiedOrderResult = $pay->unifiedOrder($order);
	    if ( $UnifiedOrderResult['return_code'] != 'SUCCESS' || empty($UnifiedOrderResult['prepay_id']))
	        return $this->failure(['content' => $UnifiedOrderResult['return_msg']]);
	    $js = new Js($api);
	    $result =  $js->getPayParameters($UnifiedOrderResult);
	
	    return $result;
	}
	//微信支付
	public function order($id)
	{
	    $order = Order::find($id);
	    if (empty($order))
	        return $this->failure_noexists();
	
	    if ($order->status != Order::INIT)
	        return $this->failure('order.failure_paid');
	
	    
	   $parameters = $this->getPayJsParameter($order, $this->site['title']);
	   if (!is_array($parameters)) return $parameters;
	   $this->_parameters = $parameters;
	   $order['pay_money'] = $order->total_money - sprintf('%.2f',$order->cost_pk_val/100);
	   $this->_order = $order;
	   return $this->view('m.pay');
	}
	//支付成功，跳出页面
	public function paysuccess(Request $request)
	{
	    return $this->view('order.paysuccess');
	}
}
