<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\User;
use App\Role;

class QuestionController extends Controller
{
	//咨询帮助
	public function index(Request $request)
	{
        return $this->view('question.index');
	}
	//常见问题列表
	public function common(Request $request)
	{
	    return $this->view('question.common');
	}
	//常见详情
	public function detail(Request $request)
	{
	    return $this->view('question.detail');
	}
	//问题解答
	public function faqList(Request $request)
	{
	    return $this->view('question.faq_list');
	}
	//问题解答
	public function faqItem(Request $request)
	{
	    return $this->view('question.faq_item');
	}
	//我的问题
	public function myFaq(Request $request)
	{
	    return $this->view('question.my_faq');
	}
	//我要提问
	public function askFaq(Request $request)
	{
	    return $this->view('question.ask_faq');
	}
	//保存提问
	public function saveFaq(Request $request)
	{
	    $url = '';
	    return $this->success('ucenter.faq_save_success', $url);
	}
}
