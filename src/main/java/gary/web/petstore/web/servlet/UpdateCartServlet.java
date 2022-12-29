package gary.web.petstore.web.servlet;

import com.alibaba.fastjson.JSON;
import gary.web.petstore.domain.Cart;
import gary.web.petstore.domain.CartItem;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

public class UpdateCartServlet extends HttpServlet {
    private static final String CART_FORM = "/WEB-INF/jsp/cart/cart.jsp";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        //判断cart为null
        Iterator<CartItem> cartItems = cart.getAllCartItems();


        while (cartItems.hasNext()) {
            CartItem cartItem = (CartItem) cartItems.next();
            String itemId = cartItem.getItem().getItemId();
            System.out.println(cartItem);
            System.out.println(cartItem.getItem());
            System.out.println(cartItem.getItem().getItemId());
            try {

                String quantityString = req.getParameter(itemId);
                int quantity = Integer.parseInt(quantityString);

                cart.setQuantityByItemId(itemId, quantity);
                if (quantity < 1) {
                    cartItems.remove();
                }
            } catch (Exception e) {
                //ignore parse exceptions on purpose
            }
        }


//        String result = JSON.toJSONString(cart,true);
//        System.out.println(result);


        req.getRequestDispatcher(CART_FORM).forward(req,resp);
    }
}
