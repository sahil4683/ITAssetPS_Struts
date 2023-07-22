package action.admin;

import action.parameter.Datasource;
import java.io.FileInputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import com.opensymphony.xwork2.ActionSupport;

import java.io.File;
import java.io.IOException;
import static java.lang.System.out;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import static java.util.Calendar.getInstance;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.DocumentBuilderFactory;
import static javax.xml.parsers.DocumentBuilderFactory.newInstance;
import static org.apache.commons.io.FileUtils.copyFile;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

public class uploadUser extends ActionSupport implements ServletRequestAware, SessionAware {

    static String username11 = null;
    private File myFile;
    private String myFileContentType;
    private String myFileFileName;
    private String destPath;
    static Connection connection = null;
    static PreparedStatement preparedStatement = null;
    static PreparedStatement preparedStatement2 = null;
    static ResultSet resultSet = null;
    static String sql = null;
    static int result = 0;
    static boolean flag = false;
    static Connection connection2 = null;
    static ArrayList<uploadUserBean> import_list = null;
    HttpServletRequest request;

    public HttpServletRequest getServletRequest() {
        return request;
    }

    public void setServletRequest(HttpServletRequest req) {
        this.request = req;
    }

    public File getMyFile() {
        return myFile;
    }

    public void setMyFile(File myFile) {
        this.myFile = myFile;
    }

    public String getMyFileContentType() {
        return myFileContentType;
    }

    public void setMyFileContentType(String myFileContentType) {
        this.myFileContentType = myFileContentType;
    }

    public String getMyFileFileName() {
        return myFileFileName;
    }

    public void setMyFileFileName(String myFileFileName) {
        this.myFileFileName = myFileFileName;
    }
    private SessionMap<String, Object> sessionMap;

    public SessionMap<String, Object> getSessionMap() {
        return sessionMap;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        sessionMap = (SessionMap) map;

    }

    public void setSessionMap(SessionMap<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    @Override
    public String execute() throws SQLException {
        out.println("upload shhet into table ");
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement pst = null;

        try {
            out.println("Src File name: " + myFile);
            out.println("Dst File name: " + myFileFileName);
            File destFile = new File(destPath, myFileFileName);
            copyFile(myFile, destFile);
            out.println("clear");
        } catch (IOException e) {
            out.println("Error for io  " + e);
            return ERROR;
        }
        Vector dataHolder = read(myFile);
        saveToDatabase(dataHolder);
        return SUCCESS;
    }

    public static Vector read(File fileName) {
        Vector cellVectorHolder = new Vector();
        DocumentBuilderFactory docfactory = newInstance();
        docfactory.setIgnoringElementContentWhitespace(true);
        try {
            FileInputStream myInput = new FileInputStream(fileName);
            XSSFWorkbook myWorkBook = new XSSFWorkbook(myInput);
            XSSFSheet mySheet = myWorkBook.getSheetAt(0);
            Iterator rowIter = mySheet.rowIterator();
            while (rowIter.hasNext()) {
                XSSFRow myRow = (XSSFRow) rowIter.next();
                if (myRow.getRowNum() == 0) {
                    continue;
                }
                Iterator cellIter = myRow.cellIterator();
                List list = new ArrayList();
                while (cellIter.hasNext()) {
                    XSSFCell myCell = (XSSFCell) cellIter.next();
                    list.add(myCell);
                }
                cellVectorHolder.addElement(list);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cellVectorHolder;
    }

    private static void saveToDatabase(Vector dataHolder) throws SQLException {

        import_list = new ArrayList<>();
        uploadUserBean newImport = null;

        DateFormat dateFormat = new SimpleDateFormat("dd-MMM-yy");
        Calendar cal = getInstance();
        out.println(dateFormat.format(cal.getTime()));

        int srno1 = 0;

        String employee_id = null;
        String first_name = null;
        String last_name = null;
        String email_id = null;
        String domain = null;
        String user_type = null;
        String reporting_manager = null;

        String createdDate1 = dateFormat.format(cal.getTime());
        out.println("Current Date is: " + createdDate1);

        int j = 0;
        for (Iterator iterator = dataHolder.iterator(); iterator.hasNext();) {
            srno1 = j++;
            List list = (List) iterator.next();

            employee_id = list.get(0).toString();
            first_name = list.get(1).toString();
            last_name = list.get(2).toString();
            email_id= list.get(3).toString();
            domain = list.get(4).toString();
            user_type = list.get(5).toString();
            reporting_manager = list.get(6).toString();
            
            newImport = new uploadUserBean();

            out.println("My interger " + j);

            try {

                newImport.employee_id = employee_id;
                newImport.first_name = first_name;
                newImport.last_name = last_name;
                newImport.email_id = email_id;
                newImport.domain = domain;
                newImport.user_type = user_type;
                newImport.reporting_manager = reporting_manager;
                
                import_list.add(newImport);

            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        out.println("size:" + import_list.size());

        connection = Datasource.getConnection();
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        int sr_no = 0;

        try {
            con = Datasource.getConnection();
            String query = null;
            query = "Select max(sr_no) from it_login";
            out.println("query " + query);
            pst = con.prepareStatement(query);
            rs = pst.executeQuery();

            if (rs.next()) {
                sr_no = rs.getInt(1) + 1;
            } else {
                sr_no = 1;
            }
            out.println("login max sr_no............ " + sr_no);
        } catch (Exception e) {
            out.println("Exception in max sr_no " + e);
        } finally {
            if (con != null) {
                con.close();
            }
            if (pst != null) {
                pst.close();
            }
            if (rs != null) {
                rs.close();
            }
        }

        try {
            sql = "insert into it_login(sr_no,employee_id,first_name,last_name,email_id,domain,user_type,reporting_manager,employee_password) values(?,?,?,?,?,?,?,?,?)";
            preparedStatement = connection.prepareStatement(sql);

            for (int i = 0; i < import_list.size(); i++) {
                preparedStatement.setString(1, Integer.toString(sr_no));
                preparedStatement.setString(2, import_list.get(i).getEmployee_id());
                preparedStatement.setString(3, import_list.get(i).getFirst_name());
                preparedStatement.setString(4, import_list.get(i).getLast_name());
                preparedStatement.setString(5, import_list.get(i).getEmail_id());
                preparedStatement.setString(6, import_list.get(i).getDomain());
                preparedStatement.setString(7, import_list.get(i).getUser_type());
                preparedStatement.setString(8, import_list.get(i).getReporting_manager());
                preparedStatement.setString(9, "123456");
                
                sr_no = sr_no + 1;
                preparedStatement.addBatch();
            }
            int[] count = preparedStatement.executeBatch();
            out.println("Insert Record : " + count.length);
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
        }
    }
}
