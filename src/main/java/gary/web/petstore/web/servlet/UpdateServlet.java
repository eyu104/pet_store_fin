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

public class UpdateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        //判断cart为null
        Iterator<CartItem> cartItems = cart.getAllCartItems();

        String itemId = req.getParameter("itemId");
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        cart.setQuantityByItemId(itemId, quantity);

        String itemToatl = String.valueOf(cart.getTotalByItemId(itemId));
        String subTotal = String.valueOf(cart.getSubTotal());
        session.setAttribute("cart",cart);


        resp.setContentType("text/plain");
        PrintWriter out = resp.getWriter();



        out.println(itemToatl + "," + subTotal);
    }
}
