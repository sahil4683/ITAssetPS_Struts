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
                        <h1 class="page-header">Add Member</h1>
                    </div>
                    <!--End Page Header -->
                </div>

                <div class="row">

                    <div class="col-lg-3"></div>
                    <div class="col-lg-6">
                        <!-- Form Elements -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Add User Details
                            </div>
                            <div class="panel-body">
                                <div class="row">

                                    <div class="col-lg-12">
                                        <!--<form role="form">-->

                                            <div class="form-group">
                                                <label>Employee ID</label>
                                                <input class="form-control" id="employee_id" name="employee_id" placeholder="Enter Employee ID">
                                            </div>

                                            <div class="form-group">
                                                <label>First Name</label>
                                                <input class="form-control" id="first_name" name="first_name" placeholder="Enter First Name">
                                            </div>
                                            <div class="form-group">
                                                <label>Last Name</label>
                                                <input class="form-control" id="last_name" name="last_name" placeholder="Enter Last Name">
                                            </div>
                                            <div class="form-group">
                                                <label>Email ID</label>
                                                <input class="form-control" id="email_id" name="email_id" placeholder="Enter Email ID">
                                            </div>

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

                                            <div class="col-lg-12">
                                                <center>
                                                    <button type="submit" id="submit-btn" class="btn btn-primary">Submit</button>
                                                    &nbsp;&nbsp;
                                                    <button type="reset" id="reset-btn" class="btn btn-success">Reset</button>
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
        <script src="<%=request.getContextPath()%>/assets/SweetAlert2/sweetalert2.min.js"></script>

        <script src="<%= request.getContextPath()%>/ajaxdata/user_Add.js"></script>
    </body>

</html>

