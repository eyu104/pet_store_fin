package gary.web.petstore.web.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ContinueOrderServlet extends HttpServlet {
    private static final String SHIP_ORDER_FORM = "/WEB-INF/jsp/order/shippingOrderForm.jsp";
    private static final String CONFIRM_ORDER_FORM = "/WEB-INF/jsp/order/confirmOrderOrder.jsp";
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String isShip = req.getParameter("shippingAddressRequired");
        if (isShip == null){
            req.getRequestDispatcher(CONFIRM_ORDER_FORM).forward(req,resp);
        }
        else if (isShip.equals("on")){
            req.getRequestDispatcher(SHIP_ORDER_FORM).forward(req,resp);
        }

    }
}
