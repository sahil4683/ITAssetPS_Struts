package action.admin;

import action.parameter.Datasource;
import com.opensymphony.xwork2.ActionSupport;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.json.JSONArray;

public class viewUser extends ActionSupport implements ServletRequestAware, ServletResponseAware {

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

        JSONArray array = null;
        JSONArray arr = new JSONArray();

        try (PrintWriter out = response.getWriter()) {

            int i = 0;
            try {
                con = Datasource.getConnection();
                String query = null;
                query = "select employee_id,first_name,last_name,email_id,domain,user_type,reporting_manager from it_login";
                ps = con.prepareStatement(query);
                rs = ps.executeQuery();
                while (rs.next()) {
                    array = new JSONArray();
                    i = i + 1;
                    array.put("<button' class='btn btn-warning fa fa-pencil' onClick='editList(" + rs.getString(1) + ")' ></button>");
                    array.put("<button class='btn btn-danger fa fa-trash' onClick='deleteList(" + rs.getString(1) + ")' ></button>");
                    array.put(i);
                    array.put(rs.getString(1));
                    array.put(rs.getString(2));
                    array.put(rs.getString(3));
                    array.put(rs.getString(4));
                    array.put(rs.getString(5));
                    array.put(rs.getString(6));
                    array.put(rs.getString(7));
                    arr.put(array);
                }
                out.print(arr);

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

    public String deleteUser() {
        PrintWriter out = null;
        int j = 0;
        try {
            out = response.getWriter();
            String employee_id = request.getParameter("employee_id");
            con = Datasource.getConnection();
            ps = con.prepareStatement("delete from it_login where employee_id=? ");
            ps.setString(1, employee_id);
            j = ps.executeUpdate();
            if (j > 0) {
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
            } catch (Exception e) {
                e.printStackTrace();
            }
            out.close();
        }

        return "success";
    }

    public String editUser() {
        JSONArray array = null;
        try (PrintWriter out = response.getWriter()) {
            int i = 0;
            try {
                String employee_id = request.getParameter("employee_id");
                con = Datasource.getConnection();
                String query = null;
                query = "select employee_id,first_name,last_name,email_id,domain,user_type,reporting_manager from it_login where employee_id=?";
                ps = con.prepareStatement(query);
                ps.setString(1, employee_id);
                rs = ps.executeQuery();
                array = new JSONArray();
                if (rs.next()) {
                    array.put("`"
                            + rs.getString(1) + "`"
                            + rs.getString(2) + "`"
                            + rs.getString(3) + "`"
                            + rs.getString(4) + "`"
                            + rs.getString(5) + "`"
                            + rs.getString(6) + "`"
                            + rs.getString(7) + "`");
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
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "success";
    }

    public String updateUser() {
        PrintWriter out = null;
        int j = 0;
        try {
            out = response.getWriter();
            String employee_id = request.getParameter("employee_id");
            String first_name = request.getParameter("first_name");
            String last_name = request.getParameter("last_name");
            String email_id = request.getParameter("email_id");
            String domain = request.getParameter("domain");
            String user_type = request.getParameter("user_type");
            String reporting_manager = request.getParameter("reporting_manager");

            System.out.println("eid " + employee_id);
            con = Datasource.getConnection();
            ps = con.prepareStatement("update it_login set employee_id=?,first_name=?,last_name=?,email_id=?,domain=?,user_type=?,reporting_manager=?  where employee_id=?");
            ps.setString(1, employee_id);
            ps.setString(2, first_name);
            ps.setString(3, last_name);
            ps.setString(4, email_id);
            ps.setString(5, domain);
            ps.setString(6, user_type);
            ps.setString(7, reporting_manager);
            ps.setString(8, employee_id);

            j = ps.executeUpdate();
            if (j > 0) {
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
