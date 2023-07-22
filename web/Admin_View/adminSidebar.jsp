<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>

        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="#" class="brand-link">
                <center><span class="brand-text font-weight-bold">IT Assest <br> Management</span></center>
            </a>


            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="<%=request.getContextPath()%>/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <a href="#" class="d-block">Administrator</a>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <li class="nav-item has-treeview menu-open">
                            <a href="<%=request.getContextPath()%>/Admin_View/adminDashboard.jsp" class="nav-link active">
                                <i class="nav-icon fa fa-dashboard"></i>
                                <p>
                                    Dashboard
                                </p>
                            </a>    
                        </li>

                        <li class="nav-item has-treeview">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fa fa-user-circle-o"></i>
                                <p>
                                    User Details
                                    <i class="right fa fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="<%=request.getContextPath()%>/Admin_View/addUser.jsp" class="nav-link">
                                        <i class="fa fa-user nav-icon"></i>
                                        <p>Add Members</p>
                                    </a>
                                </li>
                                
                                <li class="nav-item">
                                    <a href="<%=request.getContextPath()%>/Admin_View/assignUser.jsp" class="nav-link">
                                        <i class="fa fa-forumbee nav-icon"></i>
                                        <p>Assign Member</p>
                                    </a>
                                </li>
                                
                                <li class="nav-item">
                                    <a href="<%=request.getContextPath()%>/Admin_View/viewUser.jsp" class="nav-link">
                                        <i class="fa fa-table nav-icon"></i>
                                        <p>View Member</p>
                                    </a>
                                </li>   
                            </ul>
                        </li>
                    </ul>
                    
                    
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <li class="nav-item has-treeview">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fa fa-wpforms"></i>
                                <p>
                                    Asset Details
                                    <i class="right fa fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="<%=request.getContextPath()%>/Admin_View/addInvoice.jsp" class="nav-link">
                                        <i class="fa fa-edit nav-icon"></i>
                                        <p>Add Invoice</p>
                                    </a>
                                </li>
                                
                                <li class="nav-item">
                                    <a href="<%=request.getContextPath()%>/Admin_View/addAssetEntry.jsp" class="nav-link">
                                        <i class="fa fa-edit nav-icon"></i>
                                        <p>Asset Entry Form</p>
                                    </a>
                                </li>  
                            </ul>
                        </li>
                    </ul>
                    
                    
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <li class="nav-item has-treeview">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fa fa-upload"></i>
                                <p>
                                    Bulk Upload
                                    <i class="right fa fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="<%=request.getContextPath()%>/Admin_View/uploadUser.jsp" class="nav-link">
                                        <i class="fa fa-circle-o-notch nav-icon"></i>
                                        <p>User Bulk Upload</p>
                                    </a>
                                </li>
                                
                                <li class="nav-item">
                                    <a href="<%=request.getContextPath()%>/Admin_View/uploadAsset.jsp" class="nav-link">
                                        <i class="fa fa-circle-o-notch nav-icon"></i>
                                        <p>Asset Bulk Upload</p>
                                    </a>
                                </li>  
                            </ul>
                        </li>
                    </ul>
                    
                    
                </nav>
                <!-- /.sidebar-menu -->
            </div>
        </aside>
    </body>
</html>
