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
                    <h1 class="page-header">Admin Assets Entry Form</h1>
                </div>
                <!--End Page Header -->
            </div>

            <div class="row">
                
                <!--<div class="col-lg-3"></div>-->
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Add Asset Details
                        </div>
                        <div class="panel-body">
                            
                                
                                
                                    <form role="form">
                                        
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                        
                                            <label><font size="5">Select User Details:- </font></label>
                                        <hr>
                                        </div>
                                        </div>
                                        
                                     <div class="row col-lg-12">
                                        <div class="row"> 
                                         <div class="col-lg-4">
                                         <!--<div class="form-group">-->
                                            <label>Selects Domain</label>
                                            <select class="form-control" id="domain" name="domain">
                                                <option>IT</option>
                                                <option>Sales</option>
                                                <option>HR</option>
                                                <option>Manager</option>
                                                <option>Other</option>
                                            </select>
                                        <!--</div-->
                                        </div>
                                         
                                        <div class="col-lg-4">
                                            <label>Reporting Manager</label>
                                        <select class="form-control" id="reporting_manager" name="reporting_manager">
                                            <option>Sahil</option>
                                            <option>Sanjay</option>
                                            <option>Pramod</option>
                                            <option>Milind</option>
                                            <option>Surendra</option>
                                            <option>Pramod</option>
                                            <option>Suryakant</option>
                                        </select>
                                        </div>
                                            
                                        <div class="col-lg-4">
                                            <label>Employee ID</label>
                                        <select class="form-control" id="employee_id" name="employee_id">
                                            <option>EMP-123</option>
                                            <option>EMP-124</option>
                                            <option>EMP-125</option>
                                            <option>EMP-126</option>
                                            <option>EMP-127</option>
                                        </select>
                                            <br>
                                        </div>
                                      </div>
                                    </div> 
                                       
                                        <div class="row col-lg-12">
                                        <div class="row">
                                        <div class="col-lg-4">
                                        <div class="form-group">
                                            <label>First Name</label>
                                            <input class="form-control" id="first_name" name="" readonly="ture" placeholder="Enter First Name">
                                        </div>
                                        </div>    
                                            
                                        <div class="col-lg-4">
                                        <div class="form-group">
                                            <label>Last Name</label>
                                            <input class="form-control" id="last_name" name="" readonly="ture" placeholder="Enter Last Name">
                                        </div>
                                        </div>    
                                       
                                        
                                        <div class="col-lg-4">
                                        <div class="form-group">
                                            <label>Email ID</label>
                                            <input class="form-control" id="email_id" name="" readonly="ture" placeholder="Enter Email ID">
                                        </div>
                                        </div>
                                        </div>
                                        </div>
                                        
                                        
                                        <div class="col-lg-12">
                                        <div class="form-group">
                                            <br>
                                            <label><font size="5">Enter Assets Details:- </font></label>
                                        <hr>
                                        </div>
                                        </div>
                                        
                                        <div class="col-lg-12">
                                            <div class="form-group col-lg-2"></div>
                                        <div class="form-group col-lg-4">
                                            <label>Asset Number</label>
                                            <input class="form-control" id="assets_number" name="" placeholder="Enter Asset Number">
                                        </div>
                                        <div class="form-group col-lg-4">
                                            <label>Asset Tag</label>
                                            <input class="form-control" id="assets_tag" name="" placeholder="Enter Asset Tag">
                                        </div>    
                                        </div>  
                                        
                                        <div class="row col-lg-12">
                                        <div class="col-lg-4">
                                        <div class="form-group">
                                            <label>Selects Invoice Number</label>
                                            <select class="form-control" id="invoice_number" name="">
                                                <option>INV-121312</option>
                                                <option>INV-121343</option>
                                                <option>INV-121454</option>
                                                <option>INV-121654</option>
                                            </select>
                                        </div>
                                        </div>
                                        
                                        <div class="col-lg-4">
                                        <div class="form-group">
                                            <label>Selects Serial Number</label>
                                            <select class="form-control" id="serial_number" name="">
                                                <option>SRL-121312</option>
                                                <option>SRL-121343</option>
                                                <option>SRL-121454</option>
                                                <option>SRL-121654</option>
                                            </select>
                                        </div>
                                        </div>
                                        </div>
                                        
                                        <div class="row col-lg-12">
                                            
                                        <div class="form-group col-lg-4">
                                            <label>Vendor</label>
                                            <input class="form-control" id="vendor" name="" readonly="ture" placeholder="Enter Vendor Name">
                                        </div>
                                        <div class="form-group col-lg-4">
                                            <label>Manufacturer</label>
                                            <input class="form-control" id="manufacture" name="" readonly="ture" placeholder="Enter Manufacture Name">
                                        </div>
                                        <div class="form-group col-lg-4">
                                            <label>Model Number</label>
                                            <input class="form-control" id="model_number" name="" readonly="ture" placeholder="Enter Model Number">
                                        </div>
                                            
                                        <div class="form-group col-lg-4">
                                            <label>Purchase Rate</label>
                                            <input class="form-control" id="purchase_rate" name="" readonly="ture" placeholder="Enter Purchase Rate">
                                        </div>
                                            
                                        <div class="form-group col-lg-4">
                                            <label>Quantity</label>
                                            <input class="form-control" id="quantity" name="" readonly="ture" placeholder="Enter Quantity">
                                        </div>
                                            
                                        <div class="form-group col-lg-4">
                                            <label>Total Amount</label>
                                            <input class="form-control" id="total_amount" name="" readonly="ture" placeholder="Enter Total Amount">
                                        </div>
                                        </div>
              
                                        <div class="row col-lg-12">
                                        <div class="col-lg-4">
                                            <label>Purchase Date</label>
                                          <div class="input-group">
                                            <span class="input-group-addon">
                                                <div class="fa fa-calendar"></div>
                                            </span>
                                            <input type="date" id="purchase_date" name="" readonly="ture" class="form-control">
                                          </div>
                                        </div>
                                            
                                        <div class="col-lg-4">
                                            <label>Warranty Date</label>
                                          <div class="input-group">
                                            <span class="input-group-addon">
                                                <div class="fa fa-calendar"></div>
                                            </span>
                                            <input type="date" id="warranty_date" name="" readonly="ture" class="form-control">
                                          </div>
                                        </div> 
                                      </div>
                                        
                                       <div class="row col-lg-12">
                                        <div class="form-group col-lg-6">
                                            <br>
                                            <label>Remark If Any</label>
                                            <textarea class="form-control" id="remark" name="" rows="3"></textarea>
                                        </div>
                                        </div>
                                        
                                        <div class="row col-lg-12">
                                        <center>
                                            <br>
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

