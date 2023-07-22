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
    <link href="<%=request.getContextPath()%>/assets/SweetAlert2/sweetalert2.min.css" rel="stylesheet" type="text/css">
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
                    <h1 class="page-header">Assign Member</h1>
                </div>
                <!--End Page Header -->
            </div>

            <div class="row">
                
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Assign User Details
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                
                                <div class="col-lg-12">
                                    <!--<form role="form">-->
                                      
                                        <div class="form-group">
                                            <label>Selects Domain</label>
                                            <select class="form-control" id="domain" name="domain" >
                                                <option disabled="true" selected="true">Please Select</option>
                                                <option value="IT">IT</option>
                                                <option>Sales</option>
                                                <option value="HR">HR</option>
                                                <option>Manager</option>
                                                <option>Other</option>
                                            </select>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Reporting Manager</label>
                                            <select class="form-control" id="reporting_manager" name="reporting_manager">
                                                <option disabled="true" selected="true">Please Select</option>
                                                <option value="sahil">Sahil</option>
                                                <option value="sanjay">Sanjay</option>
                                                <option value="pramod">Pramod</option>
                                            </select>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Employee ID</label>
                                            <select class="form-control" id="employee_id" name="employee_id">
                                                <option disabled="true" selected="true">Please Select</option>
                                                <option value="100">100</option>
                                                <option value="200">200</option>
                                                <option value="300">300</option>
                                            </select>
                                        </div>
                                        
                                        <div class="col-lg-12">
                                        <center>
                                        <button type="submit" id="submit-btn" class="btn btn-primary">Submit</button>
                                        &nbsp;&nbsp;
                                        <input type="reset" id="reset-btn" value="Reset" class="btn btn-success">
                                        </center>
                                        </div>
                                    <!--</form>-->
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
    <script src="<%=request.getContextPath()%>/assets/plugins/morris/raphael-2.1.0.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/plugins/morris/morris.js"></script>
    <script src="<%=request.getContextPath()%>/assets/scripts/dashboard-demo.js"></script>
    <script src="<%=request.getContextPath()%>/assets/SweetAlert2/sweetalert2.min.js"></script>

        <script src="<%= request.getContextPath()%>/ajaxdata/user_Assign.js"></script>

</body>

</html>

