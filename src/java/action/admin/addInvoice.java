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

public class addInvoice extends ActionSupport implements ServletRequestAware, ServletResponseAware {

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

    @Override
    public String execute() {

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
        PrintWriter out = null;
        int sr_no = 0;
        try {
            out = response.getWriter();

            try {
                con = Datasource.getConnection();
                String query = null;
                query = "Select max(sr_no) from it_invoice";
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
                query = "Select invoice_number,serial_number from it_invoice where invoice_number='" + invoice_number + "' AND serial_number='" + serial_number + "'";
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
                query = "INSERT INTO it_invoice(sr_no,invoice_number,vendor,manufacture,product_name,model_number,serial_number,purchase_rate,quantity,total_amount,purchase_date,warranty_date) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
                ps = con.prepareStatement(query);
                ps.setInt(1, sr_no);
                ps.setString(2, invoice_number);
                ps.setString(3, vendor);
                ps.setString(4, manufacture);
                ps.setString(5, product_name);
                ps.setString(6, model_number);
                ps.setString(7, serial_number);
                ps.setString(8, purchase_rate);
                ps.setString(9, quantity);
                ps.setString(10, total_amount);
                ps.setString(11, purchase_date);
                ps.setString(12, warranty_date);

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

    public String viewInvoice() {
        JSONArray array = null;
        JSONArray arr = new JSONArray();

        try (PrintWriter out = response.getWriter()) {

            int i = 0;
            try {
                con = Datasource.getConnection();
                String query = null;
                query = "select sr_no,invoice_number,vendor,manufacture,product_name,model_number,serial_number,purchase_rate,quantity,total_amount,purchase_date,warranty_date from it_invoice";
                ps = con.prepareStatement(query);
                rs = ps.executeQuery();
                while (rs.next()) {
                    array = new JSONArray();
                    i = i + 1;
                    array.put("<button' class='btn btn-warning fa fa-pencil' onClick='editList(" + rs.getString(1) + ")' ></button>");
                    array.put("<button class='btn btn-danger fa fa-trash' onClick='deleteList(" + rs.getString(1) + ")' ></button>");
                    array.put(i);
                    array.put(rs.getString(2));
                    array.put(rs.getString(3));
                    array.put(rs.getString(4));
                    array.put(rs.getString(5));
                    array.put(rs.getString(6));
                    array.put(rs.getString(7));
                    array.put(rs.getString(8));
                    array.put(rs.getString(9));
                    array.put(rs.getString(10));
                    array.put(rs.getString(11));
                    array.put(rs.getString(12));

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

    public String editInvoice() {
        JSONArray array = null;
        try (PrintWriter out = response.getWriter()) {
            int i = 0;
            try {
                String sr_no = request.getParameter("sr_no");
                con = Datasource.getConnection();
                String query = null;
                query = "select invoice_number,vendor,manufacture,product_name,model_number,serial_number,purchase_rate,quantity,total_amount,purchase_date,warranty_date from it_invoice where sr_no=?";
                ps = con.prepareStatement(query);
                ps.setString(1, sr_no);
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
                            + rs.getString(7) + "`"
                            + rs.getString(8) + "`"
                            + rs.getString(9) + "`"
                            + rs.getString(10) + "`"
                            + rs.getString(11) + "`"
                            + sr_no + "`"
                    );
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

    public String updateInvoice() {
        PrintWriter out = null;
        int j = 0;
        try {
            out = response.getWriter();
            String sr_no = request.getParameter("sr_no");
            String invoice_number = request.getParameter("invoice_number_u");
            String vendor = request.getParameter("vendor_u");
            String manufacture = request.getParameter("manufacture_u");
            String product_name = request.getParameter("product_name_u");
            String model_number = request.getParameter("model_number_u");
            String serial_number = request.getParameter("serial_number_u");
            String purchase_rate = request.getParameter("purchase_rate_u");
            String quantity = request.getParameter("quantity_u");
            String total_amount = request.getParameter("total_amount_u");
            String purchase_date = request.getParameter("purchase_date_u");
            String warranty_date = request.getParameter("warranty_date_u");
            System.out.println("invoice_number"+invoice_number);
            con = Datasource.getConnection();
            ps = con.prepareStatement("update it_invoice set invoice_number=?,vendor=?,manufacture=?,product_name=?,model_number=?,serial_number=?,purchase_rate=?,quantity=?,total_amount=?,purchase_date=?,warranty_date=? where sr_no=?");

            ps.setString(1, invoice_number);
            ps.setString(2, vendor);
            ps.setString(3, manufacture);
            ps.setString(4, product_name);
            ps.setString(5, model_number);
            ps.setString(6, serial_number);
            ps.setString(7, purchase_rate);
            ps.setString(8, quantity);
            ps.setString(9, total_amount);
            ps.setString(10, purchase_date);
            ps.setString(11, warranty_date);
            ps.setString(12, sr_no);
            
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
    
    
    public String deleteInvoice() {
        PrintWriter out = null;
        int j = 0;
        try {
            out = response.getWriter();
            String sr_no = request.getParameter("sr_no");
            con = Datasource.getConnection();
            ps = con.prepareStatement("delete from it_invoice where sr_no=? ");
            ps.setString(1, sr_no);
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
