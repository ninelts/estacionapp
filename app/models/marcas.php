<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class marcas extends Model
{
	protected $table='BRAND';
	protected $fillable = [
			'name_brand'
	];
}
