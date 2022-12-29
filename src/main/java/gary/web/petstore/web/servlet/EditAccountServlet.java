package gary.web.petstore.web.servlet;

import gary.web.petstore.domain.Account;
import gary.web.petstore.domain.Product;
import gary.web.petstore.service.AccountService;
import gary.web.petstore.service.CatalogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class EditAccountServlet extends HttpServlet {
    private String username;
    private String password;
    private String repeatedPassword;
    private String account_firstName;
    private String account_lastName;
    private String account_email;
    private String account_phone;
    private String account_address1;
    private String account_address2;
    private String account_city;
    private String account_state;
    private String account_zip;
    private String account_country;
    private String account_languagePreference;
    private String account_favouriteCategoryId;
    private boolean account_bannerOption;
    private boolean account_listOption;
    private String Msg;

    private AccountService accountService = new AccountService();
    private static final String MY_ACCOUNT_FORM = "/WEB-INF/jsp/account/editAccountForm.jsp";
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
         Account newAccount = (Account) session.getAttribute("loginAccount");
        Account tem = (Account) session.getAttribute("loginAccount");
        username = tem.getUsername();
        password = req.getParameter("password");
        repeatedPassword = req.getParameter("repeatedPassword");
        account_firstName = req.getParameter("account_firstName");
        account_lastName = req.getParameter("account_lastName");
        account_email = req.getParameter("account_email");
        account_phone = req.getParameter("account_phone");
        account_address1 = req.getParameter("account_address1");
        account_address2 = req.getParameter("account_address2");
        account_city = req.getParameter("account_city");
        account_state = req.getParameter("account_state");
        account_zip = req.getParameter("account_zip");
        account_country = req.getParameter("account_country");
        account_languagePreference = req.getParameter("account_languagePreference");
        account_favouriteCategoryId = req.getParameter("account_favouriteCategoryId");
        String bannerOption = req.getParameter("account_bannerOption");
        String listOption = req.getParameter("account_listOption");

        newAccount.setUsername(username);
        newAccount.setFirstName(account_firstName);
        newAccount.setLastName(account_lastName);
        newAccount.setPassword(password);
        newAccount.setAddress1(account_address1);
        newAccount.setAddress2(account_address2);
        newAccount.setEmail(account_email);
        newAccount.setPhone(account_phone);
        newAccount.setCity(account_city);
        newAccount.setState(account_state);
        newAccount.setStatus("OK");
        newAccount.setZip(account_zip);
        newAccount.setCountry(account_country);
        newAccount.setFavouriteCategoryId(account_favouriteCategoryId);
        newAccount.setLanguagePreference(account_languagePreference);
        if (bannerOption == null) {
            account_bannerOption = false;
        } else if (bannerOption.equals("on")) {
            account_bannerOption = true;
        }
        if (listOption == null) {
            account_listOption = false;
        } else if (listOption.equals("on")) {
            account_listOption = true;
        }
        newAccount.setListOption(account_listOption);
        newAccount.setBannerOption(account_bannerOption);
        try {
            accountService.updateAccount(newAccount);
        } catch (Exception e) {
            e.printStackTrace();
        }


        if (newAccount.isListOption()) {
            CatalogService catalogService = new CatalogService();
            List<Product> myList = catalogService.getProductListByCategory(newAccount.getFavouriteCategoryId());
            session.setAttribute("myList", myList);
            session.setAttribute("loginAccount", newAccount);
//        req.getRequestDispatcher(MY_ACCOUNT_FORM).forward(req,resp);

        }
        session.setAttribute("loginAccount", newAccount);
        resp.sendRedirect("myAccount");
    }


    private boolean validate(){


        if (this.username == null || this.username.equals("")){
            this.Msg = "用户名不能为空";
            return false;
        }
        if (this.password == null || this.password.equals("")){
            this.Msg = "密码不能为空";
            return false;
        }
        return true;
    }
}
