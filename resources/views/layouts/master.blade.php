<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('title')</title>

    <link rel="stylesheet" href="{{ asset('assets/css/vertical-layout-light/style.css') }}">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">

    <link rel="stylesheet" href="{{ asset('assets/vendors/feather/feather.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendors/ti-icons/css/themify-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendors/css/vendor.bundle.base.css') }}">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="{{ asset('assets/vendors/datatables.net-bs4/dataTables.bootstrap4.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendors/ti-icons/css/themify-icons.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/js/select.dataTables.min.css') }}">

    <!-- Scripts -->

</head>

<body>

<div class="container-scroller">

@include('layouts.inc.admin-navbar')

<div class="container-fluid page-body-wrapper">
@include('layouts.inc.admin-sidebar')

<div class="main-panel">

@yield('content')

@include('layouts.inc.admin-footer')
</div>

</div>

</div>


    <!-- plugins:js -->
    <script src="{{ asset('assets/vendors/js/vendor.bundle.base.js"') }}></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="{{ asset('assets/vendors/chart.js/Chart.min.js"') }}></script>
    <script src="{{ asset('assets/vendors/datatables.net/jquery.dataTables.js"') }}></script>
    <script src="{{ asset('assets/vendors/datatables.net-bs4/dataTables.bootstrap4.js"') }}></script>
    <script src="{{ asset('assets/js/dataTables.select.min.js"') }}></script>

    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="{{ asset('assets/js/off-canvas.js"') }}></script>
    <script src="{{ asset('assets/js/hoverable-collapse.js"') }}></script>
    <script src="{{ asset('assets/js/template.js"') }}></script>
    <script src="{{ asset('assets/js/settings.js"') }}></script>
    <script src="{{ asset('assets/js/todolist.js"') }}></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="{{ asset('assets/js/dashboard.js"') }}></script>
    <script src="{{ asset('assets/js/Chart.roundedBarCharts.js"') }}></script>

</body>

</html>