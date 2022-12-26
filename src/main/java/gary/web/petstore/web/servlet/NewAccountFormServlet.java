package gary.web.petstore.web.servlet;

import gary.web.petstore.service.AccountService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class NewAccountFormServlet extends HttpServlet {
    private static final String NEW_ACCOUNT_FORM = "/WEB-INF/jsp/account/newAccountForm.jsp";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AccountService accountService = new AccountService();
        List<String> languages = accountService.getLanguages();
        List<String> categories = accountService.getCategories();
        HttpSession session = req.getSession();
        session.setAttribute("loginAccount",null);
        session.setAttribute("languages",languages);
        session.setAttribute("categories",categories);
        req.getRequestDispatcher(NEW_ACCOUNT_FORM).forward(req,resp);

    }
}
