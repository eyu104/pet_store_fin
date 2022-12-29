package gary.web.petstore.web.servlet;

import gary.web.petstore.domain.Order;
import gary.web.petstore.service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

public class ViewOrderFormServlet extends HttpServlet {
    private static final String VIEW_ORDER_FORM = "/WEB-INF/jsp/order/viewOrder.jsp";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        int orderId = Integer.valueOf(req.getParameter("orderId"));
        OrderService orderService = new OrderService();
        Order order = null;
        try {
            order = orderService.getOrder(orderId);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        session.setAttribute("order",order);
        req.getRequestDispatcher(VIEW_ORDER_FORM).forward(req,resp);
    }
}
