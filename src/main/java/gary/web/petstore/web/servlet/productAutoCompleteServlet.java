package gary.web.petstore.web.servlet;

import com.alibaba.fastjson.JSON;
import gary.web.petstore.domain.Product;
import gary.web.petstore.service.CatalogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class productAutoCompleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String keyword = req.getParameter("keyword");
        CatalogService catalogService = new CatalogService();
        List<Product> productList = catalogService.searchProductList(keyword);
//        System.out.println(productList.get(0));

        String result = JSON.toJSONString(productList,true);
        System.out.println(result);

        resp.setContentType("text/json");
        PrintWriter out = resp.getWriter();
        out.println(result);

    }
}
