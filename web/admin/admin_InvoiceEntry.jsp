<%-- 
    Document   : admin_Dashboard
    Created on : 20 Jul, 2019, 5:30:41 PM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IT Asset</title>
    <!-- Core CSS - Include with every page -->
    <link href="<%=request.getContextPath()%>/assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/assets/css/style.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/assets/css/main-style.css" rel="stylesheet" />
    <!-- Page-Level CSS -->
    <link href="<%=request.getContextPath()%>/assets/plugins/morris/morris-0.4.3.min.css" rel="stylesheet" />
   </head>
<body>
    <!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->
        <jsp:include page="../admin/admin_nav.jsp"/>
        <!-- end navbar top -->

        <!-- navbar side -->
        <jsp:include page="../admin/admin_sidebar.jsp"/>
        <!-- end navbar side -->
        <!--  page-wrapper -->
        <div id="page-wrapper">

            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
                    <h1 class="page-header">Add Invoice</h1>
                </div>
                <!--End Page Header -->
            </div>

            <div class="row">
                
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Add Invoice Details
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                
                                <div class="col-lg-12">
                                    <form role="form">
                                      
                                        <div class="form-group">
                                            <label>Invoice Number</label>
                                            <input class="form-control" id="invoice_number" name="invoive_number" placeholder="Enter Invoice Number">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Vendor</label>
                                            <input class="form-control" id="vendor" name="vendor" placeholder="Enter Vendor Name">
                                        </div>
                                        <div class="form-group">
                                            <label>Manufacturer</label>
                                            <input class="form-control" id="manufacture" name="manufacture" placeholder="Enter Manufacture Name">
                                        </div>
                                        <div class="form-group">
                                            <label>Model Number</label>
                                            <input class="form-control" id="model_number" name="model_number" placeholder="Enter Model Number">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Serial Number</label>
                                            <input class="form-control" id="serial_number" name="serial_number" placeholder="Enter Serial Number">
                                        </div>                                                              
                                      
                                        <div class="row">
                                        <div class="col-lg-6">
                                            <label>Purchase Rate</label>
                                            <input class="form-control" id="purchase_rate" name="purchase_rate" placeholder="Enter Rurchase Rate">
                                        </div>
                                            
                                        <div class="col-lg-6">
                                            <label>Quantity</label>
                                            <input class="form-control" id="quantity" name="quantity" placeholder="Enter Quantity">
                                        </div>
                                      </div>
                                        
                                        <div class="form-group">
                                            <br>
                                            <label>Total Amount</label>
                                            <input class="form-control" id="total_amount" name="total_amount" placeholder="Enter Total Amount">
                                        </div>
                                        
                                        
                                        <div class="row">
                                        <div class="col-lg-6">
                                            <label>Purchase Date</label>
                                          <div class="input-group">
                                            <span class="input-group-addon">
                                                <div class="fa fa-calendar"></div>
                                            </span>
                                            <input type="date" class="form-control" id="purchase_date" name="purchase_date">
                                          </div>
                                        </div>
                                            
                                        <div class="col-lg-6">
                                            <label>Warranty Date</label>
                                          <div class="input-group">
                                            <span class="input-group-addon">
                                                <div class="fa fa-calendar"></div>
                                            </span>
                                            <input type="date" class="form-control" id="warranty_date" name="warranty_date">
                                          </div>
                                        </div>
                                      </div>
                                        
                                       
                                        <div class="form-group">
                                            
                                        </div>
                                        
                                        <div class="col-lg-12">
                                            <br>
                                        <center>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                        &nbsp;&nbsp;
                                        <button type="reset" class="btn btn-success">Reset</button>
                                        </center>
                                        </div>
                                    </form>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                     <!-- End Form Elements -->
                </div>


            </div>

        </div>
        <!-- end page-wrapper -->

    </div>
    <!-- end wrapper -->

    <!-- Core Scripts - Include with every page -->
    <script src="<%=request.getContextPath()%>/assets/plugins/jquery-1.10.2.js"></script>
    <script src="<%=request.getContextPath()%>/assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<%=request.getContextPath()%>/assets/plugins/pace/pace.js"></script>
    <script src="<%=request.getContextPath()%>/assets/scripts/siminta.js"></script>
    <!-- Page-Level Plugin Scripts-->
    <!--<script src="<%=request.getContextPath()%>/assets/plugins/morris/raphael-2.1.0.min.js"></script>-->
    <!--<script src="<%=request.getContextPath()%>/assets/plugins/morris/morris.js"></script>-->
    <!--<script src="<%=request.getContextPath()%>/assets/scripts/dashboard-demo.js"></script>-->

</body>

</html>

