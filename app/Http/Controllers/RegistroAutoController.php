<?php

namespace App\Http\Controllers;
use App\models\auto;
use App\models\marcas;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; // Se llama a la clase db

class RegistroAutoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

          $marcas = DB::select('select * from MARCA'); //Tipo 2 
     //   $marcas = marcas::all(); //Se llama al modelo marcas Tipo 1

        return view('registro.registro_auto' , compact('marcas'));  //Compact trae los datos de la base de datos y los envia a la vista

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
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $auto = new auto();

        $auto->pat_auto = $request->input('txtPatente');
        $auto->id_marca = $request->input('marca_auto');
        $auto->id_mod   = $request->input('modelo_auto');
        $auto->save();
        return 'Se ha registrado con exito';
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
