<?php

namespace App\Http\Controllers\Auth;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

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

     if ( Auth::attempt(['rut_usu'=>$request->txt_rut,'password'=>$request->contr_usu])){

        // return response()->json( [ 'success' => true, 'message' => 'Acceso satisfactorio' ] );

        return view('conductor');



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
