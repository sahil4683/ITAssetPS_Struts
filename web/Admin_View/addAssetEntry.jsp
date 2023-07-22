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
                            <div class="col-md-1"></div>

                            <div class="col-md-10"> 
                                <div class="card card-primary">
                                    <div class="card-header">
                                        <h2 class="card-title">Asset Enter Form</h2>
                                    </div>
                                    <div class="card-body">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label><font size="5">Select User Details:- </font></label>
                                                <hr>
                                            </div>
                                        </div>

                                        <div class="row col-md-12">

                                            <div class="col-md-4">
                                                <!--<div class="form-group">-->
                                                <label>Selects Domain</label>
                                                <select class="form-control" id="domain" name="domain" onchange="getManagerByDomain()">
                                                    <option disabled="true" selected="true">Please Select</option>
                                                    <option value="IT">IT</option>
                                                    <option value="Sales">Sales</option>
                                                    <option value="HR">HR</option>
                                                    <option value="Manager">Manager</option>
                                                    <option value="Other">Other</option>
                                                </select>
                                            </div>

                                            <div class="col-md-4">
                                                <label>Reporting Manager</label>
                                                <select class="form-control" id="reporting_manager" name="reporting_manager" onchange="getEmployeeByManager()">
                                                    <option disabled="true" selected="true">Please Select</option>
                                                </select>
                                            </div>

                                            <div class="col-md-4">
                                                <label>Employee ID</label>
                                                <select class="form-control" id="employee_id" name="employee_id" onchange="getDetailsByEmployee()">
                                                    <option disabled="true" selected="true">Please Select</option>
                                                </select>
                                                <br>
                                            </div>




                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>First Name</label>
                                                    <input class="form-control" id="first_name" name="" readonly="ture" placeholder="Enter First Name">
                                                </div>
                                            </div>    

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Last Name</label>
                                                    <input class="form-control" id="last_name" name="" readonly="ture" placeholder="Enter Last Name">
                                                </div>
                                            </div>    


                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Email ID</label>
                                                    <input class="form-control" id="email_id" name="" readonly="ture" placeholder="Enter Email ID">
                                                </div>
                                            </div>




                                            <div class="col-md-12">
                                                <div class="form-group">

                                                    <label><font size="5">Enter Assets Details:- </font></label>
                                                    <hr>
                                                </div>
                                            </div>



                                            <div class="col-md-4">
                                                <div class="form-group ">
                                                    <label>Asset Number</label>
                                                    <input class="form-control" id="assets_number" name="" placeholder="Enter Asset Number">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Asset Tag</label>
                                                    <input class="form-control" id="assets_tag" name="" placeholder="Enter Asset Tag">
                                                </div>    
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Selects Invoice Number</label>
                                                    <select class="form-control" id="invoice_number" onchange="getSerialNoByInvoiceNo()">
                                                        <option disabled="true" selected="true">Please Select</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Selects Serial Number</label>
                                                    <select class="form-control" id="serial_number" onchange="getDetailsBySerialNo()">
                                                        <option disabled="true" selected="true">Please Select</option>
                                                    </select>
                                                </div>
                                            </div>



                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Vendor</label>
                                                    <input class="form-control" id="vendor" name="" readonly="ture" placeholder="Enter Vendor Name">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Manufacturer</label>
                                                    <input class="form-control" id="manufacture" name="" readonly="ture" placeholder="Enter Manufacture Name">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Product Name</label>
                                                    <input class="form-control" id="product_name" name="product_name" readonly="ture" placeholder="Enter Product Name">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Model Number</label>
                                                    <input class="form-control" id="model_number" name="" readonly="ture" placeholder="Enter Model Number">
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Purchase Rate</label>
                                                    <input class="form-control" id="purchase_rate" name="" readonly="ture" placeholder="Enter Purchase Rate">
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Quantity</label>
                                                    <input class="form-control" id="quantity" name="" readonly="ture" placeholder="Enter Quantity">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Total Amount</label>
                                                    <input class="form-control" id="total_amount" name="" readonly="ture" placeholder="Enter Total Amount">
                                                </div>
                                            </div>


                                            <div class="col-md-4">
                                                <label>Purchase Date</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <div class="fa fa-calendar"></div>
                                                    </span>
                                                    <input type="date" id="purchase_date" name="" readonly="ture" class="form-control">
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <label>Warranty Date</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <div class="fa fa-calendar"></div>
                                                    </span>
                                                    <input type="date" id="warranty_date" name="" readonly="ture" class="form-control">
                                                </div>
                                            </div>

                                            <div class="col-md-12">
                                                <label>Remark If Any:</label>
                                                <div class="input-group">
                                                    <textarea class="form-control" id="remark" name="remark" ></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                        <center>
                                            <button type="submit" id="submit-btn" class="btn btn-primary">Submit</button>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <button type="reset" id="reset-btn" class="btn btn-success">Reset</button>
                                        </center>
                                    </div>    
                                </div>
                                <div class="row">
                                    <div class="col-md-12">&nbsp;</div>
                                </div>
                            </div>
                        </div>

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
        <!--<script src="<%=request.getContextPath()%>/plugins/chartjs-old/Chart.min.js"></script>-->
        <!-- PAGE SCRIPTS -->
        <!--<script src="<%=request.getContextPath()%>/dist/js/pages/dashboard2.js"></script>-->

        <script src="<%=request.getContextPath()%>/plugins/SweetAlert2/sweetalert2.min.js"></script>
        <!-- DataTables -->
        <!--<script src="<%=request.getContextPath()%>/plugins/datatables/jquery.dataTables.js"></script>-->
        <!--<script src="<%=request.getContextPath()%>/plugins/datatables/dataTables.bootstrap4.js"></script>-->
        <!--<script src="<%=request.getContextPath()%>/plugins/datatables/bootstrap-table-export.js"></script>-->

        <script src="<%= request.getContextPath()%>/ajaxdata/addAssetEntry.js"></script>
        <script>
            function getManagerByDomain() {
    $.ajax({
        url: "getManagerByDomain",
        type: 'POST',
        dataType: 'json',
        data: 'domain=' + $('#domain').val()
    }).done(function (data) {
        var html = "<option value='' disabled='true' selected='true'>Please Select</option> ";
        for (var i = 0; i < data.length; i++) {   
            html += '<option value="' + data[i] + '">' + data[i] + '</option>';
        }
        document.getElementById('reporting_manager').innerHTML = html;
    });
}


