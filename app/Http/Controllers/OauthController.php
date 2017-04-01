<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class OauthController extends Controller
{
    public function qq(Request $request){
        return \Socialite::with('qq')->redirect();
    }
    
    public function qqCallback(Request $request){
        $oauthUser = \Socialite::with('qq')->user();
        var_dump($oauthUser->getId());
        var_dump($oauthUser->getNickname());
        var_dump($oauthUser->getName());
        var_dump($oauthUser->getEmail());
        var_dump($oauthUser->getAvatar());
    }
    
    public function weixin(Request $request){
        return \Socialite::with('weixin')->redirect();
    }
    
    public function weixinCallback(Request $request){
        $oauthUser = \Socialite::with('weixin')->user();
        var_dump($oauthUser->getId());
        var_dump($oauthUser->getNickname());
        var_dump($oauthUser->getName());
        var_dump($oauthUser->getEmail());
        var_dump($oauthUser->getAvatar());
    }
}
