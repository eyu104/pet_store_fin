package gary.web.petstore.web.servlet;

import gary.web.petstore.domain.Account;
import gary.web.petstore.domain.Cart;
import gary.web.petstore.domain.Order;
import gary.web.petstore.service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class NewOrderFormServlet extends HttpServlet {
    private static final String NEWORDER_FORM = "/WEB-INF/jsp/order/newOrder.jsp";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        OrderService orderService = new OrderService();
        HttpSession session = req.getSession();
        Account account = (Account) session.getAttribute("loginAccount");





        if (account == null){
            resp.sendRedirect("signOnForm");
        }else {
            Cart cart = (Cart) session.getAttribute("cart");
            String creditCardType1 = "Visa";
            String creditCardType2 = "MasterCard";
            String creditCardType3 = "American Express";
            List<String> creditCardTypes = new ArrayList<>();

            creditCardTypes.add(creditCardType1);
            creditCardTypes.add(creditCardType2);
            creditCardTypes.add(creditCardType3);
            Order order = new Order();
            order.initOrder(account,cart);
            orderService.insertOrder(order);

            session.setAttribute("order",order);
            session.setAttribute("creditCardTypes",creditCardTypes);
            req.getRequestDispatcher(NEWORDER_FORM).forward(req,resp);
        }
    }
}
