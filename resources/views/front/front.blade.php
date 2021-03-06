<!DOCTYPE html>
<html lang="en">
<!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- Site Metas -->
<title>Life Care - Responsive HTML5 Multi Page Template</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- Site Icons -->
<link rel="shortcut icon" href="images/fevicon.ico.png" type="image/x-icon" />
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="style.css">
<!-- Colors CSS -->
<link rel="stylesheet" href="css/colors.css">
<!-- ALL VERSION CSS -->
<link rel="stylesheet" href="css/versions.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">
<!-- Modernizer for Portfolio -->
<script src="js/modernizer.js"></script>
<!-- [if lt IE 9] -->
</head>

<body class="clinic_version">
    <!-- LOADER -->
    <div id="preloader">
        <img class="preloader" src="images/loaders/heart-loading2.gif" alt="">
    </div>
    <!-- END LOADER -->
    <header>
        <div class="header-top wow fadeIn">
            <div class="container">
                <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="image"></a>
                <div class="right-header">
                    <div class="header-info">
                        <div class="info-inner">
                            <span class="icontop"><img src="images/phone-icon.png" alt="#"></span>
                            <span class="iconcont"><a href="tel:800 123 456">{{ $header->telefono }}</a></span>
                        </div>
                        <div class="info-inner">
                            <span class="icontop"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                            <span class="iconcont"><a data-scroll href="mailto:info@yoursite.com">{{ $header->email }}</a></span>
                        </div>
                        <div class="info-inner">
                            <span class="icontop"><i class="fa fa-clock-o" aria-hidden="true"></i></span>
                            <span class="iconcont"><a data-scroll href="#">{{ $header->horario }}</a></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-bottom wow fadeIn">
            <div class="container">
                <nav class="main-menu">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i class="fa fa-bars" aria-hidden="true"></i></button>
                    </div>

                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a class="active" href="{{ route('home') }}">Inicio</a></li>
                            <li><a data-scroll href="#about">Acerca de</a></li>
                            <li><a data-scroll href="#service">Servicios</a></li>
                            <li><a data-scroll href="#doctors">Doctores</a></li>
                            <li><a data-scroll href="#price">Precios</a></li>
                            <li><a data-scroll href="#testimonials">Testimonios</a></li>
                            <li><a data-scroll href="#getintouch">Contacto</a></li>
                        </ul>
                    </div>
                </nav>
                <div class="serch-bar">
                    <div id="custom-search-input">
                        <div class="input-group col-md-12">
                            <input type="text" class="form-control input-lg" placeholder="Search" />
                            <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button">
                        <i class="fa fa-search" aria-hidden="true"></i>
                        </button>
                        </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div id="home" class="parallax first-section wow fadeIn" data-stellar-background-ratio="0.4" style="background-image:url('{{ Voyager::image( $slider->fondo ) }}');">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="text-contant">
                        <h2>
                            <span class="center"><span class="icon"><img src="images/icon-logo.png" alt="#" /></span></span>
                            <a href="" class="typewrite" data-period="2000" data-type='[ "{{ $slider->titulouno }}", "{{ $slider->titulodos }}", "{{ $slider->titulotres }}" ]'>
                                <span class="wrap"></span>
                            </a>
                        </h2>
                    </div>
                </div>
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->
    <div id="time-table" class="time-table-section">
        <div class="container">
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="service-time one" style="background:#2895f1;">
                        <span class="info-icon"><i class="fa fa-ambulance" aria-hidden="true"></i></span>
                        <h3>{{ $info->titulouno }}</h3>
                        <p>{{ $info->descripcionuno }}</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="service-time middle" style="background:#0071d1;">
                        <span class="info-icon"><i class="fa fa-clock-o" aria-hidden="true"></i></span>
                        <h3>{{ $info->titulodos }}</h3>
                        <div class="time-table-section">
                            <ul>
                                <li><span class="left">{{$info->diauno}}</span><span class="right">{{$info->horauno}}</span></li>
                                <li><span class="left">{{$info->diados}}</span><span class="right">{{$info->horados}}</span></li>
                                <li><span class="left">{{$info->diatres}}</span><span class="right">{{$info->horatres}}</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="service-time three" style="background:#0060b1;">
                        <span class="info-icon"><i class="fa fa-hospital-o" aria-hidden="true"></i></span>
                        <h3>{{$info->titulotres}}</h3>
                        <p>{{ $info->descripciondos }}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Sección Servicios --}}
    <div id="about" class="section wow fadeIn">
        <div class="container">
            <div class="heading">
                <span class="icon-logo"><img src="images/icon-logo.png" alt="#"></span>
                <h2>{{ $servicio->titulo }}</h2>
            </div>
            <!-- end title -->
            <div class="row">
                <div class="col-md-6">
                    <div class="message-box">
                        <h4>{{ $servicio->subuno }}</h4>
                        <h2>{{ $servicio->subdos }}</h2>
                        <p>{{ $servicio->descripcion }}</p>
                        <a href="#service" data-scroll class="btn btn-light btn-radius btn-brd grd1 effect-1">Leer más</a>
                    </div>
                    <!-- end messagebox -->
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="post-media wow fadeIn">
                        <img src="{{ Voyager::image( $servicio->imagen ) }}" alt="" class="img-responsive">
                        <a href="http://www.youtube.com/watch?v=nrJtHemSPW4" data-rel="prettyPhoto[gal]" class="playbutton"><i class="flaticon-play-button"></i></a>
                    </div>
                    <!-- end media -->
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
            {{-- Galerias --}}
            <hr class="hr1">
            <div class="row">
                @foreach ($galerias as $galeria)            
                
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="service-widget">
                            <div class="post-media wow fadeIn">
                                <a href="#" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                                <img src="{{ Voyager::image( $galeria->imagen ) }}" alt="" class="img-responsive">
                            </div>
                            <h3>{{ $galeria->texto }}</h3>
                        </div>
                        <!-- end service -->
                    </div>               
                @endforeach
            </div>
            {{-- Galerias --}}
            <!-- end row -->
        </div>
       
        <!-- end container -->
    </div>
    <div id="service" class="services wow fadeIn">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
                    <div class="inner-services">
                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                            <div class="serv">
                                <span class="icon-service"><img src="images/service-icon1.png" alt="#" /></span>
                                <h4>{{ $serviciodos->titulouno }}</h4>
                                <p>{{ $serviciodos->desuno }}</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                            <div class="serv">
                                <span class="icon-service"><img src="images/service-icon2.png" alt="#" /></span>
                                <h4>{{ $serviciodos->titulodos }}</h4>
                                <p>{{ $serviciodos->desdos }}</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                            <div class="serv">
                                <span class="icon-service"><img src="images/service-icon3.png" alt="#" /></span>
                                <h4>{{ $serviciodos->titulotres }}</h4>
                                <p>{{ $serviciodos->destres }}</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                            <div class="serv">
                                <span class="icon-service"><img src="images/service-icon4.png" alt="#" /></span>
                                <h4>{{ $serviciodos->titulocuatro }}</h4>
                                <p>{{ $serviciodos->descuatro }}</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                            <div class="serv">
                                <span class="icon-service"><img src="images/service-icon5.png" alt="#" /></span>
                                <h4>{{ $serviciodos->titulocinco }}</h4>
                                <p>{{ $serviciodos->descinco }}</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                            <div class="serv">
                                <span class="icon-service"><img src="images/service-icon6.png" alt="#" /></span>
                                <h4>{{ $serviciodos->tituloseis }}</h4>
                                <p>{{ $serviciodos->desseis }}</p>
                            </div>
                        </div>
                    </div>
                </div>
                {{-- Email uno --}}
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                   
                   <div class="imagen_servicios">
                         <img src="{{ Voyager::image( $serviciodos->imagen ) }}" alt="" class="img-servicios" style="width:450px; height:400px; margin: 10px 0 0 0px;">
                   </div>

                    
                </div>{{-- email uno --}}
            </div>
        </div>
    </div>{{-- termina --}}
    <!-- end section -->

    <!-- doctor -->
    {{-- Doctores --}}
    <div id="doctors" class="parallax section db" data-stellar-background-ratio="0.4" style="background:#fff;" data-scroll-id="doctors" tabindex="-1">
        <div class="container">

            <div class="heading">
                <span class="icon-logo"><img src="images/icon-logo.png" alt="#"></span>
                <h2>Nuestros Especialistas</h2>
            </div>

            <div class="row dev-list text-center">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s" style="visibility: visible; animation-duration: 1s; animation-delay: 0.2s; animation-name: fadeIn;">
                    <div class="widget clearfix">
                        <img src="{{ Voyager::image( $doctores->imagen ) }}" alt="" class="img-responsive img-rounded">
                        <div class="widget-title">
                            <h3>{{ $doctores->nombre }}</h3>
                            <small>{{ $doctores->especialidad }}</small>
                        </div>
                        <!-- end title -->
                        <p>{{ $doctores->descripcion }}</p>

                        <div class="footer-social">
                            <a href="#" class="btn grd1"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-github"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                    <!--widget -->
                </div>
                <!-- end col -->

                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.4s" style="visibility: visible; animation-duration: 1s; animation-delay: 0.4s; animation-name: fadeIn;">
                    <div class="widget clearfix">
                        <img src="{{ Voyager::image( $doctores->imagendos ) }}" alt="" class="img-responsive img-rounded">
                        <div class="widget-title">
                            <h3>{{ $doctores->nombredos }}</h3>
                            <small>{{ $doctores->especialidaddos }}</small>
                        </div>
                        <!-- end title -->
                        <p>{{ $doctores->descripciondos }}</p>

                        <div class="footer-social">
                            <a href="#" class="btn grd1"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-github"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                    <!--widget -->
                </div>
                <!-- end col -->

                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn">
                    <div class="widget clearfix">
                        <img src="{{ Voyager::image( $doctores->imagentres ) }}" alt="" class="img-responsive img-rounded">
                        <div class="widget-title">
                            <h3>{{ $doctores->nombretres }}</h3>
                            <small>{{ $doctores->especialidadtres }}</small>
                        </div>
                        <!-- end title -->
                        <p>{{ $doctores->descripciontres }}</p>

                        <div class="footer-social">
                            <a href="#" class="btn grd1"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-github"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                    <!--widget -->
                </div>
                <!-- end col -->

            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>

    <div id="price" class="section pr wow fadeIn" style="background-image:url('images/price-bg.png');">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="tab-content">
                        <div class="tab-pane active fade in" id="tab1">
                            <div class="row text-center">
                                @foreach ($promociones as $promocion )
                                    
                               
                                <div class="col-md-4">
                                    <div class="pricing-table">
                                        <div class="pricing-table-header grd1">
                                            <h2>{{ $promocion->titulo }}</h2>
                                            <h3>${{  $promocion->costo }} (M.N)</h3>
                                        </div>
                                        <div class="pricing-table-features">
                                            <p><strong>{{ $promocion->descripcion }}</strong></p>                                            
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="#getintouch" data-scroll="" class="btn btn-dark btn-radius btn-brd">{{ $promocion->contactanos }}</a>
                                        </div>
                                    </div>
                                </div>
                                @endforeach

                            </div>
                            <!-- end row -->
                        </div>
                        <!-- end pane -->
                        
                        <!-- end pane -->
                    </div>
                    <!-- end content -->
                </div>
                <!-- end col -->
            </div>
        </div>
    </div>

    <!-- end doctor section -->

    <div id="testimonials" class="section wb wow fadeIn">
        <div class="container">
           <div class="heading">
              <span class="icon-logo"><img src="images/icon-logo.png" alt="#"></span>
              <h2>Testimonios</h2>
           </div>
           <!-- end title -->
           <div class="row">
               @foreach ($testimonios as  $tes )                  
              
              <div class="col-md-6 col-sm-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
                 <div class="testimonial clearfix">
                    <div class="desc">
                       <h3><i class="fa fa-quote-left"></i> {{ $tes->titulo }}</h3>
                       <p class="lead">{{ $tes->descripcion }}</p>
                    </div>
                    <div class="testi-meta">
                       <img src="{{ Voyager::image( $tes->foto ) }}" alt="" class="img-responsive alignleft">
                       <h4>{{ $tes->nombre }} <small>- Muchas Gracias</small></h4>
                    </div>
                    <!-- end testi-meta -->
                 </div>
                 <!-- end testimonial -->
              </div>
              @endforeach
              {{--  
              <!-- end col -->
              <div class="col-md-6 col-sm-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.4s">
                 <div class="testimonial clearfix">
                    <div class="desc">
                       <h3><i class="fa fa-quote-left"></i> Thanks for Help us!</h3>
                       <p class="lead">They have got my project on time with the competition with a sed highly skilled, and experienced & professional team.</p>
                    </div>
                    <div class="testi-meta">
                       <img src="images/testi_02.png" alt="" class="img-responsive alignleft">
                       <h4>Andrew Atkinson <small>- Life Manager</small></h4>
                    </div>
                    <!-- end testi-meta -->
                 </div>
                 <!-- end testimonial -->
              </div>
              <!-- end col -->--}}
           </div>
           <!-- end row -->
           {{-- <hr class="invis">--}}
           
           <!-- end row -->
        </div>
        <!-- end container -->
     </div>

    {{-- Mapa --}}
    <!-- end section -->
    <div id="getintouch" class="section wb wow fadeIn" style="padding-bottom:0;">
        <div class="container">
            <div class="heading">
                <span class="icon-logo"><img src="images/icon-logo.png" alt="#"></span>
                <h2>Visítanos</h2>
            </div>
        </div>
        <div class="contact-section">
            <div class="form-contant">
                <form id="ajax-contact" action="assets/mailer.php" method="post">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group in_name">
                                <input type="text" class="form-control" placeholder="Name" required="required">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group in_email">
                                <input type="email" class="form-control" placeholder="E-mail" required="required">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group in_email">
                                <input type="tel" class="form-control" id="phone" placeholder="Phone" required="required">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group in_email">
                                <input type="text" class="form-control" id="subject" placeholder="Subject" required="required">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group in_message">
                                <textarea class="form-control" id="message" rows="5" placeholder="Message" required="required"></textarea>
                            </div>
                            <div class="actions">
                                <input type="submit" value="Send Message" name="submit" id="submitButton" class="btn small" title="Submit Your Message!">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div id="googleMap" style="width:100%;height:450px;"></div>
        </div>
    </div>
    <footer id="footer" class="footer-area wow fadeIn">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="logo padding">
                        <a href=""><img src="{{ Voyager::image( $footer->logo ) }}" alt=""></a>
                        <p>{{ $footer->descripcion }}</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="footer-info padding">
                        <h3>CONTACTANOS</h3>
                        <p><i class="fa fa-map-marker" aria-hidden="true"></i>{{ $footer->desc_contacto }}</p>
                        
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="subcriber-info">
                        <h3>SUBSCRIBE</h3>
                        <p>{{ $footer->subscribe }}</p>
                        <div class="subcriber-box">
                            <form id="mc-form" class="mc-form">
                                <div class="newsletter-form">
                                    <input type="email" autocomplete="off" id="mc-email" placeholder="Email address" class="form-control" name="EMAIL">
                                    <button class="mc-submit" type="submit"><i class="fa fa-paper-plane"></i></button>
                                    <div class="clearfix"></div>
                                    <!-- mailchimp-alerts Start -->
                                    <div class="mailchimp-alerts">
                                        <div class="mailchimp-submitting"></div>
                                        <!-- mailchimp-submitting end -->
                                        <div class="mailchimp-success"></div>
                                        <!-- mailchimp-success end -->
                                        <div class="mailchimp-error"></div>
                                        <!-- mailchimp-error end -->
                                    </div>
                                    <!-- mailchimp-alerts end -->
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <div class="copyright-area wow fadeIn">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="footer-text">
                        
                        <p>© {{ $now->format('Y')}}. {{ $footer->distribuido }} <a id="tw" href="https://themewagon.com/" target="_blank">ThemeWagon</a></p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="social">
                        <ul class="social-links">
                            <li><a href=""><i class="fa fa-rss"></i></a></li>
                            <li><a href=""><i class="fa fa-facebook"></i></a></li>
                            <li><a href=""><i class="fa fa-twitter"></i></a></li>
                            <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                            <li><a href=""><i class="fa fa-youtube"></i></a></li>
                            <li><a href=""><i class="fa fa-pinterest"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end copyrights -->
    <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
    <!-- all js files -->
    <script src="js/all.js"></script>
    <!-- all plugins -->
    <script src="js/custom.js"></script>
    <!-- map -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script>
</body>

</html>