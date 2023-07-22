package action;

import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.ServletException;

public class sample_java_class extends ActionSupport {

    @Override
    public String execute() throws ServletException {
        return SUCCESS;
    }

    public String insert_Data() {
        return SUCCESS;
    }

    public String edit_Data() {
        return SUCCESS;
    }

    public String delete_Data() {
        return SUCCESS;
    }

    public String load_table() {
        return SUCCESS;
    }

    public String load_text_field() {
        return SUCCESS;
    }

    public String load_dropdown() {
        return SUCCESS;
    }

    public String load_multiselect() {
        return SUCCESS;
    }

}
