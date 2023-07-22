package action;

import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

public class Struts_Sample extends ActionSupport implements ServletRequestAware, ServletResponseAware {

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

    @Override
    public void setServletRequest(HttpServletRequest req) {
        this.request = req;
    }

    @Override
    public void setServletResponse(HttpServletResponse res) {
        this.response = res;
    }
}
