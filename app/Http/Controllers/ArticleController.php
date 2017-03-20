<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class ArticleController extends Controller
{
	//公司资讯
	public function cmsInfo(Request $request)
	{
        return $this->view('cms.info');
	}
	//常见问题
	public function commonInfo(Request $request)
	{
	    return $this->view('cms.common');
	}
	//公司简介
	public function companyInfo(Request $request)
	{
	    return $this->view('cms.company');
	}
}
