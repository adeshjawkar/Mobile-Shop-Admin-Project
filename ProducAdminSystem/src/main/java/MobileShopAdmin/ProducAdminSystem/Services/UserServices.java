package MobileShopAdmin.ProducAdminSystem.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MobileShopAdmin.ProducAdminSystem.Repository.AdminRepository;
import MobileShopAdmin.ProducAdminSystem.entities.AdminEntity;

@Service
public class UserServices {
	
	@Autowired
	private AdminRepository userRepo;
	
	
	
	public String addNewUser(AdminEntity obj)
	{
		String status;
		try {


//			System.out.println(obj.getUsername());
//			System.out.println(obj.getPassword());
//			System.out.println(obj.getFullName());
//			System.out.println(obj.getGmail());
//			System.out.println(obj.getContactNo());
//			System.out.println(obj.getRole());
//			System.out.println(obj.getAddress());
//			System.out.println(obj.getCity());
//			System.out.println(obj.getState());
//			System.out.println(obj.getCountry());
			//System.out.println(obj.getCity());
			userRepo.save(obj);
			status="success";
		}
		catch(Exception e)
		{
			status = "failed";
		}
		return status;
	}

	public AdminEntity check(String username, String password) {
		// TODO Auto-generated method stub
		AdminEntity a=userRepo.findByUsernameAndPassword(username, password);
		return a;
		
	}

}
