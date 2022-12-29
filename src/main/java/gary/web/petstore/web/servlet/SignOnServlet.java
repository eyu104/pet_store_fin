package gary.web.petstore.web.servlet;

import gary.web.petstore.domain.Account;
import gary.web.petstore.domain.Product;
import gary.web.petstore.service.AccountService;
import gary.web.petstore.service.CatalogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

public class SignOnServlet extends HttpServlet {

    private String username;
    private String password;
    private String secode;
    private String Msg;
    private static final String SIGN_ON_FORM = "/WEB-INF/jsp/account/signon.jsp";
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        username = req.getParameter("username");
        password = req.getParameter("password");
        secode= req.getParameter("secode");

        HttpSession sessionsecode = req.getSession();
        String checkcode=(String)sessionsecode.getAttribute("checkCode");

        if (!validate()){
            req.setAttribute("signOnMsg",Msg);
            req.getRequestDispatcher(SIGN_ON_FORM).forward(req,resp);
        }else{
            if (!checkcode.equalsIgnoreCase(secode)){
                this.Msg="验证码错误";
                req.setAttribute("signOnMsg",Msg);
                req.getRequestDispatcher(SIGN_ON_FORM).forward(req,resp);
            }
            AccountService accountService = new AccountService();
            Account loginAccount = accountService.getAccount(username,password);
            List<String> languages = accountService.getLanguages();
            if (loginAccount == null){
                this.Msg = "用户名或密码错误";
                req.getRequestDispatcher(SIGN_ON_FORM).forward(req,resp);
            }else {
                loginAccount.setPassword(null);
                HttpSession session = req.getSession();
                List<String> categories = accountService.getCategories();
                session.setAttribute("loginAccount",loginAccount);
                session.setAttribute("languages",languages);
                session.setAttribute("categories",categories);
                if (loginAccount.isListOption()){
                    CatalogService catalogService = new CatalogService();
                    List<Product> myList = catalogService.getProductListByCategory(loginAccount.getFavouriteCategoryId());
                    session.setAttribute("myList",myList);
                }
                resp.sendRedirect("mainForm");
            }
        }
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

        else if(this.secode==null||this.secode.equals("")){
            this.Msg="请输入验证码";
            return false;
        }
        return true;
    }
}
