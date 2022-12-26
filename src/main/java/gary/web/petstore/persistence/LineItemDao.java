package gary.web.petstore.persistence;

import gary.web.petstore.domain.LineItem;

import java.util.List;

public interface LineItemDao {
    List<LineItem> getLineItemsByOrderId(int orderId);

    void insertLineItem(LineItem lineItem);
}
