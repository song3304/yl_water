<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Queue;
use Illuminate\Support\Str;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Lang;
//trait
use Addons\Core\Controllers\ThrottlesLogins;

class HomeController extends Controller
{
    use ThrottlesLogins;
	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
    //首页
	public function index()
	{
        return $this->view('home.index');		
	}
}
