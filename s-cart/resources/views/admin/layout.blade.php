@php
    $styleDefine = 'admin.theme_define.'.config('admin.theme_default');
@endphp
<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="icon" href="{{ asset('images/icon.png') }}" type="image/png" sizes="16x16">
  <!-- <title>{{sc_config('ADMIN_TITLE')}} | {{ $title??'' }}</title> -->
  <title>Marketing4growth</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('admin/LTE/plugins/fontawesome-free/css/all.min.css')}}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="{{ asset('admin/LTE/plugins/jqvmap/jqvmap.min.css')}}">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="{{ asset('admin/LTE/plugins/overlayScrollbars/css/OverlayScrollbars.min.css')}}">
  <!-- summernote -->
  <link rel="stylesheet" href="{{ asset('admin/LTE/plugins/summernote/summernote-bs4.css')}}">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

  <!-- iCheck -->
  <link rel="stylesheet" href="{{ asset('admin/LTE/plugins/iCheck/square/blue.css')}}">
  <link rel="stylesheet" href="{{ asset('admin/LTE/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
  @if (!Admin::isLoginPage() && !Admin::isLogoutPage())
  <!-- Select2 -->
  <link rel="stylesheet" href="{{ asset('admin/LTE/plugins/select2/css/select2.min.css')}}">
  <!-- Daterange picker -->
  {{-- <link rel="stylesheet" href="{{ asset('admin/LTE/plugins/daterangepicker/daterangepicker.css')}}"> --}}
  <!-- Tempusdominus Bbootstrap 4 -->
  {{-- <link rel="stylesheet" href="{{ asset('admin/LTE/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css')}}"> --}}

  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="{{ asset('admin/LTE/plugins/overlayScrollbars/css/OverlayScrollbars.min.css')}}">
  <!-- Theme style -->

  @include('admin.component.css')
  @endif

  <link rel="stylesheet" href="{{ asset('admin/LTE/dist/css/adminlte.min.css')}}">

  @stack('styles')

</head>

<body class="hold-transition sidebar-mini layout-navbar-fixed layout-fixed {{ config($styleDefine.'.body') }}">

<div class="wrapper">
  @if ((Admin::isLoginPage() || Admin::isLogoutPage()))
    @yield('main')
  @else
  @include('admin.component.exception')
  @include('admin.header')
  @include('admin.sidebar')

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">
              <i class="{{ $icon??'' }}" aria-hidden="true"></i> {!! $title??'' !!}
              <small>{!!$subTitle??'' !!}</small>
            </h1>
            <div class="more_info">{!! $more_info??'' !!}</div>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{ route('admin.home') }}"><i class="fa fa-home fa-1x"></i> {{ trans('admin.home') }}</a></li>
              <li class="breadcrumb-item active">{!! $title??'' !!}</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      @yield('main')
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  @include('admin.footer')

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->


  <div id="loading">
        <div id="overlay" class="overlay"><i class="fa fa-spinner fa-pulse fa-5x fa-fw "></i></div>
 </div>
@endif

</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="{{ asset('admin/LTE/plugins/jquery/jquery.min.js')}}"></script>
<!-- jQuery UI 1.11.4 -->
<script src="{{ asset('admin/LTE/plugins/jquery-ui/jquery-ui.min.js')}}"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
{{-- <script>
  $.widget.bridge('uibutton', $.ui.button)
</script> --}}
<!-- Bootstrap 4 -->
<script src="{{ asset('admin/LTE/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
{{-- <!-- ChartJS -->
<script src="{{ asset('admin/LTE/plugins/chart.js/Chart.min.js')}}"></script> --}}
<!-- JQVMap -->
<script src="{{ asset('admin/LTE/plugins/jqvmap/jquery.vmap.min.js')}}"></script>
<script src="{{ asset('admin/LTE/plugins/jqvmap/maps/jquery.vmap.usa.js')}}"></script>
<!-- daterangepicker -->
{{-- <script src="{{ asset('admin/LTE/plugins/moment/moment.min.js')}}"></script>
<script src="{{ asset('admin/LTE/plugins/daterangepicker/daterangepicker.js')}}"></script> --}}
<!-- Tempusdominus Bootstrap 4 -->
{{-- <script src="{{ asset('admin/LTE/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js')}}"></script> --}}
<!-- Summernote -->
<script src="{{ asset('admin/LTE/plugins/summernote/summernote-bs4.min.js')}}"></script>
<!-- overlayScrollbars -->
<script src="{{ asset('admin/LTE/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js')}}"></script>


@if (!Admin::isLoginPage() && !Admin::isLogoutPage())
{{-- <script src="{{ asset('admin/AdminLTE/bower_components/raphael/raphael.min.js')}}"></script>
<script src="{{ asset('admin/AdminLTE/bower_components/morris.js/morris.min.js')}}"></script> --}}
<!-- Sparkline -->
<script src="{{ asset('admin/LTE/plugins/sparklines/sparkline.js')}}"></script>
<!-- FastClick -->
<script src="{{ asset('admin/LTE/plugins/fastclick/fastclick.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{ asset('admin/LTE/dist/js/adminlte.js')}}"></script>
{{-- sweetalert2 --}}
<script src="{{ asset('admin/plugin/sweetalert2.all.min.js')}}"></script>
{{-- <script src="{{ asset('admin/plugin/promise-polyfill.js')}}"></script> --}}
<!-- Select2 -->
<script src="{{ asset('admin/LTE/plugins/select2/js/select2.full.min.js')}}"></script>
{{-- switch --}}
<script src="{{ asset('admin/plugin/bootstrap-switch.min.js')}}"></script>
<!-- AdminLTE for demo purposes -->
{{-- <script src="{{ asset('admin/LTE/dist/js/demo.js')}}"></script> --}}
@endif
<script src="{{ asset('admin/LTE/plugins/iCheck/icheck.min.js')}}"></script>

@stack('scripts')

@include('admin.component.script')
@include('admin.component.alerts')

</body>
</html>