package MobileShopAdmin.ProducAdminSystem;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import MobileShopAdmin.ProducAdminSystem.Services.ProductServices;
import MobileShopAdmin.ProducAdminSystem.entities.Product;

@Controller
public class ProductController {
	
	@Autowired
	private ProductServices prodServ;
	
	@GetMapping("/addnew")
	public String addNewProduct() {
		return "AddNewProductForm.jsp";
	}
	
	@GetMapping("/viewproduct")
	public String viewProduct() {
		return "ViewProduct.jsp";
	}
	
	@GetMapping("/all")
	public String allProducts(Model m) {
		List<Product> list = prodServ.getAllProducts();
		m.addAttribute("pdlist",list);
		return "AllProducts.jsp";
	}
	
	@PostMapping("/addprod")
	
	public String addProduct(Product obj, Model m) {
		
		String status=prodServ.addNewProduct(obj);
		m.addAttribute("msg","New Product Added...");
		m.addAttribute("status",status);
	   return "ActivityStatus.jsp";
}
	@GetMapping("/update")
	public String updateProduct() {
		return "UpdateProduct.html";
	}
	
	@GetMapping("/delete")
	public String deletePage() {
		return "DeleteProdut.html";
	}
	
	@PostMapping("/deleteprod")
	public String deleteProd(long prodid, Model m) {
		String status;
		status=prodServ.deleteProduct(prodid);
		m.addAttribute("msg", "Product Remove Status...");
		m.addAttribute("status",status);
		return "ActivityStatus.jsp";
		
	}
	
	@PostMapping("/updatePrice")
	public String updatePrice(long prodid,float price, Model m) {
		String stat = prodServ.updatePrice(prodid,price);
		m.addAttribute("status",stat);
		m.addAttribute("msg","Price Update Status...");
		return "ActivityStatus.jsp";
	}
	
	@PostMapping("/updateStock")
	public String updateStock(long prodid, int stock_quantity, Model m) {
		String stat = prodServ.updateStock(prodid, stock_quantity);
		m.addAttribute("status",stat);
		m.addAttribute("msg","Product Update Status");
		return "ActivityStatus.jsp";
	}
	
	@PostMapping("/updateFeatures")
	public String updateFeatures(long prodid, String features,Model m) {
		String stat = prodServ.updateFeatures(prodid, features);
		m.addAttribute("status",stat);
		m.addAttribute("msg","Update Features Status...");
		return "ActivityStatus.jsp";
		
	}
	
	@PostMapping("/updateWarranty")
	public String updateWarranty(long prodid, String warranty,Model m) {
		String stat = prodServ.updateWarranty(prodid, warranty);
		m.addAttribute("status",stat);
		m.addAttribute("msg","Update Warranty Status...");
		return "ActivityStatus.jsp";
	}
	
	@GetMapping("/modelname")
	public String search() {
		return "SearchOnModel.jsp";
	}
	
	@PostMapping(path = "/search")
	public String searchOnModelName(String model_name,Model m)
	{
		List<Product> pdlist= prodServ.searchOnModel(model_name);
		m.addAttribute("pdlist", pdlist);
		return "AllProducts.jsp";
	}
	
	@GetMapping("/pricerange")
	public String searchPriceRange() {
		return "SearchByPriceRange.jsp";
	}
	
	
	@PostMapping("/filterByPrice")
	public String searchOnPriceRange(float min, float max, Model m) {
		List<Product> pdlist = prodServ.searchOnPriceRange(min, max);
		m.addAttribute("pdlist",pdlist);
		return "AllProducts.jsp";
	}
	
	@GetMapping("/searchLowStock")
	public String searchLowStock() {
		return "SearchLowStockProduct.jsp";
	}
	
	@PostMapping("/lowStockList")
	public String lowStockList(Model m) {
		List<Product> pdlist = prodServ.SearchLowStockProducts();
		m.addAttribute("pdlist",pdlist);
		return "AllProducts.jsp";
	}


}
