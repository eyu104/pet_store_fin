package gary.web.petstore.persistence.Impl;

import gary.web.petstore.domain.Order;
import gary.web.petstore.persistence.DBUtil;
import gary.web.petstore.persistence.OrderDao;
import org.apache.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrderDaoImpl implements OrderDao {

    Logger logger = Logger.getLogger(OrderDaoImpl.class);

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
    private static final String GET_ORDERS_BY_USERNAME = "SELECT" +
            "      BILLADDR1 AS billAddress1," +
            "      BILLADDR2 AS billAddress2," +
            "      BILLCITY," +
            "      BILLCOUNTRY," +
            "      BILLSTATE," +
            "      BILLTOFIRSTNAME," +
            "      BILLTOLASTNAME," +
            "      BILLZIP,\n" +
            "      SHIPADDR1 AS shipAddress1," +
            "      SHIPADDR2 AS shipAddress2," +
            "      SHIPCITY," +
            "      SHIPCOUNTRY," +
            "      SHIPSTATE," +
            "      SHIPTOFIRSTNAME," +
            "      SHIPTOLASTNAME," +
            "      SHIPZIP," +
            "      CARDTYPE," +
            "      COURIER," +
            "      CREDITCARD," +
            "      EXPRDATE AS expiryDate," +
            "      LOCALE," +
            "      ORDERDATE," +
            "      ORDERS.ORDERID," +
            "      TOTALPRICE," +
            "      USERID AS username," +
            "      STATUS" +
            "    FROM ORDERS, ORDERSTATUS" +
            "    WHERE ORDERS.USERID = ?" +
            "      AND ORDERS.ORDERID = ORDERSTATUS.ORDERID" +
            "    ORDER BY ORDERDATE";
    private static final String GET_ORDER = "select" +
            "      BILLADDR1 AS billAddress1," +
            "      BILLADDR2 AS billAddress2," +
            "      BILLCITY," +
            "      BILLCOUNTRY," +
            "      BILLSTATE," +
            "      BILLTOFIRSTNAME," +
            "      BILLTOLASTNAME," +
            "      BILLZIP," +
            "      SHIPADDR1 AS shipAddress1," +
            "      SHIPADDR2 AS shipAddress2," +
            "      SHIPCITY," +
            "      SHIPCOUNTRY," +
            "      SHIPSTATE," +
            "      SHIPTOFIRSTNAME," +
            "      SHIPTOLASTNAME," +
            "      SHIPZIP," +
            "      CARDTYPE," +
            "      COURIER," +
            "      CREDITCARD," +
            "      EXPRDATE AS expiryDate," +
            "      LOCALE," +
            "      ORDERDATE," +
            "      ORDERS.ORDERID," +
            "      TOTALPRICE," +
            "      USERID AS username," +
            "      STATUS" +
            "    FROM ORDERS, ORDERSTATUS" +
            "    WHERE ORDERS.ORDERID = ?" +
            "      AND ORDERS.ORDERID = ORDERSTATUS.ORDERID";

    @Override
    public List<Order> getOrdersByUsername(String username) {
        List<Order> orderList = new ArrayList<>();

        try{
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(GET_ORDERS_BY_USERNAME);
            preparedStatement.setString(1,username);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Order order = new Order();
                order.setBillAddress1(resultSet.getString(1));
                order.setBillAddress2(resultSet.getString(2));
                order.setBillCity(resultSet.getString(3));
                order.setBillCountry(resultSet.getString(4));
                order.setBillState(resultSet.getString(5));
                order.setBillToFirstName(resultSet.getString(6));
                order.setBillToLastName(resultSet.getString(7));
                order.setBillZip(resultSet.getString(8));
                order.setShipAddress1(resultSet.getString(9));
                order.setShipAddress2(resultSet.getString(10));
                order.setShipCity(resultSet.getString(11));
                order.setShipCountry(resultSet.getString(12));
                order.setShipState(resultSet.getString(13));
                order.setShipToFirstName(resultSet.getString(14));
                order.setShipToLastName(resultSet.getString(15));
                order.setShipZip(resultSet.getString(16));
                order.setCardType(resultSet.getString(17));
                order.setCourier(resultSet.getString(18));
                order.setCreditCard(resultSet.getString(19));

                order.setExpiryDate(resultSet.getString(20));

                order.setLocale(resultSet.getString(21));


                order.setOrderDate(resultSet.getTimestamp(22));
                order.setOrderId(resultSet.getInt(23));
                order.setTotalPrice(resultSet.getBigDecimal(24));
                order.setUsername(resultSet.getString(25));
                order.setStatus(resultSet.getString(26));

                orderList.add(order);
                logger.info(username+"查看了一个订单");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return orderList;
    }

    @Override
    public Order getOrder(int orderId) {
        Order order = new Order();
        try{
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(GET_ORDER);
            preparedStatement.setInt(1,orderId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                order.setBillAddress1(resultSet.getString(1));
                order.setBillAddress2(resultSet.getString(2));
                order.setBillCity(resultSet.getString(3));
                order.setBillCountry(resultSet.getString(4));
                order.setBillState(resultSet.getString(5));
                order.setBillToFirstName(resultSet.getString(6));
                order.setBillToLastName(resultSet.getString(7));
                order.setBillZip(resultSet.getString(8));
                order.setShipAddress1(resultSet.getString(9));
                order.setShipAddress2(resultSet.getString(10));
                order.setShipCity(resultSet.getString(11));
                order.setShipCountry(resultSet.getString(12));
                order.setShipState(resultSet.getString(13));
                order.setShipToFirstName(resultSet.getString(14));
                order.setShipToLastName(resultSet.getString(15));
                order.setShipZip(resultSet.getString(16));
                order.setCardType(resultSet.getString(17));
                order.setCourier(resultSet.getString(18));
                order.setCreditCard(resultSet.getString(19));
                order.setExpiryDate(resultSet.getString(20));
                order.setLocale(resultSet.getString(21));
                order.setOrderDate(resultSet.getTimestamp(22));
                order.setOrderId(resultSet.getInt(23));
                order.setTotalPrice(resultSet.getBigDecimal(24));
                order.setUsername(resultSet.getString(25));
                order.setStatus(resultSet.getString(26));
            }

            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
        return order;
    }

    @Override
    public void insertOrder(Order order) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        try{
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ORDER);
            preparedStatement.setInt(1,order.getOrderId());
//            preparedStatement.setString(3,(String) format.format(order.getOrderDate()));
//            preparedStatement.setDate(3, (java.sql.Date) order.getOrderDate());
//            System.out.println((java.sql.Date) order.getOrderDate());
            preparedStatement.setTimestamp(3,new Timestamp(order.getOrderDate().getTime()));
            System.out.println(new Timestamp(order.getOrderDate().getTime()));
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
            logger.debug("订单"+order.getOrderId()+"的信息已传入表order中");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public void insertOrderStatus(Order order) {
        try{

//            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//            java.util.Date d1 = sdf.parse(String.valueOf(order.getOrderDate()));
//            java.sql.Date d2 = new java.sql.Date(d1.getTime()); //再转换为sql.Date对象
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ORDERS_STATUS);
            preparedStatement.setInt(1,order.getOrderId());
            preparedStatement.setInt(2,order.getOrderId());
//            preparedStatement.setDate(3, new java.sql.Date(order.getOrderDate().getTime()));
            preparedStatement.setTimestamp(3,new Timestamp(order.getOrderDate().getTime()));
            preparedStatement.setString(4,order.getStatus());

            preparedStatement.executeUpdate();

            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
            logger.debug("订单"+order.getOrderId()+"的状态已传入表orderstatus中");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
//        OrderDao orderDao = new OrderDaoImpl();
//        Order order = new Order();
//        order.setOrderId(1);
//        order.setOrderDate(new java.util.Date());
//        order.setStatus("ok");


//        orderDao.insertOrderStatus(order);
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

        Date date = new Date();
        System.out.println(format.format(date));
    }

}