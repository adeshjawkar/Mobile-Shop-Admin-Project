package MobileShopAdmin.ProducAdminSystem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import MobileShopAdmin.ProducAdminSystem.Repository.AdminRepository;
import MobileShopAdmin.ProducAdminSystem.Services.UserServices;
import MobileShopAdmin.ProducAdminSystem.entities.AdminEntity;

@Controller
public class AdminConroller {
	
	@Autowired
    private UserServices userServ; 
	
	
	@GetMapping("/")
	public String login() {
		return "loginForm.html";
	}
	
	@GetMapping("/dashboard")
	public String dashboard() {
		return "homePage.jsp";
	}
	
	@PostMapping("/login")
	public String home(String username, String password ) {
		AdminEntity a=userServ.check(username,password);
		if(a !=null)
			return "homePage.jsp";
		else
			return "failed.jsp";
	}
	
	@GetMapping("/signup")
	public String singup() {
		return "NewAdminForm.jsp";
	}
	
	
	
//	@PostMapping("/saveAdmin")
//	public String saveAdmin(@ModelAttribute AdminEntity admin) {
//		if(admin.getUsername() == null || admin.getUsername().trim().isEmpty()) {
//			throw new RuntimeException("username cannot be empty");
//		}
//		if(admin.getPassword()== null || admin.getPassword().trim().isEmpty()) {
//			throw new RuntimeException("password cannot be empty");
//		}
//		
//		adminRepository.save(admin);
//		
//		return "homePage.jsp";
//	}
	@GetMapping("/newUser")
	public String newUser() {
		return "NewAdminForm.jsp";
	}
	
	@PostMapping("/addAdmin")
	public String newUser(AdminEntity obj, Model m)
	{
		String status = userServ.addNewUser(obj);
		m.addAttribute("msg", "New User Added Status...");
		m.addAttribute("status", status);
		return "NewUserStatus.jsp";
	}
	
	

}