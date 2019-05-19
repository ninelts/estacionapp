<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class marcas extends Model
{
	protected $table='MARCA';
	protected $fillable = [
			'nom_marca'
	]
}
