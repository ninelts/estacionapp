<?php

namespace App\models;
use Illuminate\Contracts\Auth\Authenticatable;
use Illuminate\Auth\Authenticatable as AuthenticableTrait;
use Illuminate\Database\Eloquent\Model;


class usuario extends \Eloquent implements Authenticatable
{
    use AuthenticableTrait;
    // ...

    protected $table = 'usuarios';
    protected $guarded = ['id_tipo_usu'];
 	 
 	protected $fillable = [
 		'rut_usu',
 		'nom_usu',
 		'ape_usu',
 		'correo_usu',
 		'password',
 		'telefono_usu',
 		'nacimiento_usu'

 	];
}
