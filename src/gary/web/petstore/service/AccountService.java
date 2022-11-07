package gary.web.petstore.service;

import gary.web.petstore.domain.Account;
import gary.web.petstore.persistence.AccountDao;
import gary.web.petstore.persistence.Impl.AccountDaoImpl;

public class AccountService {
    private AccountDao accountDao ;
    public AccountService(){
        this.accountDao= new AccountDaoImpl();
    }

    public Account getAccount(String username, String password) {
        Account account = new Account();
        account.setUsername(username);
        account.setPassword(password);
        return accountDao.getAccountByUsernameAndPassword(account);
    }
}
