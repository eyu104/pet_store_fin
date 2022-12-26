package gary.web.petstore.persistence;

import gary.web.petstore.domain.Item;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface ItemDao {
    void updateInventoryQuantity(Map<String, Object> param);

    int getInventoryQuantity(String itemId) throws SQLException;

    List<Item> getItemListByProduct(String productId);

    Item getItem(String itemId);
}
