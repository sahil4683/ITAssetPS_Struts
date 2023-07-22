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
        <link rel="stylesheet" href="<%=request.getContextPath()%>/plugins/datatables/dataTables.bootstrap4.css">
        <link href="<%=request.getContextPath()%>/plugins/SweetAlert2/sweetalert2.min.css" rel="stylesheet" type="text/css">
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

            <div class="content-wrapper">
                <section class="content">
                    <div class="container-fluid">
                        <!--Main Inner Panel Start-->                        
                        <div class="row">
                            <div class="col-md-12">&nbsp;</div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card card-primary">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-striped table-bordered table-hover" id="dataTableList">
                                                <thead class="thead-dark">
                                                    <tr>
                                                        <th>Edit</th>
                                                        <th>Delete</th>
                                                        <th>Sr No</th>
                                                        <th>Employee ID</th>
                                                        <th>First Name</th>
                                                        <th>Last Name</th>
                                                        <th>Email ID</th>
                                                        <th>Domain</th>
                                                        <th>User Type</th>
                                                        <th>Reporting Manager</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">&nbsp;</div>
                            </div>
                            <!--Main Inner Panel End-->
                        </div>


                        <!--Edit Div Start-->

                        <div class="modal fade bs-example-modal-lg modal-default1111" id="modelDriveMonitoring" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title" id="myLargeModalLabel">Update Member Details</h4>
                                        <button type="button" class="close" data-dismiss="modal"
                                                aria-label="Close"  style="margin-right:10px">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            <div class="row">
                                                <div class="col-md-12" >
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label>Employee ID</label>
                                                                <input class="form-control" readonly="true" id="employee_id" name="employee_id" placeholder="Enter Employee ID">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>First Name</label>
                                                                <input class="form-control" id="first_name" name="first_name" placeholder="Enter First Name">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Last Name</label>
                                                                <input class="form-control" id="last_name" name="last_name" placeholder="Enter Last Name">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Email ID</label>
                                                                <input class="form-control" id="email_id" name="email_id" placeholder="Enter Email ID">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Selects Domain</label>
                                                                <select class="form-control" id="domain" name="domail">
                                                                    <option disabled="true" selected="true">Please Select</option>
                                                                    <option>IT</option>
                                                                    <option>Sales</option>
                                                                    <option>HR</option>
                                                                    <option>Manager</option>
                                                                    <option>Other</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Selects UserType</label>
                                                                <select class="form-control" id="user_type" name="user_type">
                                                                    <option disabled="true" selected="true">Please Select</option>
                                                                    <option>Admin</option>
                                                                    <option>Reporting Manager</option>
                                                                    <option>User</option>
                                                                    <option>Other</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Reporting Manager</label>
                                                                <select class="form-control" id="reporting_manager" name="reporting_manager">
                                                                    <option disabled="true" selected="true">Please Select</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card-footer">
                                                        <center>
                                                            <button type="submit" id="update-btn" class="btn btn-primary">Update</button>
                                                        </center>
                                                    </div>
                                                </div>
                                                <div class="col-md-2"></div>
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--Edit Div End-->



                </section>
            </div>

            <aside class="control-sidebar control-sidebar-dark">

            </aside>

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
        <!--<script src="<%=request.getContextPath()%>/dist/js/demo.js"></script>-->

        <!-- PAGE PLUGINS -->
        <!-- SparkLine -->
        <script src="<%=request.getContextPath()%>/plugins/sparkline/jquery.sparkline.min.js"></script>
        <!-- jVectorMap -->
        <script src="<%=request.getContextPath()%>/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="<%=request.getContextPath()%>/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <!-- SlimScroll 1.3.0 -->
        <script src="<%=request.getContextPath()%>/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- ChartJS 1.0.2 -->
        <!--<script src="<%=request.getContextPath()%>/plugins/chartjs-old/Chart.min.js"></script>-->
        <!-- PAGE SCRIPTS -->
        <!--<script src="<%=request.getContextPath()%>/dist/js/pages/dashboard2.js"></script>-->

        <script src="<%=request.getContextPath()%>/plugins/SweetAlert2/sweetalert2.min.js"></script>

        <!-- DataTables -->
        <script src="<%=request.getContextPath()%>/plugins/datatables/jquery.dataTables.js"></script>
        <script src="<%=request.getContextPath()%>/plugins/datatables/dataTables.bootstrap4.js"></script>
        <!--<script src="<%=request.getContextPath()%>/plugins/datatables/bootstrap-table-export.js"></script>-->
        <script src="<%= request.getContextPath()%>/ajaxdata/viewUser.js"></script>

    </body>
</html>

