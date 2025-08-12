package MobileShopAdmin.ProducAdminSystem.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="products")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long prodid;
	private String model_name;
	private String brand;
	private double price;
	private int stock_quantity;
	private String features;
	private String warranty_period;
	
	public long getProdid() {
		return prodid;
	}
	public void setProdid(long prodid) {
		this.prodid = prodid;
	}
	public String getModel_name() {
		return model_name;
	}
	public void setModel_name(String model_name) {
		this.model_name = model_name;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getStock_quantity() {
		return stock_quantity;
	}
	public void setStock_quantity(int stock_quantity) {
		this.stock_quantity = stock_quantity;
	}
	public String getFeatures() {
		return features;
	}
	public void setFeatures(String features) {
		this.features = features;
	}
	public String getWarranty_period() {
		return warranty_period;
	}
	public void setWarranty_period(String warranty_period) {
		this.warranty_period = warranty_period;
	}
	
	
	

}
