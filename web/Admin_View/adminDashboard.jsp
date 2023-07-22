<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="x-ua-compatible" content="ie=edge">

        <title>Home | Admin</title>

        <!-- Font Awesome Icons -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/font-awesome/css/font-awesome.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/dist/css/adminlte.min.css">
        <!-- Google Font: Source Sans Pro -->
        
    </head>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">
            <!-- Navbar -->
            <jsp:include page="../Admin_View/adminNav.jsp"/>
            <!-- /.navbar -->

            <!-- Sidebar -->
            <jsp:include page="../Admin_View/adminSidebar.jsp"/>
            <!-- /.sidebar -->


            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <div class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <!--<h1 class="m-0 text-dark">Dashboard v2</h1>-->
                            </div><!-- /.col -->
                            <!--          <div class="col-sm-6">
                                        <ol class="breadcrumb float-sm-right">
                                          <li class="breadcrumb-item"><a href="#">Home</a></li>
                                          <li class="breadcrumb-item active">Dashboard v2</li>
                                        </ol>
                                      </div> /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->

                <!-- Main content -->
                <section class="content">
                    <div class="container-fluid">
                        <!-- Info boxes -->
                        <div class="row">
                            <div class="col-12 col-sm-6 col-md-3">
                                <div class="info-box">
                                    <span class="info-box-icon bg-info elevation-1"><i class="fa fa-gear"></i></span>

                                    <div class="info-box-content">
                                        <span class="info-box-text">CPU Traffic</span>
                                        <span class="info-box-number">
                                            10
                                            <small>%</small>
                                        </span>
                                    </div>
                                    <!-- /.info-box-content -->
                                </div>
                                <!-- /.info-box -->
                            </div>
                            <!-- /.col -->
                            <div class="col-12 col-sm-6 col-md-3">
                                <div class="info-box mb-3">
                                    <span class="info-box-icon bg-danger elevation-1"><i class="fa fa-google-plus"></i></span>

                                    <div class="info-box-content">
                                        <span class="info-box-text">Likes</span>
                                        <span class="info-box-number">41,410</span>
                                    </div>
                                    <!-- /.info-box-content -->
                                </div>
                                <!-- /.info-box -->
                            </div>
                            <!-- /.col -->

                            <!-- fix for small devices only -->
                            <div class="clearfix hidden-md-up"></div>

                            <div class="col-12 col-sm-6 col-md-3">
                                <div class="info-box mb-3">
                                    <span class="info-box-icon bg-success elevation-1"><i class="fa fa-shopping-cart"></i></span>

                                    <div class="info-box-content">
                                        <span class="info-box-text">Sales</span>
                                        <span class="info-box-number">760</span>
                                    </div>
                                    <!-- /.info-box-content -->
                                </div>
                                <!-- /.info-box -->
                            </div>
                            <!-- /.col -->
                            <div class="col-12 col-sm-6 col-md-3">
                                <div class="info-box mb-3">
                                    <span class="info-box-icon bg-warning elevation-1"><i class="fa fa-users"></i></span>

                                    <div class="info-box-content">
                                        <span class="info-box-text">New Members</span>
                                        <span class="info-box-number">2,000</span>
                                    </div>
                                    <!-- /.info-box-content -->
                                </div>
                                <!-- /.info-box -->
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->


                        <!-- /.row -->

                        <!-- Main row -->
                        <div class="row">
                            <!-- Left col -->
                            <div class="col-md-8">
                                <!-- MAP & BOX PANE -->

                                <!-- /.card -->
                                <div class="row">

                                    <!-- /.col -->

                                    <div class="col-md-6">
                                        <!-- USERS LIST -->

                                        <!--/.card -->
                                    </div>
                                    <!-- /.col -->
                                </div>
                                <!-- /.row -->

                                <!-- TABLE: LATEST ORDERS -->

                                <!-- /.card -->
                            </div>
                            <!-- /.col -->

                            <div class="col-md-4">
                                <!-- Info Boxes Style 2 -->

                                <!-- /.info-box -->

                                <!-- /.info-box -->
                                <div class="info-box mb-3 bg-danger">
                                    <span class="info-box-icon"><i class="fa fa-cloud-download"></i></span>

                                    <div class="info-box-content">
                                        <span class="info-box-text">Downloads</span>
                                        <span class="info-box-number">114,381</span>
                                    </div>
                                    <!-- /.info-box-content -->
                                </div>
                                <!-- /.info-box -->
                                <div class="info-box mb-3 bg-info">
                                    <span class="info-box-icon"><i class="fa fa-comment-o"></i></span>

                                    <div class="info-box-content">
                                        <span class="info-box-text">Direct Messages</span>
                                        <span class="info-box-number">163,921</span>
                                    </div>
                                    <!-- /.info-box-content -->
                                </div>
                                <!-- /.info-box -->


                                <!-- /.card -->

                                <!-- PRODUCT LIST -->

                                <!-- /.card -->
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->
                    </div><!--/. container-fluid -->
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Control sidebar content goes here -->
            </aside>
            <!-- /.control-sidebar -->

            <!-- Main Footer -->
            <jsp:include page="../Admin_View/adminFooter.jsp"/>
        </div>
        <!-- ./wrapper -->

        <!-- REQUIRED SCRIPTS -->
        <!-- jQuery -->
        <script src="<%=request.getContextPath()%>/plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="<%=request.getContextPath()%>/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- AdminLTE App -->
        <script src="<%=request.getContextPath()%>/dist/js/adminlte.js"></script>

        <!-- OPTIONAL SCRIPTS -->
        <script src="<%=request.getContextPath()%>/dist/js/demo.js"></script>

        <!-- PAGE PLUGINS -->
        <!-- SparkLine -->
        <script src="<%=request.getContextPath()%>/plugins/sparkline/jquery.sparkline.min.js"></script>
        <!-- jVectorMap -->
        <script src="<%=request.getContextPath()%>/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="<%=request.getContextPath()%>/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <!-- SlimScroll 1.3.0 -->
        <script src="<%=request.getContextPath()%>/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- ChartJS 1.0.2 -->
        <script src="<%=request.getContextPath()%>/plugins/chartjs-old/Chart.min.js"></script>
        <!-- PAGE SCRIPTS -->
        <script src="<%=request.getContextPath()%>/dist/js/pages/dashboard2.js"></script>
    </body>
</html>

