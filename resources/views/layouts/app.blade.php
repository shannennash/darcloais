<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ trans('global.site_title') }}</title>
    <link rel="icon" href="/assets/images/favicon.ico" type="image/x-icon" />
    
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/2.4.3/css/AdminLTE.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/2.4.3/css/AdminLTE.min.css" rel="stylesheet" />

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/vendors/css/charts/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/vendors/css/extensions/tether-theme-arrows.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/vendors/css/extensions/tether.min.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/vendors/css/extensions/shepherd-theme-default.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="/app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/core/colors/palette-gradient.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/pages/dashboard-analytics.css">
    <link rel="stylesheet" type="text/css" href="/app-assets/css/pages/card-analytics.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <!-- END: Custom CSS-->

    <link href="/css/custom.css" rel="stylesheet" />

    <style>
        .dar-register {
            border: solid 1px #7367f0;
            border-radius: 3px;
            padding: 10px 22px;
            position: relative;
            display: inline-block;
            transition:all .5s ease-in-out;
            -webkit-transition:all .2s ease-in-out;
            -o-transition:all .2s ease-in-out;
            -moz-transition:all .2s ease-in-out;
        }
        .dar-register:hover {
            color:#fff;
            background:#7367f0;
        }
        .dar-login {
            background:linear-gradient(135deg, rgba(0,163,76,1) 0%, rgba(0,163,76,1) 17%, rgba(0,108,52,1) 100%);
            box-shadow:0 0 10px 1px rgba(0,108,52,1);
            border:none;
            border-radius:3px;
        }
        .dar-back-login {
            background: rgb(255,0,0);
            background: linear-gradient(90deg, rgba(255,0,0,1) 0%, rgba(121,9,9,1) 49%, rgba(113,0,0,1) 100%);
            box-shadow:0 0 10px 1px rgba(121,9,9,1);
            border:none;
            border-radius:3px;
            color:#fff;
            padding-left:14px;
            box-shadow:0 0 10px 1px rgba(121,9,9,1);
        }
        .video-background {
          background: #000;
          position: fixed;
          top: 0; right: 0; bottom: 0; left: 0;
          z-index: -99;
        }
        .video-foreground,
        .video-background iframe {
          position: absolute;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          pointer-events: none;
        }
        .video-overlay {
            height: 100%;
            width: 100%;
            z-index: -98;
            background: rgba(0, 0, 0, 0.55);
            position: fixed;
            top:0;
            left:0;
            bottom:0;
            right:0;
        }
        body {
            overflow:hidden;
        }
        .dar-logo-img {
            width:100%;
        }
        .login-box-body {
            border-radius:5px;
        }
        .login-box-msg {
            font-size:16px;
        }
        .login-box,
        .register-box {
            margin:10% auto;
        }
    </style>
    
</head>

<body class="hold-transition login-page">
{{--     <div class="video-overlay"></div>
    <div class="video-background">
        <div class="video-foreground">
          <iframe src="https://www.youtube.com/embed/6trabufV5Oc?controls=0&showinfo=0&rel=0&autoplay=1&loop=1&mute=1&modestbranding=1&autohide=1" frameborder="0" allowfullscreen></iframe>
        </div>
    </div> --}}
    @yield('content')
</body>

    <script src="https://kit.fontawesome.com/bf149b3af2.js" crossorigin="anonymous"></script>

</html>