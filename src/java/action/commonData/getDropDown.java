package action.commonData;

import action.parameter.Datasource;
import com.opensymphony.xwork2.ActionSupport;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.json.JSONArray;

public class getDropDown extends ActionSupport implements ServletRequestAware, ServletResponseAware {

    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    PreparedStatement ps = null;

    HttpServletRequest request;
    HttpServletResponse response;

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public HttpServletResponse getResponse() {
        return response;
    }

    public void setResponse(HttpServletResponse response) {
        this.response = response;
    }

    public String execute() {
        return "success";
    }

    public String getManager() {
        PrintWriter out = null;
        JSONArray array = null;
        try {
            out = response.getWriter();
            con = Datasource.getConnection();
            ps = con.prepareStatement("select distinct reporting_manager from it_login");
            rs = ps.executeQuery();
            System.out.println("PS"+ps);
            array = new JSONArray();
            while (rs.next()) {
                array.put(rs.getString(1));
            }
            out.print(array);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            out.close();
        }
        return "success";
    }
    
    public String getManagerByDomain() {
        PrintWriter out = null;
        JSONArray array = null;
        try {
            out = response.getWriter();
            String domain = request.getParameter("domain");
            con = Datasource.getConnection();
            ps = con.prepareStatement("select distinct first_name from it_login where domain=? and user_type='Reporting Manager' ");
            ps.setString(1, domain);
            rs = ps.executeQuery();
            array = new JSONArray();
            while (rs.next()) {
                array.put(rs.getString(1));
            }
            out.print(array);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            out.close();
        }
        return "success";
    }

    public String getEmployee() {
        PrintWriter out = null;
        JSONArray array = null;
        try {
            out = response.getWriter();
            con = Datasource.getConnection();
            ps = con.prepareStatement("select distinct employee_id from it_login");
            rs = ps.executeQuery();
            array = new JSONArray();
            while (rs.next()) {
                array.put(rs.getString(1));
            }
            out.print(array);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            out.close();
        }
        return "success";
    }
    
    public String getEmployeeByManager() {
        PrintWriter out = null;
        JSONArray array = null;
        try {
            out = response.getWriter();
            String reporting_manager = request.getParameter("reporting_manager");
            con = Datasource.getConnection();
            ps = con.prepareStatement("select distinct employee_id from it_login where reporting_manager=?");
            ps.setString(1, reporting_manager);  
            rs = ps.executeQuery();
            array = new JSONArray();
            while (rs.next()) {
                array.put(rs.getString(1));
            }
            out.print(array);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            out.close();
        }
        return "success";
    }
    
    public String getInvoiceNumber() {
        PrintWriter out = null;
        JSONArray array = null;
        try {
            out = response.getWriter();
            con = Datasource.getConnection();
            ps = con.prepareStatement("select distinct invoice_number from it_invoice");
            rs = ps.executeQuery();
            array = new JSONArray();
            while (rs.next()) {
                array.put(rs.getString(1));
            }
            out.print(array);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            out.close();
        }
        return "success";
    }
    
    public String getSerialNoByInvoiceNo() {
        System.out.println("getfy");
        PrintWriter out = null;
        JSONArray array = null;
        try {
            out = response.getWriter();
            String invoice_number = request.getParameter("invoice_number");
            con = Datasource.getConnection();
            ps = con.prepareStatement("select distinct serial_number from it_invoice where invoice_number=?");
            ps.setString(1, invoice_number);  
            rs = ps.executeQuery();
            System.out.println("PD: "+ps);
            array = new JSONArray();
            while (rs.next()) {
                array.put(rs.getString(1));
            }
            out.print(array);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            out.close();
        }
        return "success";
    }
    
    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        this.request = hsr;
    }

    @Override
    public void setServletResponse(HttpServletResponse hsr) {
        this.response = hsr;
    }

}
