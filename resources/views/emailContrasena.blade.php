<?php include_once 'includes/templates/head.php'; ?>
<?php include_once 'includes/templates/header.php'; ?>

<div class="container">
    <div class="row">
        <form class="col s12">
            <h1>Olvido su contraseña</h1>
            <div class="row">
                <div class="col s12">
                    <div class="card yellow lighten-4">
                        <div class="card-content blue-grey-text darken-2-text">
                            <p>Ingrese su correo y se enviara un email para que pueda reestablecer su contraseña</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <i class="material-icons prefix blue-grey-text darken-2-text">email</i>
                    <input id="correo" type="email" name="" class="validate" value="">
                    <label for="correo">Correo</label>
                </div>
            </div>
            <div class="input-field col s12 center-align">
                <button class="boton-submit waves-effect waves-light" type="submit" name="action">Enviar Correo
                    <i class="material-icons left ">send</i>
                </button>
            </div>
        </form>
    </div>
</div>

<?php include_once 'includes/templates/footer.php'; ?>