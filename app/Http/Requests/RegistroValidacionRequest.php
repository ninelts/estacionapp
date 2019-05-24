<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RegistroValidacionRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
   */
    public function rules()
    {
        return [
                    'txtNombre'     => 'required|string|min:3|max:30',
                    'txtApellido'   => 'required|min:4|max:255',
                    'txtCorreo'     => 'required|max:255',
                    'txtContrasena' => 'required|min:8',
                    'txtTelefono'   => 'required|max:9',
                    'txtNacimiento' => 'required',
                    'txtRut'        => 'required|min:9|max:9|unique:usuarios,rut_usu'
            //
        ];
    }


public function messages()
{
    return [
        'txtRut.required'           =>'El campo rut es obligatorio',
        'txtRut.min'                =>'El campo rut debe contener 9 caracteres como minimo',
        'txtRut.unique'             =>'El Rut ya ha sido registrado', 
        'txtNombre.required'        =>'El campo nombre es obligatorio',
        'txtApellido.required'      =>'El campo Apellido es Obligatorio',
        'txtApellido.min'           =>'El campo apellido debe contener 4 caracteres como minimo',
        'txtTelefono.required'      =>'El campo telefono es obligatorio',
        'txtTelefono.min'           =>'El campo debe ser como  mínimo 9 numeros',
        'txtContrasena.required'    =>'El campo contraseña es obligatorio',
        'txtContrasena.min'         =>'El campo contraseña debe contener 8 caracteres como minimo',
        'txtCorreo.required'        =>'El campo correo es obligatorio',   
        'txtNacimiento.required'    =>'El campo Fecha es obligatorio'
    ];
} 


}




}
