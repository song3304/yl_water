<?php
namespace App;

use App\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Addons\Core\Models\Tree;

class Question extends Tree 
{
    use SoftDeletes;
    protected $guarded = ['id'];
    
    public function user()
    {
        return $this->hasOne('App\\User', 'id', 'user_id');
    }
}
