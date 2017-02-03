<?php
namespace App;

use App\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UserAddress extends Model 
{
    use SoftDeletes;
	public function user()
	{
		return $this->hasOne('App\\User', 'id', 'user_id');
	}
}
