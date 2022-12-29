package gary.web.petstore.web.servlet;

import gary.web.petstore.domain.Product;
import gary.web.petstore.service.CatalogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class SearchServlet extends HttpServlet {

    public static final CatalogService catalogService = new CatalogService();
    private static final String SEARCH_FORM = "/WEB-INF/jsp/catalog/search.jsp";
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String keyword  = req.getParameter("keyword");
        List<Product> productList = catalogService.searchProductList(keyword);

        session.setAttribute("productList",productList);

        req.getRequestDispatcher(SEARCH_FORM).forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
