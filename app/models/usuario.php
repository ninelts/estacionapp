<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class usuario extends Model
{
    protected $table = 'usuarios';
    protected $guarded = ['id_tipo_usu'];
 	 protected $fillable = [
 		'rut_usu',
 		'nom_usu',
 		'ape_usu',
 		'correo_usu',
 		'contr_usu',
 		'telefono_usu',
 		'nacimiento_usu'

 	];
}
