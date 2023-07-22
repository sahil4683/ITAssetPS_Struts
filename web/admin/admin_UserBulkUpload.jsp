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
                    <h1 class="page-header">User Bulk Upload</h1>
                </div>
                <!--End Page Header -->
            </div>

            <div class="row">
                
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            User Bulk Upload
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                
                                <div class="col-lg-12">
                                    <form role="form">
                                      
                                        <div class="form-group">
                                            <label>Select Excel File</label>
                                            <input class="form-control" id="user_bulk_data" name="user_bulk_data" type="file" >
                                        </div>
                                        
                                        
                                        
                                        <div class="col-lg-12">
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

