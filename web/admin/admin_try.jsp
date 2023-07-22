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
                    <h1 class="page-header">Dashboard</h1>
                </div>
                <!--End Page Header -->
            </div>

            
            
            <div class="col-lg-3">
                    <div class="panel panel-primary text-center no-boder">
                        <div class="panel-body yellow">
                            <i class="fa fa-bar-chart-o fa-3x"></i>
                            <h3>100 </h3>
                        </div>
                        <div class="panel-footer">
                            <span class="panel-eyecandy-title">New Employees
                            </span>
                        </div>
                    </div>
                    <div class="panel panel-primary text-center no-boder">
                        <div class="panel-body blue">
                            <i class="fa fa-pencil-square-o fa-3x"></i>
                            <h3>3200 </h3>
                        </div>
                        <div class="panel-footer">
                            <span class="panel-eyecandy-title">Total Employees
                            </span>
                        </div>
                    </div>
                    <div class="panel panel-primary text-center no-boder">
                        <div class="panel-body green">
                            <i class="fa fa fa-floppy-o fa-3x"></i>
                            <h3>2400</h3>
                        </div>
                        <div class="panel-footer">
                            <span class="panel-eyecandy-title">New Assets
                            </span>
                        </div>
                    </div>
                </div>
            

            

            <div class="row">
                <div class="col-lg-8">



                    <!--Area chart example -->
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i>Area Chart Example
                            <div class="pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                        Actions
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu pull-right" role="menu">
                                        <li><a href="#">Action</a>
                                        </li>
                                        <li><a href="#">Another action</a>
                                        </li>
                                        <li><a href="#">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="panel-body">
                            <div id="morris-area-chart"></div>
                        </div>

                    </div>
                    <!--End area chart example -->
                    <!--Simple table example -->
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i>Simple Table Example
                            <div class="pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                        Actions
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu pull-right" role="menu">
                                        <li><a href="#">Action</a>
                                        </li>
                                        <li><a href="#">Another action</a>
                                        </li>
                                        <li><a href="#">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Employee ID</th>
                                                    <th>Date</th>
                                                    <th>Time</th>
                                                    <th>Amount</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>3326</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:29 PM</td>
                                                    <td>$321.33</td>
                                                </tr>
                                                <tr>
                                                    <td>3325</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:20 PM</td>
                                                    <td>$234.34</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>

                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!--End simple table example -->

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

</body>

</html>

