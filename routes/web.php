<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('estacionapp.inicio');
})->name('inicio')->middleware('guest');

Auth::routes(['verify' => true]);

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/registro', function() {
    return view('estacionapp.registro.registro_usuario');
})->name('registro');


<<<<<<< HEAD
Route::get('/conductor','conductorController@index')->name('conductor');
=======
	Route::get('conductor', function() {
		return view('conductor');
	})->name('conductor');
	Route::get('recepcion', function() {
		return view('recepcion');
	})->name('recepcion');
	//rutas para hacer pruebas
	Route::get('login', function() {
		return view('login');
	})->name('login');
	Route::get('emailPassword', function() {
		return view('emailContrasena');
	})->name('emailPassword');
	Route::get('resetPassword', function() {
		return view('resetPassword');
	})->name('resetPassword');

	Route::post('login','Auth\LoginController@authenticate')->name('login');
	
	Route::get('/registro','RegistroController@index' )->name('registro'); //redirecciona a metodo index

	Route::post('registro','RegistroController@store')->name('registro_guardar'); //Guarda usuario en base de datos

	Route::get('registro/automovil','RegistroAutoController@index')->name('registro-auto');

	Route::post('registro/automovil','RegistroAutoController@store')->name('registro_auto_post');

	Route::get('MostrarQR', function() {return view('escanerqr');})->name('QR');

	Route::get('/index', function() {return view('conductor');})->name('index'); //Ver sessiones

>>>>>>> 4b88d8baea0b154781a976223a74ef935d7ea8d0
