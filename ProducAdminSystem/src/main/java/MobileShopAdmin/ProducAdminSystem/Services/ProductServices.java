package MobileShopAdmin.ProducAdminSystem.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MobileShopAdmin.ProducAdminSystem.Repository.ProductRepository;
import MobileShopAdmin.ProducAdminSystem.entities.Product;

@Service
public class ProductServices {
	
	@Autowired
	private ProductRepository prodRepo;
	
	public List<Product> getAllProducts(){
		
		List<Product> list = prodRepo.findAll();
		return list;
	}
	
	public String addNewProduct(Product obj)
	{
		String status;
		try
		{
			prodRepo.save(obj);
			status="success";
		}
		catch(Exception e)
		{
			status="failed";
		}
		return status;
	}
	
	public String deleteProduct(long prodid) {
		String status = "";
		Product obj = prodRepo.findByProdid(prodid);
		if(obj!=null)
		{
		    System.out.println(obj.getModel_name());
		    System.out.println(obj.getStock_quantity());
		    
			prodRepo.delete(obj);
			status="success";
		}
		else
		{
			status="failed";
		}
		return status;
	}
	
	public String updatePrice(long prodid, float price)
	{
		Product obj = prodRepo.findByProdid(prodid);
		String status;
		
		if(obj!=null) {
			System.out.println(obj.getPrice());
			obj.setPrice(price);
			System.out.println(obj.getPrice());
			prodRepo.save(obj);
			status="success";
		}
		else
		{
			status="failed";
		}
		return status;
	}

	public String updateStock(long prodid,int stock_quantity)
	{
		Product obj = prodRepo.findByProdid(prodid);
		String status;
		
		if(obj!=null)
		{
			obj.setStock_quantity(stock_quantity);
			prodRepo.save(obj);
			status="success";
		}
		else
		{
			status="failed";
		}
		return status;
	}
	
	public String updateFeatures(long prodid, String features) {
		Product obj = prodRepo.findByProdid(prodid);
		String status;
		
		if(obj!=null)
		{
			obj.setFeatures(features);
			prodRepo.save(obj);
			status="success";
			
		}
		else
		{
			status="failed";
		}
		return status;
	}
	
	public String updateWarranty(long prodid, String warranty) {
		Product obj = prodRepo.findByProdid(prodid);
		String status;
		
		if(obj!=null)
		{
			obj.setWarranty_period(warranty);
			prodRepo.save(obj);
			status="success";
		}
		else {
			status="failed";
		}
		return status;
	}
	
	public List<Product> searchOnModel(String model_name){
		List<Product> list = prodRepo.findByModelName(model_name);
		return list;
	}
	
	public List<Product> searchOnPriceRange(float min, float max){
		List<Product> list = prodRepo.findProductsInPriceRange(min, max);
		return list;
	}
	
	public List<Product> SearchLowStockProducts(){
		int minStock=5;
		List<Product> list = prodRepo.findLowStockProducts(minStock);
		return list;
	}
	


}
