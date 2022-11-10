package gary.web.petstore.web.servlet;

import gary.web.petstore.domain.Cart;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class CartFormServlet extends HttpServlet {
    private static final String CART_FORM = "/WEB-INF/jsp/cart/cart.jsp";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        try {
            Boolean cartIsEmpty = (boolean)session.getAttribute("cartIsEmpty");
            if (cartIsEmpty == null || cartIsEmpty == false){

            }else {
                session.setAttribute("cart",null);
                cartIsEmpty = false;
            }
        }catch (NullPointerException e){
            e.printStackTrace();
        }


        req.getRequestDispatcher(CART_FORM).forward(req,resp);
    }
}
