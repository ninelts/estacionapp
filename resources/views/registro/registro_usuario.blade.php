<?php include_once 'includes/templates/head.php'; ?>
<nav>
    <a href="#" class="brand-logo">Smart-Parking</a>
    <a href="{{route('inicio')}}" class="back-page left"><i class="fas fa-arrow-left"></i></a>
</nav>
<section class="container section animated fadeIn slower">

      @if(session('status'))
      <div class="center"> 
       <h1 style="color: green"> {{session('status')}}</h1>
      </div>

    @endif
    <form action="{{route('registro_guardar')}}" method="POST">

        @csrf
        <h4>Registro Conductor</h4>
        <div class="col s12">
            <div class="row">


                <div class="input-field col s12">

                    <input id="rut" type="text" name="txtRut" class="validate {{ $errors->has('txtRut') ? ' is-invalid' : '' }}" value="{{old('txtRut')}}" autofocus>
                    <label for="rut">Rut</label>
                    @foreach ($errors->get('txtRut') as $error)
                    <li style='color: red'>{{ $error }}</li>
                    @endforeach
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <input id="nombre" type="text" name="txtNombre" class="validate" value="{{old('txtNombre')}}">
                    <label for="nombre">Nombre</label>
                    @foreach ($errors->get('txtNombre') as $error)
                    <li style='color: red'>{{ $error }}</li>
                    @endforeach
                </div>
                <div class="input-field col s6">
                    <input id="apellido" type="text" name="txtApellido" class="validate" value="{{old('txtApellido')}}">
                    <label for="apellido">Apellido</label>
                    @foreach ($errors->get('txtApellido') as $error)
                    <li style='color: red' >{{ $error }}</li>
                    @endforeach
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input id="correo" type="email" name="txtCorreo" class="validate" value="{{old('txtCorreo')}}">
                    <label for="correo">Correo</label>
                    @foreach ($errors->get('txtCorreo') as $error)
                    <li style='color: red' >{{ $error }}</li>
                    @endforeach
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <input id="telefono" type="tel" name="txtTelefono" class="validate" value="{{old('txtTelefono')}}">
                    <label for="telefono">Telefono</label>
                    @foreach ($errors->get('txtTelefono') as $error)
                    <li style='color: red' >{{ $error }}</li>
                    @endforeach
                </div>
                <div class="input-field col s6">
                    <input id="fecha_nac" type="date" name="txtNacimiento" class="validate" value="{{'txtNacimiento'}}">
                    <label for="fecha_nac">Fecha Nacimiento</label> 
                    @foreach ($errors->get('txtNacimiento') as $error)
                    <li style='color: red' >{{ $error }}</li>
                    @endforeach
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <input id="contrasena" type="password" name="txtContrasena" class="validate">
                    <label for="contrasena">Contraseña</label>
                    @foreach ($errors->get('txtContrasena') as $error)
                    <li style='color: red' >{{ $error }}</li>
                    @endforeach
                </div>
                <div class="input-field col s6">
                    <input id="cont-comf" type="password" name="" class="validate">
                    <label for="cont-comf">Confirme Contraseña</label>
                </div>
            </div>
            <div class="input-field col s12 center-align">
                <button class="boton-submit waves-effect waves-light" type="submit" name="action">Guardar</button>
            </div>
        </div>

    </form>
</section>

<?php include_once 'includes/templates/footer.php'; ?>