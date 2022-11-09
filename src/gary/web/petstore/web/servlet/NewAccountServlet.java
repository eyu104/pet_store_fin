package gary.web.petstore.web.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class NewAccountServlet extends HttpServlet {
    private String username;
    private String password;
//    private String password;
//    private String password;
//    private String password;
//    private String password;
//    private String password;
//    private String password;
//    private String password;
//    private String password;
    private String Msg;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        username = req.getParameter("username");
        password = req.getParameter("password");
        resp.sendRedirect("mainForm");
    }

    private boolean validate(){


        if (this.username == null || this.username.equals("")){
            this.Msg = "用户名不能为空";
            return false;
        }
        if (this.password == null || this.password.equals("")){
            this.Msg = "密码不能为空";
            return false;
        }
        return true;
    }
}
