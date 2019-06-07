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

  <link rel="stylesheet" href="../css/normalize.css">
  <link rel="stylesheet" href="../css/main.css">

  <meta name="theme-color" content="#fafafa">
</head>
<body>
  <nav>
  <div class="nav-wrapper">
    <a href="#" class="brand-logo">Smart-Parking</a>
    <ul id="nav-mobile" class="right hide-on-med-and-down">

      @auth
      <li><a href="sass.html">{{ Auth::user()->name }}</a></li>
      @endauth
      <form id="logout-form" action="{{ route('logout') }}" method="POST">
       @csrf
       <input type="submit" name="Salir" value="salir">
     </form>
     <li><a href="badges.html">Components</a></li>
     <li><a href="collapsible.html">JavaScript</a></li>
   </ul>
   <a href="#" data-target="slide-out" class="sidenav-trigger right"><i class="fas fa-bars"></i></a>
   <a href="#" class="back-page left"><i class="fas fa-arrow-left"></i></a>
 </div>

</nav>
<ul id="slide-out" class="sidenav">
  <li><div class="user-view">
    <div class="background">
      <img src="../img/bg-login-movil.png">
    </div>
    <a href="#user"><img class="circle" src="../img/usuario.jpg"></a>
    @auth
    <a href="#name"><span class=" name">{{ Auth::user()->name }}</span></a>
    <a href="#email"><span class=" email">{{ Auth::user()->email }}</span></a>
    @endauth
  </div></li>
  <li><a href="#!"><i class="material-icons">cloud</i>First Link With Icon</a></li>
  <li><a href="#!">Second Link</a></li>
  <li><div class="divider"></div></li>
  <li><a class="subheader">Subheader</a></li>
  <li><a class="waves-effect" href="#!">Third Link With Waves</a></li>
</ul>




@yield('content')


<script src="../js/vendor/modernizr-3.7.1.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"
    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  <script>window.jQuery || document.write('<script src="js/vendor/jquery-3.3.1.min.js"><\/script>')</script>

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

  <script src="../js/plugins.js"></script>
  <script src="../js/main.js"></script>
  <script src="../js/instascan.min.js"></script>
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