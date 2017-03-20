<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class NoticeController extends Controller
{
	//公告简介
	public function index(Request $request)
	{
        return $this->view('notice.list');
	}
	//公告详情
	public function info(Request $request)
	{
	    return $this->view('notice.info');
	}
}
