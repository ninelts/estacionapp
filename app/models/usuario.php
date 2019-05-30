<?php

namespace App\models;
use Illuminate\Contracts\Auth\Authenticatable;
use Illuminate\Auth\Authenticatable as AuthenticableTrait;
use Illuminate\Database\Eloquent\Model;


class usuario extends \Eloquent implements Authenticatable
{
    use AuthenticableTrait;
    // ...

    protected $table = 'USER';
    protected $guarded = ['id_usertype'];
 	 
 	protected $fillable = [
 		'id_user',
 		'name_user',
 		'lstname_user',
 		'email',
 		'password',
 		'phone',
 		'borndate_user'

 	];
}
