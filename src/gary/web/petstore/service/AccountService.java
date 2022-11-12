package gary.web.petstore.service;

import gary.web.petstore.domain.Account;
import gary.web.petstore.domain.Product;
import gary.web.petstore.persistence.AccountDao;
import gary.web.petstore.persistence.Impl.AccountDaoImpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class AccountService {
    private static final List<String> LANGUAGE_LIST;
    private static final List<String> CATEGORY_LIST;

    private AccountDao accountDao ;
    public AccountService(){
        this.accountDao= new AccountDaoImpl();
    }
    private Account account = new Account();
    private List<Product> myList;
    private boolean authenticated;


    static {
        List<String> langList = new ArrayList<String>();
        langList.add("english");
        langList.add("japanese");
        langList.add("中文");
        LANGUAGE_LIST = Collections.unmodifiableList(langList);

        List<String> catList = new ArrayList<String>();
        catList.add("FISH");
        catList.add("DOGS");
        catList.add("REPTILES");
        catList.add("CATS");
        catList.add("BIRDS");
        CATEGORY_LIST = Collections.unmodifiableList(catList);
    }

    public Account getAccount(String username, String password) {
        Account account = new Account();
        account.setUsername(username);
        account.setPassword(password);
        return accountDao.getAccountByUsernameAndPassword(account);
    }

    public List<String> getLanguages() {
        return LANGUAGE_LIST;
    }

    public List<String> getCategories() {
        return CATEGORY_LIST;
    }
    public String getUsername() {
        return account.getUsername();
    }

    public void insertAccount(Account account) throws SQLException {
        accountDao.insertAccount(account);
        accountDao.insertProfile(account);
        accountDao.insertSignon(account);
    }
    public void updateAccount(Account account) throws SQLException {
        accountDao.updateAccount(account);
        accountDao.updateProfile(account);

        if (account.getPassword() != null && account.getPassword().length() > 0) {
            accountDao.updateSignon(account);
        }
    }
}
