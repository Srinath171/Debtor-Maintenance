package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pack.model.User;
import pack.service.UserDetailsServiceImpl;

@Controller
public class MainController {
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	@RequestMapping("/login")
	   public String login() {
		   return "login"; 
		   }
	
	@Autowired 
	UserDetailsServiceImpl us;
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping("/registeruser")  
    public String registeruser(Model m)  {
        m.addAttribute("user", new  User());
        return "registeruser";  
    }
	
	 @RequestMapping(value = "/addUser", method = RequestMethod.POST) 
	  public String addUser(User u) {
		   us.usersave(u);
		   return "login";
	   
	  }
	
	@RequestMapping("/registeradmin")  
    public String registeradmin(Model m)  {
        m.addAttribute("admin", new  User());
        return "registeradmin";  
    }
	
	@RequestMapping(value = "/addAdmin", method = RequestMethod.POST) 
	  public String addAdmin(User u) {
		   us.adminsave(u);
		   return "login";
	  }
	
	
	@RequestMapping("/user/userpage")
	public String userpage(@RequestParam("id") int id) {
		if(id==0) {
			return "userpage";
		}
		else 
			return "redirect:/user/deletedebtor?id="+id+"&type=2";	  
	}
	
	@RequestMapping("/user/review")
	public String review() {
		return "review";
	}

}
