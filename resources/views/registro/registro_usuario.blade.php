<?php include_once 'includes/templates/head.php'; ?>
<nav>
    <a href="#" class="brand-logo">Smart-Parking</a>
    <a href="{{route('inicio')}}" class="back-page left"><i class="fas fa-arrow-left"></i></a>
</nav>
<section class="container section animated fadeIn slower">
    <form action="{{route('registro_guardar')}}" method="POST">
       
        @csrf
        <h4>Registro Conductor</h4>
        <div class="col s12">
            <div class="row">
                @if ($errors->any())

             <div class="validate">
        <ul>
            @foreach ($errors->all() as $errores)
                <li>{{$errores}}</li>
            @endforeach
        </ul>
    </div>
                @endif

                <div class="input-field col s12">
               
                    <input id="rut" type="number" name="txtRut" class="validate" value="{{old('txtRut')}}">
                    <label for="rut">Rut</label>
                    @if($errores->has('txtRut'))

                    <span class="invalid-feedback"> 
                        <strong>{{$errores->first('txtRut')}} </strong>

                    </span>
                    @endif
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <input id="nombre" type="text" name="txtNombre" class="validate" value="{{old('txtNombre')}}">
                    <label for="nombre">Nombre</label>
                </div>
                <div class="input-field col s6">
                    <input id="apellido" type="text" name="txtApellido" class="validate" value="{{old('txtApellido')}}">
                    <label for="apellido">Apellido</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input id="correo" type="email" name="txtCorreo" class="validate" value="{{old('txtCorreo')}}">
                    <label for="correo">Correo</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <input id="telefono" type="tel" name="txtTelefono" class="validate" value="{{old('txtTelefono')}}">
                    <label for="telefono">Telefono</label>
                </div>
                <div class="input-field col s6">
                    <input id="fecha_nac" type="date" name="txtNacimiento" class="validate" value="{{'txtNacimiento'}}">
                    <label for="fecha_nac">Fecha Nacimiento</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <input id="contrasena" type="password" name="txtContrasena" class="validate">
                    <label for="contrasena">Contraseña</label>
                </div>
                <div class="input-field col s6">
                    <input id="cont-comf" type="password" name="" class="validate">
                    <label for="cont-comf">Confirme Contraseña</label>
                </div>
            </div>
                <div class="input-field col s12">
                    <input class="boton btn-registro" type="submit" value="Guardar">
                </div>
        </div>

    </form>
</section>

<?php include_once 'includes/templates/footer.php'; ?>