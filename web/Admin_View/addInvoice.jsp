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
                            <div class="col-md-2"></div>
                            <div class="col-md-8">
                                <!-- general form elements -->
                                <div class="card card-primary">
                                    <div class="card-header">
                                        <h2 class="card-title">Add Invoice</h2>
                                    </div>
                                    <!-- /.card-header -->
                                    <!-- form start -->
                                    <!--<form role="form">-->
                                    <div class="card-body">

                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Invoice Number</label>
                                                    <input class="form-control" id="invoice_number" name="invoice_number" placeholder="Enter Invoice Number">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Vendor</label>
                                                    <input class="form-control" id="vendor" name="vendor" placeholder="Enter Vendor Name">
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Manufacturer</label>
                                                    <input class="form-control" id="manufacture" name="manufacture" placeholder="Enter Manufacture Name">
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Product Name</label>
                                                    <input class="form-control" id="product_name" name="product_name" placeholder="Enter Product Name">
                                                </div>
                                            </div>


                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Model Number</label>
                                                    <input class="form-control" id="model_number" name="model_number" placeholder="Enter Model Number">
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Serial Number</label>
                                                    <input class="form-control" id="serial_number" name="serial_number" placeholder="Enter Serial Number">
                                                </div>                                                              
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Purchase Rate</label>
                                                    <input class="form-control" id="purchase_rate" name="purchase_rate" placeholder="Enter Rurchase Rate">
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Quantity</label>
                                                    <input class="form-control" id="quantity" name="quantity" placeholder="Enter Quantity">
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Total Amount</label>
                                                    <input class="form-control" id="total_amount" name="total_amount" placeholder="Enter Total Amount">
                                                </div>
                                            </div>



                                            <div class="col-md-6">
                                                <label>Purchase Date</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <div class="fa fa-calendar"></div>
                                                    </span>
                                                    <input type="date" class="form-control" id="purchase_date" name="purchase_date">
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <label>Warranty Date</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <div class="fa fa-calendar"></div>
                                                    </span>
                                                    <input type="date" class="form-control" id="warranty_date" name="warranty_date">
                                                </div>
                                            </div>

                                        </div>



                                    </div>
                                    <!-- /.card-body -->

                                    <div class="card-footer">
                                        <center>
                                            <button type="submit" id="submit-btn" class="btn btn-primary">Submit</button>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <button type="reset" id="reset-btn" class="btn btn-success">Reset</button>
                                        </center>
                                    </div>

                                    <!--</form>-->
                                </div>
                            </div>
                        </div>
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
                                                        <th>Invoice Number</th>
                                                        <th>Vendor</th>
                                                        <th>Manufacture</th>
                                                        <th>Product Name</th>
                                                        <th>Model Number</th>
                                                        <th>Serial Number</th>
                                                        <th>Purchase Rate</th>
                                                        <th>Quantity</th>
                                                        <th>Total Amount</th>
                                                        <th>Purchase Date</th>
                                                        <th>Warranty Date</th>
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
                        <!--Main Inner Panel End-->
                    </div>





                </section>
            </div>

            <!--Edit Div Start-->
            <div class="modal fade " id="editPanel">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Update Invoice Details</h4>
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
                                                <label>Invoice Number</label>
                                                <input class="form-control" id="invoice_number_u" name="invoice_number_u" placeholder="Enter Invoice Number">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Vendor</label>
                                                <input class="form-control" id="vendor_u" name="vendor_u" placeholder="Enter Vendor Name">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Manufacturer</label>
                                                <input class="form-control" id="manufacture_u" name="manufacture_u" placeholder="Enter Manufacture Name">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Product Name</label>
                                                <input class="form-control" id="product_name_u" name="product_name_u" placeholder="Enter Product Name">
                                            </div>
                                        </div>


                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Model Number</label>
                                                <input class="form-control" id="model_number_u" name="model_number_u" placeholder="Enter Model Number">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Serial Number</label>
                                                <input class="form-control" id="serial_number_u" name="serial_number_u" placeholder="Enter Serial Number">
                                            </div>                                                              
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Purchase Rate</label>
                                                <input class="form-control" id="purchase_rate_u" name="purchase_rate_u" placeholder="Enter Rurchase Rate">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Quantity</label>
                                                <input class="form-control" id="quantity_u" name="quantity_u" placeholder="Enter Quantity">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Total Amount</label>
                                                <input class="form-control" id="total_amount_u" name="total_amount_u" placeholder="Enter Total Amount">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label>Purchase Date</label>
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <div class="fa fa-calendar"></div>
                                                </span>
                                                <input type="date" class="form-control" id="purchase_date_u" name="purchase_date_u">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label>Warranty Date</label>
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <div class="fa fa-calendar"></div>
                                                </span>
                                                <input type="date" class="form-control" id="warranty_date_u" name="warranty_date_u">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">&nbsp;</div>
                                    <input type="hidden" id="sr_no" name="sr_no">
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

        <script src="<%=request.getContextPath()%>/plugins/SweetAlert2/sweetalert2.min.js"></script>
        <!-- DataTables -->
        <script src="<%=request.getContextPath()%>/plugins/datatables/jquery.dataTables.js"></script>
        <script src="<%=request.getContextPath()%>/plugins/datatables/dataTables.bootstrap4.js"></script>
        <script src="<%=request.getContextPath()%>/plugins/datatables/bootstrap-table-export.js"></script>

        <script src="<%= request.getContextPath()%>/ajaxdata/addInvoice.js"></script>

    </body>
</html>

