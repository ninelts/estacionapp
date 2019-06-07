<!doctype html>
<html class="no-js" lang="">

<head>
  <meta charset="utf-8">
  <title>Smart-Parking</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
  <link href="https://fonts.googleapis.com/css?family=Oswald|Port+Lligat+Sans" rel="stylesheet">
  <link rel="manifest" href="site.webmanifest">
  <link rel="apple-touch-icon" href="icon.png">
  <!-- Place favicon.ico in the root directory -->

  <link rel="stylesheet" href="css/normalize.css">
  <link rel="stylesheet" href="css/main.css">

  <meta name="theme-color" content="#fafafa">
</head>

<body class="animated fadeIn slower">

  <div id="cabecera">
    <div class="video">

      <video src="video/bg-login-movil.mp4" autoplay loop muted playsinline></video>
    </div>


    <div class="botones">
      <a href="#login" class="boton modal-trigger" onclick="ocultarBotones()">Iniciar Sesión</a>
      <a href="{{route('registro')}}" class="boton">Registrarse</a>
    </div>

    <!-- MODAL INICIAR SESION -->
    <div class="">
      <div class="modal  animated fadeInLeft" id="login">

        <div class="modal-content center">
          <h5 class="modal-close" onclick="mostrarBotones()">X</h5>
          <form class="form-login" action="{{route('login')}}" method="POST">
            @csrf
            <h4>Inicio Sesion</h4>
              @if(session('status'))
                <div class="mensaje-error">
                  <p class="center">{{session('status')}}</p>
                </div> 
              @endif
            <div class="input-field s12">
              <i class="material-icons prefix">persona</i>
              <input name="rut" type="text" id="username">
              <label for="username">Nombre Usuario</label>
            </div>
            <div class="input-field s12">
              <i class="material-icons prefix">lock</i>
              <input name="password" type="password" id="password">
              <label for="password">Contraseña</label>
            </div>
            <label class="col s12">
              <input type="checkbox" id="check" />
              <span>Recordarme</span>
            </label>
            <div class="input-field s12">
              <input type="submit" value="Iniciar" class="boton"  name="">
            </div>
            <label class="nuevo-registro">
              <p>¿Nuevo en la App?</p>
              <a href="{{route('registro')}}" class="link">Registrate</a>
            </label>
            <a href="{{ route('password.request') }}" class="link">¿Olvido su Contraseña?</a>
          </form>
        </div>
      </div>
    </div>
  </div>
  <script src="js/vendor/modernizr-3.7.1.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  <script>window.jQuery || document.write('<script src="js/vendor/jquery-3.3.1.min.js"><\/script>')</script>

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

  <script src="js/plugins.js"></script>
  <script src="js/main.js"></script>
  <script src="js/instascan.min.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      var elems = document.querySelectorAll('.sidenav');
      var instances = M.Sidenav.init(elems);
    });
  </script>

  <!-- Google Analytics: change UA-XXXXX-Y to be your site's ID. -->
  <script>
    window.ga = function () { ga.q.push(arguments) }; ga.q = []; ga.l = +new Date;
    ga('create', 'UA-XXXXX-Y', 'auto'); ga('set', 'transport', 'beacon'); ga('send', 'pageview')
  </script>
  <!--   <script src="https://www.google-analytics.com/analytics.js" async defer></script> -->
</body>

</html>


















