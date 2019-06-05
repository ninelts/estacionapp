<?php include_once 'includes/templates/head.php'; ?>
<?php include_once 'includes/templates/header.php'; ?>
<div class="container">
    <div class="row">
        <form class="col s12" action="" method="">
            <h1>Iniciar Sesion</h1>
            @if(session('status'))
            <div class="mensaje-error">
                <p class="center">{{session('status')}}</p>
            </div>
            @endif
            <div class="row">

                <div class="input-field col s12">
                    <i class="material-icons prefix">account_circle</i>
                    <input id="icon_prefix" type="text" class="">
                    <label for="icon_prefix">First Name</label>
                </div>
                <div class="input-field col s12">
                    <i class="material-icons prefix">lock</i>
                    <input id="password" type="password" class="">
                    <label for="password">Contraseña</label>
                </div>
                <label class="col s12 center-align">
                    <input type="checkbox" id="check" />
                    <span>Recordarme</span>
                </label>
                <div class="input-field col s12 center-align">
                    <input type="submit" value="Iniciar" class="boton" name="">
                </div>
                <label class="nuevo-registro col s12 center-align">
                    <p>¿Nuevo en la App?</p>
                    <a href="{{route('registro')}}" class="link">Registrate</a>
                </label>
                <label class="nuevo-registro col s12 center-align">
                    <a href="" class="link">¿Olvido su Contraseña?</a>
                </label>

            </div>
        </form>
    </div>
</div>
<?php include_once 'includes/templates/footer.php'; ?>