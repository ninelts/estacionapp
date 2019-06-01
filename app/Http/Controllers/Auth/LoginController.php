<?php

namespace App\Http\Controllers\Auth;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\DB;
use App\models\usuario;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */
      public function username()
    {
        return 'rut_usu';
    }

    public function authenticate(Request $request)
    {
<<<<<<< HEAD
     if ( Auth::attempt(['id_user'=>$request->txt_rut,'password'=>$request->contr_usu])){
        $id_usuario = $request->txt_rut;
        //return response()->json( [ 'success' => true, 'message' => 'Acceso satisfactorio' ] );
        $tipo_usuario = DB::table('USER')->where('id_user', $id_usuario)->first();
        $var_tipo_usuario = $tipo_usuario ->id_usertype;
        //return response()-> json($var_tipo_usuario);
        if($var_tipo_usuario==1){
            return redirect()->route('conductor');
        }
        else{
            return redirect()->route('recepcion');
        }

        

        /**crear la sesion con los datos del id_usertype
         * despues redirigir dependiendo del tipo de usuario a vista conductor o vista recepcionista
         * FALTA AGREGAR COLUMNA DE ESTADO USUARIO
         */


=======

     if ( Auth::attempt(['rut_usu'=>$request->txt_rut,'password'=>$request->contr_usu])){

        // return response()->json( [ 'success' => true, 'message' => 'Acceso satisfactorio' ] );

        return view('conductor');


>>>>>>> ccfe2c32b5b0239ca0c27ce460db1465d4fe0ebd

    } else {
        return back()->with('status','Lo Sentimos los datos ingresados son invalidos intente nuevamente');
    }
    }


use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }


}
