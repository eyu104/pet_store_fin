package gary.web.petstore.web.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class GetCheckcodeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String checkcode;
        HttpSession session = req.getSession();
        checkcode = (String) session.getAttribute("checkCode");

        resp.setContentType("text/plain");
        PrintWriter out = resp.getWriter();
        out.print(checkcode);
    }
}
