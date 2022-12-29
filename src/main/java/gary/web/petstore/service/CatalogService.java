package gary.web.petstore.service;

import gary.web.petstore.domain.Category;
import gary.web.petstore.domain.Item;
import gary.web.petstore.domain.Product;
import gary.web.petstore.persistence.CategoryDao;
import gary.web.petstore.persistence.Impl.CategoryDaoImpl;
import gary.web.petstore.persistence.Impl.ItemDaoImpl;
import gary.web.petstore.persistence.Impl.ProductDaoImpl;
import gary.web.petstore.persistence.ItemDao;
import gary.web.petstore.persistence.ProductDao;

import java.sql.SQLException;
import java.util.List;

public class CatalogService {
    private CategoryDao categoryDao;
    private ProductDao productDao;
    private ItemDao itemDao;

    public CatalogService() {
        this.categoryDao = new CategoryDaoImpl();
        this.itemDao = new ItemDaoImpl();
        this.productDao = new ProductDaoImpl();
    }

    public List<Category> getCategoryList() {
        return categoryDao.getCategoryList();
    }

    public Category getCategory(String categoryId) {
        return categoryDao.getCategory(categoryId);
    }

    public Product getProduct(String productId) {
        return productDao.getProduct(productId);
    }

    public List<Product> getProductListByCategory(String categoryId) {
        return productDao.getProductListByCategory(categoryId);
    }

    // TODO enable using more than one keyword
    public List<Product> searchProductList(String keyword) {
        return productDao.searchProductList("%" + keyword.toLowerCase() + "%");
    }

    public List<Item> getItemListByProduct(String productId) {
        return itemDao.getItemListByProduct(productId);
    }

    public Item getItem(String itemId) {
        return itemDao.getItem(itemId);
    }

    public boolean isItemInStock(String itemId) throws SQLException {
        return itemDao.getInventoryQuantity(itemId) > 0;
    }
}
