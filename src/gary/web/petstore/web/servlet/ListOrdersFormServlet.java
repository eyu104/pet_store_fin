package gary.web.petstore.web.servlet;

import gary.web.petstore.domain.Account;
import gary.web.petstore.domain.Order;
import gary.web.petstore.service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class ListOrdersFormServlet extends HttpServlet {
    private static final String LIST_ORDER_FORM = "/WEB-INF/jsp/order/listOrders.jsp";
    private static final OrderService orderService = new OrderService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        Account account = (Account) session.getAttribute("loginAccount");
        String username = account.getUsername();
        List<Order> orderList = orderService.getOrdersByUsername(username);
        session.setAttribute("orderList",orderList);


        req.getRequestDispatcher(LIST_ORDER_FORM).forward(req,resp);
    }
}
