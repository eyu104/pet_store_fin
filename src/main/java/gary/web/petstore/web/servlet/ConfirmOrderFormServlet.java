package gary.web.petstore.web.servlet;

import gary.web.petstore.domain.Cart;
import gary.web.petstore.domain.Order;
import gary.web.petstore.service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ConfirmOrderFormServlet extends HttpServlet {
    private static final String CONFIRM_ORDER_FORM = "/WEB-INF/jsp/order/viewOrder.jsp";
    public static Boolean  cartIsEmpty = false;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        OrderService orderService = new OrderService();
        Order order = (Order) session.getAttribute("order");
        orderService.insertOrder(order);



        session.setAttribute("cartIsEmpty",cartIsEmpty);
        cartIsEmpty = true;
        session.setAttribute("cart" ,null);
        req.getRequestDispatcher(CONFIRM_ORDER_FORM).forward(req,resp);
    }
}
