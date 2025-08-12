package MobileShopAdmin.ProducAdminSystem.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import MobileShopAdmin.ProducAdminSystem.entities.AdminEntity;

@Repository
public interface AdminRepository extends JpaRepository<AdminEntity, Integer> {
	
	
	  @Query(value = "SELECT * FROM admin WHERE username = :username AND password = :password", 
	           nativeQuery = true)
	    AdminEntity findByUsernameAndPassword(@Param("username") String username,
	                                     @Param("password") String password);
}
