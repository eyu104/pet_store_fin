package gary.web.petstore.persistence.Impl;

import gary.web.petstore.domain.Order;
import gary.web.petstore.persistence.DBUtil;
import gary.web.petstore.persistence.OrderDao;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.List;

public class OrderDaoImpl implements OrderDao {

    private static final String INSERT_ORDER = "INSERT INTO ORDERS (ORDERID, USERID, ORDERDATE, SHIPADDR1, SHIPADDR2, SHIPCITY, SHIPSTATE," +
            "      SHIPZIP, SHIPCOUNTRY, BILLADDR1, BILLADDR2, BILLCITY, BILLSTATE, BILLZIP, BILLCOUNTRY," +
            "      COURIER, TOTALPRICE, BILLTOFIRSTNAME, BILLTOLASTNAME, SHIPTOFIRSTNAME, SHIPTOLASTNAME," +
            "      CREDITCARD, EXPRDATE, CARDTYPE, LOCALE)" +
            "    VALUES(?, ?, ?, ?, ?, ?," +
            "      ?, ?, ?, ?, ?, ?," +
            "      ?, ?, ?,?, ?, ?, ?," +
            "      ?, ?, ?, ?, ?, ?)";
    private static final String INSERT_ORDERS_STATUS = "INSERT INTO ORDERSTATUS (ORDERID, LINENUM, TIMESTAMP, STATUS)" +
            "    VALUES (?, ?, ?, ?)";


    @Override
    public List<Order> getOrdersByUsername(String username) {
        return null;
    }

    @Override
    public Order getOrder(int orderId) {
        return null;
    }

    @Override
    public void insertOrder(Order order) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        try{
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ORDER);
            preparedStatement.setInt(1,order.getOrderId());
            preparedStatement.setString(3,(String) format.format(order.getOrderDate()));
            preparedStatement.setString(2,order.getUsername());
            preparedStatement.setString(4,order.getShipAddress1());
            preparedStatement.setString(5,order.getShipAddress2());
            preparedStatement.setString(6,order.getShipCity());
            preparedStatement.setString(7,order.getShipState());
            preparedStatement.setString(8,order.getShipZip());
            preparedStatement.setString(9,order.getShipCountry());
            preparedStatement.setString(10,order.getBillAddress1());
            preparedStatement.setString(11,order.getBillAddress2());
            preparedStatement.setString(12,order.getBillCity());
            preparedStatement.setString(13,order.getBillState());
            preparedStatement.setString(14,order.getBillZip());
            preparedStatement.setString(15,order.getBillCountry());
            preparedStatement.setString(16,order.getCourier());
            preparedStatement.setBigDecimal(17, order.getTotalPrice());
            preparedStatement.setString(18,order.getBillToFirstName());
            preparedStatement.setString(19,order.getBillToLastName());
            preparedStatement.setString(20,order.getShipToFirstName());
            preparedStatement.setString(21,order.getShipToLastName());
            preparedStatement.setString(22,order.getCreditCard());
            preparedStatement.setString(23,order.getExpiryDate());
            preparedStatement.setString(24,order.getCardType());
            preparedStatement.setString(25,order.getLocale());

            preparedStatement.executeUpdate();

            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public void insertOrderStatus(Order order) {
        try{
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ORDERS_STATUS);
            preparedStatement.setInt(1,order.getOrderId());
            preparedStatement.setInt(2,order.getOrderId());
            preparedStatement.setDate(3, (Date) order.getOrderDate());
            preparedStatement.setString(4,order.getStatus());

            preparedStatement.executeUpdate();

            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
