package action.admin;

import action.parameter.Datasource;
import com.opensymphony.xwork2.ActionSupport;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

public class assignUser extends ActionSupport implements ServletRequestAware, ServletResponseAware {

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

        String employee_id = request.getParameter("employee_id");
        String domain = request.getParameter("domain");
        String reporting_manager = request.getParameter("reporting_manager");
        try (PrintWriter out = response.getWriter()) {
            
            
             try {
                con = Datasource.getConnection();
                String query = null;
                query = "Select employee_id,reporting_manager from it_login where employee_id='" + employee_id + "' AND reporting_manager='" + reporting_manager + "'";
                ps = con.prepareStatement(query);
                rs = ps.executeQuery();
                if (rs.next()) {
                    out.print("exist");   
                    out.close();
                }
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
            }
            
            
            int i = 0;
            try {
                con = Datasource.getConnection();
                String query = null;
                query = "UPDATE it_login SET domain=?, reporting_manager=? WHERE employee_id=? ";
                ps = con.prepareStatement(query);
                
                ps.setString(1, domain);
                ps.setString(2, reporting_manager);
                ps.setString(3, employee_id);
                
                i = ps.executeUpdate();
                if (i > 0) {
                    out.print("success");
                    out.close();
                } else {
                    out.print("error");
                    out.close();
                }
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
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
            
            
            
            
            
        } catch (Exception e) {
            e.printStackTrace();
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
