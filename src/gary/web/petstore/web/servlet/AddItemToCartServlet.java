package gary.web.petstore.web.servlet;

import gary.web.petstore.domain.Cart;
import gary.web.petstore.domain.Item;
import gary.web.petstore.service.CatalogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

public class AddItemToCartServlet extends HttpServlet {

    private static final String CART_FORM = "/WEB-INF/jsp/cart/cart.jsp";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String workingItemId = req.getParameter("workingItemId");
        HttpSession session = req.getSession();

        Cart cart = (Cart) session.getAttribute("cart");

        if (cart == null){
            cart = new Cart();
        }
        if (cart.containsItemId(workingItemId)) {
            cart.incrementQuantityByItemId(workingItemId);
        } else {
            CatalogService catalogService = new CatalogService();

            boolean isInStock = false;
            try {
                isInStock = catalogService.isItemInStock(workingItemId);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            Item item = catalogService.getItem(workingItemId);
            cart.addItem(item, isInStock);


            //解决刷新增加问题

        }
        session.setAttribute("cart",cart);
        req.getRequestDispatcher(CART_FORM).forward(req,resp);
    }
}