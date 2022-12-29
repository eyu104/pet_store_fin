package gary.web.petstore.web.servlet;

import gary.web.petstore.domain.Account;
import gary.web.petstore.service.AccountService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

public class AccountIsVaildServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        AccountService accountService = new AccountService();
        resp.setContentType("text/plain");
        PrintWriter out = resp.getWriter();
        Account account = accountService.getAccountByUsername(username);

        if (account != null){
            out.print("1");
        }else {
            out.print("0");
        }
    }
}
