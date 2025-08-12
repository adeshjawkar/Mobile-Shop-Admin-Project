package MobileShopAdmin.ProducAdminSystem.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import MobileShopAdmin.ProducAdminSystem.entities.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product,Long> {
     Product findByProdid(long prodid);
     
     @Query(value = "SELECT * FROM products WHERE model_name = :model_name", nativeQuery = true)
     List<Product> findByModelName(@Param("model_name") String model_name);
     
     //custome Query
     @Query("SELECT p FROM Product p WHERE p.price BETWEEN :min AND :max")
     List<Product> findProductsInPriceRange(@Param("min") float min, @Param("max") float max);

     @Query("SELECT p FROM Product p WHERE p.stock_quantity < :minStock")
     List<Product> findLowStockProducts(@Param("minStock") int minStock);


}