function getEmployeeByManager(){
    $.ajax({
        url: "getEmployeeByManager",
        type: 'POST',
        dataType: 'json',
        data: 'reporting_manager='+ $('#reporting_manager').val()
    }).done(function (data) {
        var html = "<option value='' disabled='true' selected='true'>Please Select</option> ";
        for (var i = 0; i < data.length; i++) {   
            html += '<option value="' + data[i] + '">' + data[i] + '</option>';
        }
        document.getElementById('employee_id').innerHTML = html;
    });
}

function getDetailsByEmployee(){
    
    $.ajax({
        url: "getDetailsByEmployee",
        type: 'POST',
        dataType: 'json',
        data: 'employee_id='+ $('#employee_id').val()
    }).done(function (data) {
        $('#first_name').val(data[0]);
        $('#last_name').val(data[1]);
        $('#email_id').val(data[2]);
        
    });
}


$(document).ready(function () {
    $.ajax({
        url: "getInvoiceNumber",
        type: 'POST',
        dataType: 'json',
    }).done(function (data) {
        var html = "<option value='' disabled='true' selected='true'>Please Select</option> ";
        for (var i = 0; i < data.length; i++) {   
            html += '<option value="' + data[i] + '">' + data[i] + '</option>';
        }
        document.getElementById('invoice_number').innerHTML = html;
    });
});


function getSerialNoByInvoiceNo(){
    $.ajax({
        url: "getSerialNoByInvoiceNo",
        type: 'POST',
        dataType: 'json',
        data: 'invoice_number='+ $('#invoice_number').val()
    }).done(function (data) {
        var html = "<option value='' disabled='true' selected='true'>Please Select</option> ";
        for (var i = 0; i < data.length; i++) {   
            html += '<option value="' + data[i] + '">' + data[i] + '</option>';
        }
        document.getElementById('serial_number').innerHTML = html;
    });
}


function getDetailsBySerialNo(){
    $.ajax({
        url: "getDetailsBySerialNo",
        type: 'POST',
        dataType: 'json',
        data: 'serial_number='+ $('#serial_number').val()
    }).done(function (data) {
    
        $('#vendor').val(data[0]);
        $('#manufacture').val(data[1]);
        $('#product_name').val(data[2]);
        
        $('#model_number').val(data[3]);
        $('#purchase_rate').val(data[4]);
        $('#quantity').val(data[5]);
        
        $('#total_amount').val(data[6]);
        $('#purchase_date').val(data[7]);
        $('#warranty_date').val(data[8]);
        
    });
}



        </script>
    </body>
</html>

