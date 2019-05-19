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


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/', function() {return view('inicio');})->name('inicio'); //Redireccion a pagina Principal
Route::get('/registro','RegistroController@index' )->name('registro'); //redirecciona a metodo index

Route::post('registro','RegistroController@store')->name('registro_guardar'); //Guarda usuario en base de datos

Route::get('registro/automovil','RegistroAutoController@index')->name('registro-auto');

Route::post('registro/automovil','RegistroAutoController@store') ->name('registro_auto_post');

//Auth::routes();
// Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
