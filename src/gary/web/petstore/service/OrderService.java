package gary.web.petstore.service;

import gary.web.petstore.domain.*;
import gary.web.petstore.persistence.Impl.ItemDaoImpl;
import gary.web.petstore.persistence.Impl.LineItemDaoImpl;
import gary.web.petstore.persistence.Impl.OrderDaoImpl;
import gary.web.petstore.persistence.Impl.SequenceDaoImpl;
import gary.web.petstore.persistence.ItemDao;
import gary.web.petstore.persistence.LineItemDao;
import gary.web.petstore.persistence.OrderDao;
import gary.web.petstore.persistence.SequenceDao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OrderService {

    private ItemDao itemDao;

    private OrderDao orderDao;

    private LineItemDao lineItemDao;

    private SequenceDao sequenceDao;

    public OrderService() {
        this.itemDao = new ItemDaoImpl();
        this.orderDao = new OrderDaoImpl();
        this.lineItemDao = new LineItemDaoImpl();
        this.sequenceDao = new SequenceDaoImpl();

    }

    public void insertOrder(Order order) {
        order.setOrderId(getNextId("ordernum"));
        for (int i = 0; i < order.getLineItems().size(); i++) {
            LineItem lineItem =  order.getLineItems().get(i);
            String itemId = lineItem.getItemId();
            Integer increment = (Integer) lineItem.getQuantity();
            Map<String, Object> param = new HashMap<String, Object>(2);
            param.put("itemId", itemId);
            param.put("increment", increment);
            itemDao.updateInventoryQuantity(param);
        }

        orderDao.insertOrder(order);
        orderDao.insertOrderStatus(order);
        for (int i = 0; i < order.getLineItems().size(); i++) {
            LineItem lineItem = (LineItem) order.getLineItems().get(i);
            lineItem.setOrderId(order.getOrderId());
            lineItemDao.insertLineItem(lineItem);
        }
    }

    public Order getOrder(int orderId) throws SQLException {
        Order order = orderDao.getOrder(orderId);
        order.setLineItems(lineItemDao.getLineItemsByOrderId(orderId));

        for (int i = 0; i < order.getLineItems().size(); i++) {
            LineItem lineItem = (LineItem) order.getLineItems().get(i);
            Item item = itemDao.getItem(lineItem.getItemId());
            item.setQuantity(itemDao.getInventoryQuantity(lineItem.getItemId()));
            lineItem.setItem(item);
        }

        return order;
    }

    public List<Order> getOrdersByUsername(String username) {
        return orderDao.getOrdersByUsername(username);
    }

    public int getNextId(String name) {
        Sequence sequence = new Sequence(name, -1);
        sequence = (Sequence) sequenceDao.getSequence(sequence);
        if (sequence == null) {
            throw new RuntimeException("Error: A null sequence was returned from the database (could not get next " + name
                    + " sequence).");
        }
        Sequence parameterObject = new Sequence(name, sequence.getNextId() + 1);
        sequenceDao.updateSequence(parameterObject);
        return sequence.getNextId();
    }

//    public static void main(String[] args) {
//        OrderService orderService = new OrderService();
//        Order order = new Order();
//        order.setOrderId(1);
//        Account account = new Account();
//        account.setBannerOption(true);
//        account.setStatus("ok");
//        account.setLanguagePreference("english");
//        account.setZip("122");
//        account.setFavouriteCategoryId("awfaw");
//        account.setState("234");
//        account.setCity("changsha");
//        account.setPhone("12345456");
//        account.setAddress1("dsad");
//        account.setAddress2("23rtt");
//        account.setPassword("123");
//        account.setLastName("ad");
//        account.setFirstName("c");
//        account.setUsername("jijibo");
//        account.setCountry("china");
//        account.setCountry("234566@qq.com");
//        account.setListOption(false);
//        account.setBannerName("asd");
//
//        Cart cart = new Cart();
//
//        cart.setQuantityByItemId("1142",2153);
//
//        order.initOrder(account,cart);
//
//
//        orderService.insertOrder(order);
//
//
//    }

}
