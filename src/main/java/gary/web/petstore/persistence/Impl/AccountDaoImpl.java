package gary.web.petstore.persistence.Impl;
import org.apache.log4j.Logger;
import gary.web.petstore.domain.Account;
import gary.web.petstore.persistence.AccountDao;
import gary.web.petstore.persistence.DBUtil;

import java.sql.*;

public class AccountDaoImpl implements AccountDao {
    Logger logger = Logger.getLogger(AccountDaoImpl.class);

    private static final String GET_ACCOUNT_BY_USERNAME_AND_PASSWORD = "SELECT " +
            "SIGNON.USERNAME," +
            "ACCOUNT.EMAIL,ACCOUNT.FIRSTNAME,ACCOUNT.LASTNAME,ACCOUNT.STATUS," +
            "ACCOUNT.ADDR1 AS address1,ACCOUNT.ADDR2 AS address2," +
            "ACCOUNT.CITY,ACCOUNT.STATE,ACCOUNT.ZIP,ACCOUNT.COUNTRY,ACCOUNT.PHONE," +
            "PROFILE.LANGPREF AS languagePreference,PROFILE.FAVCATEGORY AS favouriteCategoryId," +
            "PROFILE.MYLISTOPT AS listOption,PROFILE.BANNEROPT AS bannerOption," +
            "BANNERDATA.BANNERNAME " +
            "FROM ACCOUNT, PROFILE, SIGNON, BANNERDATA " +
            "WHERE ACCOUNT.USERID = ? AND SIGNON.PASSWORD = ? " +
            "AND SIGNON.USERNAME = ACCOUNT.USERID " +
            "AND PROFILE.USERID = ACCOUNT.USERID " +
            "AND PROFILE.FAVCATEGORY = BANNERDATA.FAVCATEGORY";

    private static final String UPDATE_ACCOUNT = "UPDATE ACCOUNT SET " +
            "EMAIL = ?," +
            "FIRSTNAME = ?," +
            "LASTNAME = ?," +
            "STATUS = ?," +
            "ADDR1 = ?," +
            "ADDR2 = ?," +
            "CITY = ?," +
            "STATE = ?," +
            "ZIP = ?," +
            "COUNTRY = ?," +
            "PHONE = ? " +
            "WHERE USERID = ?";
    private static final String INSERT_ACCOUNT = "INSERT INTO ACCOUNT" +
            " (EMAIL, FIRSTNAME, LASTNAME, STATUS, ADDR1, ADDR2, CITY, STATE, ZIP, COUNTRY, PHONE, USERID)" +
            " VALUES" +
            " (?, ?, ?, ?, ?,  ?, ?, ?, ?, ?, ?, ?)";
    private static final String INSERT_PROFILE = "INSERT INTO PROFILE (LANGPREF, FAVCATEGORY, USERID, MYLISTOPT, BANNEROPT)" +
            "    VALUES (?, ?, ?, ?, ?)";
    private static final String INSERT_SIGNON = "INSERT INTO SIGNON (PASSWORD,USERNAME)" +
            "    VALUES (?, ?)";

    private static final String UPDATE_SINGON = "UPDATE SIGNON SET PASSWORD = ?" +
            "    WHERE USERNAME = ?";

    private static final String UPDATE_PROFILE = "UPDATE PROFILE SET" +
            "      LANGPREF = ?," +
            "      FAVCATEGORY = ?," +
            "      MYLISTOPT =?," +
            "      BANNEROPT =?" +
            "    WHERE USERID = ?";

    private static final String GET_ACCOUNT_BY_USERNAME = " SELECT" +
            "          SIGNON.USERNAME," +
            "          ACCOUNT.EMAIL," +
            "          ACCOUNT.FIRSTNAME," +
            "          ACCOUNT.LASTNAME," +
            "          ACCOUNT.STATUS," +
            "          ACCOUNT.ADDR1 AS address1," +
            "          ACCOUNT.ADDR2 AS address2," +
            "          ACCOUNT.CITY," +
            "          ACCOUNT.STATE," +
            "          ACCOUNT.ZIP," +
            "          ACCOUNT.COUNTRY," +
            "          ACCOUNT.PHONE," +
            "          PROFILE.LANGPREF AS languagePreference," +
            "          PROFILE.FAVCATEGORY AS favouriteCategoryId," +
            "          PROFILE.MYLISTOPT AS listOption," +
            "          PROFILE.BANNEROPT AS bannerOption," +
            "          BANNERDATA.BANNERNAME" +
            "    FROM ACCOUNT, PROFILE, SIGNON, BANNERDATA" +
            "    WHERE ACCOUNT.USERID = ?" +
            "      AND SIGNON.USERNAME = ACCOUNT.USERID" +
            "      AND PROFILE.USERID = ACCOUNT.USERID" +
            "      AND PROFILE.FAVCATEGORY = BANNERDATA.FAVCATEGORY";

    @Override
    public Account getAccountByUsername(String username) {
        Account accountResult = null;
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(GET_ACCOUNT_BY_USERNAME);
            preparedStatement.setString(1, username);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                accountResult = this.resultSetToAccount(resultSet);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return accountResult;
    }

