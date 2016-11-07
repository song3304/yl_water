<?php
namespace App;

use Addons\Entrust\User as BaseUser;

class User extends BaseUser 
{
	public function _gender()
	{
		return $this->hasOne('App\\Catalog', 'id', 'gender');
	}

	public function creator()
	{
		return $this->hasOne('App\\User', 'id', 'creator_uid');
	}

	public function finance()
	{
		return $this->hasOne('App\\UserFinance', 'id', 'id');
	}
}

//自动创建extra等数据
User::created(function($user){
	$user->finance()->create([]);
});
	