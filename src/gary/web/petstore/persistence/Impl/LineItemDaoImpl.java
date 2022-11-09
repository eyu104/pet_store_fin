package gary.web.petstore.persistence.Impl;

import gary.web.petstore.domain.LineItem;
import gary.web.petstore.persistence.DBUtil;
import gary.web.petstore.persistence.ItemDao;
import gary.web.petstore.persistence.LineItemDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class LineItemDaoImpl implements LineItemDao {
    private static final String GET_LINEITEM_BY_ORDERID = "SELECT" +
            "      ORDERID," +
            "      LINENUM AS lineNumber," +
            "      ITEMID," +
            "      QUANTITY," +
            "      UNITPRICE" +
            "    FROM LINEITEM" +
            "    WHERE ORDERID = ?";
    private static final String INSERT_LINEITEM = "INSERT INTO LINEITEM (ORDERID, LINENUM, ITEMID, QUANTITY, UNITPRICE)" +
            "    VALUES (?, ?, ?, ?, ?)";

    private static final ItemDao itemDao = new ItemDaoImpl();
    @Override
    public List<LineItem> getLineItemsByOrderId(int orderId) {
        List<LineItem> lineItems = new ArrayList<>();
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(GET_LINEITEM_BY_ORDERID);
            preparedStatement.setInt(1,orderId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                LineItem lineItem = new LineItem();
                lineItem.setItem(itemDao.getItem(resultSet.getString("ITEMID")));
                lineItem.setLineNumber(resultSet.getInt("lineNumber"));
                lineItem.setOrderId(orderId);
                lineItem.setItemId(resultSet.getString("ITEMID"));
                lineItem.setUnitPrice(resultSet.getBigDecimal("UNITPRICE"));
                lineItem.setQuantity(resultSet.getInt("QUANTITY"));
                lineItems.add(lineItem);
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
        return lineItems;
    }

    @Override
    public void insertLineItem(LineItem lineItem) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement  preparedStatement = connection.prepareStatement(INSERT_LINEITEM);
            preparedStatement.setInt(1,lineItem.getOrderId());
            preparedStatement.setInt(2,lineItem.getLineNumber());
            preparedStatement.setString(3,lineItem.getItemId());
            preparedStatement.setInt(4,lineItem.getQuantity());
            preparedStatement.setBigDecimal(5,lineItem.getUnitPrice());

            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