    @Override
    public Account getAccountByUsernameAndPassword(Account account) {
        Account accountResult = null;
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(GET_ACCOUNT_BY_USERNAME_AND_PASSWORD);
            preparedStatement.setString(1, account.getUsername());
            preparedStatement.setString(2, account.getPassword());
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                accountResult = this.resultSetToAccount(resultSet);
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
            logger.info(account.getUsername()+"登录");
        }catch (Exception e){
            e.printStackTrace();
        }
        return accountResult;
    }

    private Account resultSetToAccount(ResultSet resultSet) throws Exception{
        Account account = new Account();
        account.setUsername(resultSet.getString("username"));
        account.setEmail(resultSet.getString("email"));
        account.setFirstName(resultSet.getString("firstName"));
        account.setLastName(resultSet.getString("lastName"));
        account.setStatus(resultSet.getString("status"));
        account.setAddress1(resultSet.getString("address1"));
        account.setAddress2(resultSet.getString("address2"));
        account.setCity(resultSet.getString("city"));
        account.setState(resultSet.getString("state"));
        account.setZip(resultSet.getString("zip"));
        account.setCountry(resultSet.getString("country"));
        account.setPhone(resultSet.getString("phone"));
        account.setFavouriteCategoryId(resultSet.getString("favouriteCategoryId"));
        account.setLanguagePreference(resultSet.getString("languagePreference"));
        account.setListOption(resultSet.getInt("listOption") == 1);
        account.setBannerOption(resultSet.getInt("bannerOption") == 1);
        account.setBannerName(resultSet.getString("bannerName"));
        return account;

    }

    @Override
    public void insertAccount(Account account) throws SQLException {

        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ACCOUNT);
        preparedStatement.setString(1,account.getEmail());
        preparedStatement.setString(2,account.getFirstName());
        preparedStatement.setString(3,account.getLastName());
        preparedStatement.setString(4,account.getStatus());
        preparedStatement.setString(5,account.getAddress1());
        preparedStatement.setString(6,account.getAddress2());
        preparedStatement.setString(7,account.getCity());
        preparedStatement.setString(8,account.getState());
        preparedStatement.setString(9,account.getZip());
        preparedStatement.setString(10,account.getCountry());
        preparedStatement.setString(11,account.getPhone());
        preparedStatement.setString(12,account.getUsername());
        preparedStatement.executeUpdate();

        DBUtil.closePreparedStatement(preparedStatement);
        DBUtil.closeConnection(connection);
        logger.info(account.getUsername()+"注册成功，成为新用户");
        logger.debug(account.getUsername()+"的账户信息传入表account");

    }

    @Override
    public void insertProfile(Account account) {
        try{
            Connection connection = DBUtil.getConnection();
            int mylist ,banner;
            if (account.isListOption())
            {
                mylist = 1;
            }else {
                mylist = 0;
            }

            if (account.isBannerOption()){
                banner = 1;
            }else {
                banner = 0;
            }
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PROFILE);
            preparedStatement.setString(1,account.getLanguagePreference());
            preparedStatement.setString(2,account.getFavouriteCategoryId());
            preparedStatement.setInt(4,mylist);
            preparedStatement.setInt(5,banner);

            preparedStatement.setString(3, account.getUsername());

            preparedStatement.executeUpdate();

            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
            logger.debug(account.getUsername()+"的个人信息传入表profile");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public void insertSignon(Account account) {
        try{
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SIGNON);
            preparedStatement.setString(1,account.getPassword());
            preparedStatement.setString(2,account.getUsername());

            preparedStatement.executeUpdate();
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
            logger.debug(account.getUsername()+"的用户名及密码传入表sion");
        }catch (Exception e){
            e.printStackTrace();
        }

    }

    @Override
    public void updateAccount(Account account) throws SQLException {

        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_ACCOUNT);
        preparedStatement.setString(1,account.getEmail());
        preparedStatement.setString(2,account.getFirstName());
        preparedStatement.setString(3,account.getLastName());
        preparedStatement.setString(4,account.getStatus());
        preparedStatement.setString(5,account.getAddress1());
        preparedStatement.setString(6,account.getAddress2());
        preparedStatement.setString(7,account.getCity());
        preparedStatement.setString(8,account.getState());
        preparedStatement.setString(9,account.getZip());
        preparedStatement.setString(10,account.getCountry());
        preparedStatement.setString(11,account.getPhone());
        preparedStatement.setString(12,account.getUsername());

        preparedStatement.executeUpdate();

        DBUtil.closePreparedStatement(preparedStatement);
        DBUtil.closeConnection(connection);

        logger.info(account.getUsername()+"更新了账户信息，表account中的信息已更新");
    }

    @Override
    public void updateProfile(Account account) {

        try {

            int mylist ,banner;
            if (account.isListOption())
            {
                mylist = 1;
            }else {
                mylist = 0;
            }

            if (account.isBannerOption()){
                banner = 1;
            }else {
                banner = 0;
            }
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_PROFILE);
            preparedStatement.setString(1,account.getLanguagePreference());
            preparedStatement.setString(2,account.getFavouriteCategoryId());
            preparedStatement.setInt(3,mylist);
            preparedStatement.setInt(4,banner);
            preparedStatement.setString(5, account.getUsername());

            preparedStatement.executeUpdate();

            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
            logger.info(account.getUsername()+"更新了个人信息，表profile中的信息已更新");
        }catch (Exception e){
            e.printStackTrace();
        }

    }

    @Override
    public void updateSignon(Account account) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_SINGON);
            preparedStatement.setString(1,account.getPassword());
            preparedStatement.setString(2,account.getUsername());
            preparedStatement.executeUpdate();

            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
            logger.info(account.getUsername()+"更新了账户信息，表sion中的信息已更新");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static void main(String[] args) throws SQLException {
        AccountDao accountDao = new AccountDaoImpl();
        Account account = new Account();
        account.setUsername("hahaha");
        account.setPassword("123");
        accountDao.updateSignon(account);
//        System.out.println("success");
    }
}
