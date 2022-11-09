package gary.web.petstore.persistence;

import gary.web.petstore.domain.Account;

import java.sql.SQLException;

public interface AccountDao {
    Account getAccountByUsername(String username);

    Account getAccountByUsernameAndPassword(Account account);

    void insertAccount(Account account) throws SQLException;

    void insertProfile(Account account);

    void insertSignon(Account account);

    void updateAccount(Account account) throws SQLException;

    void updateProfile(Account account);

    void updateSignon(Account account);
}