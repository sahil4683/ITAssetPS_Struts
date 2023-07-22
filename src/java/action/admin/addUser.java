package action.admin;

import action.parameter.Datasource;
import com.opensymphony.xwork2.ActionSupport;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

public class addUser extends ActionSupport implements ServletRequestAware, ServletResponseAware {

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
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String email_id = request.getParameter("email_id");
        String domain = request.getParameter("domain");
        String user_type = request.getParameter("user_type");
        PrintWriter out = null;
        int sr_no = 0;
        try {
            out = response.getWriter();

            try {
                con = Datasource.getConnection();
                String query = null;
                query = "Select max(sr_no) from it_login";
                ps = con.prepareStatement(query);
                rs = ps.executeQuery();
                if (rs.next()) {
                    sr_no = rs.getInt(1) + 1;
                } else {
                    sr_no = 1;
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

            try {
                con = Datasource.getConnection();
                String query = null;
                query = "Select employee_id,email_id from it_login where employee_id='" + employee_id + "' AND email_id='" + email_id + "'";
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
                query = "INSERT INTO it_login(sr_no,employee_id,first_name,last_name,email_id,employee_password,domain,user_type) VALUES(?,?,?,?,?,?,?,?)";
                ps = con.prepareStatement(query);
                ps.setInt(1, sr_no);
                ps.setString(2, employee_id);
                ps.setString(3, first_name);
                ps.setString(4, last_name);
                ps.setString(5, email_id);
                ps.setString(6, "123456789");
                ps.setString(7, domain);
                ps.setString(8, user_type);
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
        } finally {
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
