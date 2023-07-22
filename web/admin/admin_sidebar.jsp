<%-- 
    Document   : admin_sidebar
    Created on : 20 Jul, 2019, 5:41:38 PM
    Author     : Demon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->
            <div class="sidebar-collapse">
                <!-- side-menu -->
                <ul class="nav" id="side-menu">
                    <li>
                        <!-- user image section-->
                        <div class="user-section">
                            <div class="user-section-inner">
                                <img src="<%=request.getContextPath()%>/assets/img/user.jpg" alt="">
                            </div>
                            <div class="user-info">
                                <div><strong>Admin</strong></div>
                                <div class="user-text-online">
                                    <span class=""></span>&nbsp;Logged in
                                </div>
                            </div>
                        </div>
                        <!--end user image section-->
                    </li>
                    <li class="sidebar-search">
                        <!-- search section-->
<!--                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>-->
                        <!--end search section-->
                    </li>
                    <li class="selected">
                        <a href="<%=request.getContextPath()%>/admin/admin_Dashboard.jsp"><i class="fa fa-dashboard fa-fw"></i>Dashboard</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-user fa-fw"></i> Add Member <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="fa fa-arrow-right" href="<%=request.getContextPath()%>/admin/user_Add.jsp"> Add Member</a>
                            </li>
                            <li>
                                <a class="fa fa-arrow-right" href="<%=request.getContextPath()%>/admin/user_Assign.jsp"> Assign Member</a>
                            </li>
                            <li>
                                <a class="fa fa-arrow-right" href="<%=request.getContextPath()%>/user/user_View.jsp"> View Member</a>
                            </li>
                        </ul>
                        <!-- second-level-items -->
                    </li>
                     <li>
                        <a href="#"><i class="fa fa-folder fa-fw"></i> Asset Details <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="fa fa-arrow-right" href="<%=request.getContextPath()%>/admin/admin_InvoiceEntry.jsp"> Add Invoice</a>
                            </li>
                            <li>
                                <a class="fa fa-arrow-right" href="<%=request.getContextPath()%>/admin/admin_AssetsEntry.jsp"> Asset Entry Form</a>
                            </li>
                            
                        </ul>
                        <!-- second-level-items -->
                    </li>
                    
                    <li>
                        <a href="#"><i class="fa fa-upload fa-fw"></i> Bulk Upload <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="fa fa-arrow-right" href="<%=request.getContextPath()%>/admin/admin_UserBulkUpload.jsp"> User Bulk Upload</a>
                            </li>
                            <li>
                                <a class="fa fa-arrow-right" href="<%=request.getContextPath()%>/admin/admin_AssetsBulkUpload.jsp"> Asset Bulk Upload</a>
                            </li>
                            
                        </ul>
                        <!-- second-level-items -->
                    </li>
                    
                    <li>
                        <a href="#"><i class="fa fa-xing fa-fw"></i> Reports <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="fa fa-arrow-right" href="<%=request.getContextPath()%>/admin/admin_Dashboard.jsp"> Report 1</a>
                            </li>
                            <li>
                                <a class="fa fa-arrow-right" href="<%=request.getContextPath()%>/admin/admin_Dashboard.jsp"> Report 2</a>
                            </li>
                            <li>
                                <a class="fa fa-arrow-right" href="<%=request.getContextPath()%>/admin/admin_Dashboard.jsp"> Report 3</a>
                            </li>
                            
                            
                        </ul>
                        <!-- second-level-items -->
                    </li>
                    
                    
                </ul>
                <!-- end side-menu -->
            </div>
            <!-- end sidebar-collapse -->
        </nav>
    </body>
</html>
