package action.admin;

import action.parameter.Datasource;
import com.opensymphony.xwork2.ActionSupport;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import static java.util.Calendar.getInstance;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.json.JSONArray;

public class addAssetEntry extends ActionSupport implements ServletRequestAware, ServletResponseAware {

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
        String reporting_manager = request.getParameter("reporting_manager");
        String invoice_number = request.getParameter("invoice_number");
        String vendor = request.getParameter("vendor");
        String manufacture = request.getParameter("manufacture");
        String product_name = request.getParameter("product_name");
        String model_number = request.getParameter("model_number");
        String serial_number = request.getParameter("serial_number");
        String purchase_rate = request.getParameter("purchase_rate");
        String quantity = request.getParameter("quantity");
        String total_amount = request.getParameter("total_amount");
        String purchase_date = request.getParameter("purchase_date");
        String warranty_date = request.getParameter("warranty_date");
        String assets_number = request.getParameter("assets_number");
        String assets_tag = request.getParameter("assets_tag");
        String remark = request.getParameter("remark");

        DateFormat dateFormat = new SimpleDateFormat("dd-MMM-yy");
        Calendar cal = getInstance();
        out.println(dateFormat.format(cal.getTime()));
        String createdDate1 = dateFormat.format(cal.getTime());

        PrintWriter out = null;
        int sr_no = 0;
        try {
            out = response.getWriter();

            try {
                con = Datasource.getConnection();
                String query = null;
                query = "Select max(sr_no) from it_assets";
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
                query = "Select employee_id,assets_number from it_assets where employee_id='" + employee_id + "' AND assets_number='" + assets_number + "'";
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
                query = "insert into it_assets(sr_no,employee_id,first_name,last_name,email_id,domain,reporting_manager,invoice_number,vendor,manufacture,product_name,model_number,serial_number,purchase_rate,quantity,total_amount,purchase_date,warranty_date,assets_number,assets_tag,remark,created_date) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                ps = con.prepareStatement(query);
                ps.setInt(1, sr_no);
                ps.setString(2, employee_id);
                ps.setString(3, first_name);
                ps.setString(4, last_name);
                ps.setString(5, email_id);
                ps.setString(6, domain);
                ps.setString(7, reporting_manager);
                ps.setString(8, invoice_number);
                ps.setString(9, vendor);
                ps.setString(10, manufacture);
                ps.setString(11, product_name);
                ps.setString(12, model_number);
                ps.setString(13, serial_number);
                ps.setString(14, purchase_rate);
                ps.setString(15, quantity);
                ps.setString(16, total_amount);
                ps.setString(17, purchase_date);
                ps.setString(18, warranty_date);
                ps.setString(19, assets_number);
                ps.setString(20, assets_tag);
                ps.setString(21, remark);
                ps.setString(22, createdDate1);

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

    public String getDetailsByEmployee() {

        PrintWriter out = null;
        JSONArray array = null;
        try {
            out = response.getWriter();
            String employee_id = request.getParameter("employee_id");
            con = Datasource.getConnection();
            ps = con.prepareStatement("select first_name,last_name,email_id from it_login where employee_id=?");
            ps.setString(1, employee_id);
            rs = ps.executeQuery();
            System.out.println("ps: " + ps);
            array = new JSONArray();
            while (rs.next()) {
                array.put(rs.getString(1));
                array.put(rs.getString(2));
                array.put(rs.getString(3));
            }
            System.out.println("Array: " + array);
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

    public String getDetailsBySerialNo() {
        PrintWriter out = null;
        JSONArray array = null;
        try {
            out = response.getWriter();
            String serial_number = request.getParameter("serial_number");
            con = Datasource.getConnection();
            ps = con.prepareStatement("select vendor,manufacture,product_name,model_number,purchase_rate,quantity,total_amount,purchase_date,warranty_date from it_invoice where serial_number=?");
            ps.setString(1, serial_number);
            rs = ps.executeQuery();
            array = new JSONArray();
            while (rs.next()) {
                array.put(rs.getString(1));
                array.put(rs.getString(2));
                array.put(rs.getString(3));

                array.put(rs.getString(4));
                array.put(rs.getString(5));
                array.put(rs.getString(6));

                array.put(rs.getString(7));
                array.put(rs.getString(8));
                array.put(rs.getString(9));
            }
            System.out.println("Array: " + array);
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
