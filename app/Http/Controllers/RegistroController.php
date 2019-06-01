<?php

namespace App\Http\Controllers;

use App\Http\Requests\RegistroValidacionRequest;
use App\models\usuario;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;



class RegistroController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('registro.registro_usuario');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(RegistroValidacionRequest $request )
    {
        //$request->all(); 
        
        // 1- se llama al modelo usuario 
        // 2- se crea el objeto usuario enfocado en el modelo usuario
        // 3- 
       

        $usuario = new usuario();
        $usuario->id_user  = $request->input('txtRut');
        $usuario->name_user = $request->input('txtNombre');
        $usuario->lstname_user = $request->input('txtApellido');
        $usuario->email =$request->input('txtCorreo');
        $usuario->password   = Hash::make($request->input('txtContrasena'));
        $usuario->phone  = $request->input('txtTelefono');
        $usuario->borndate_user = $request->input('txtNacimiento');

        $usuario -> save();
        return redirect()->route('registro-auto');

        // Validate the value...



        
    }
    
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
