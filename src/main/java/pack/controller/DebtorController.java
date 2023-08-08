package pack.controller;

import java.util.List;

import javax.validation.Valid;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import pack.model.Debtor;
import pack.service.DebtorService;

@Controller
public class DebtorController implements WebMvcConfigurer {
	
	final static Logger logger = LogManager.getLogger(DebtorController.class);
 
	 @Autowired 
	 DebtorService dd;
	
	 @RequestMapping("/user/debtorform")  
     public String add(@RequestParam("id") int id,Model m)  {
		   if(id==0) {
		     logger.info("into adding debtor details");
             m.addAttribute("dbt", new  Debtor());
             return "debtorform"; 
		   }
		   else {
			   logger.info("into editing debtor details");	
			   Debtor dbt=dd.getDebtor(id);
			   m.addAttribute("dbt",dbt);
			   System.out.println("id: "+id);
			   return "debtorform";  
		   }
     }
	 
	  @RequestMapping(value = "/user/addDebtor", method = RequestMethod.POST) 
	  public String addDebtor(@Valid @ModelAttribute("dbt") Debtor debtor,BindingResult bindingResult) {
		  if(bindingResult.hasErrors()) {
			  return "debtorform";
		  }
		   dd.save(debtor);
		   logger.info("debtor details added");
		   Debtor debtor2=dd.getDebtorByPhno(debtor.getPhno());
		   return "redirect:/user/bankform?id="+debtor2.getId();
	  }
	  
	  @RequestMapping("/user/view")
		public String view(Model m) {
		  List<Debtor> list=dd.viewAll();
		  logger.info("debtor details retrieved");
		  m.addAttribute("list",list);
			return "view";
		}
	  
	  @RequestMapping("/user/editdebtor")  

	    public String edit( @RequestParam("id") int id, Model m){    
		  
		logger.info("into editing debtor details");	
		  
		Debtor dbt=dd.getDebtor(id);
		m.addAttribute("edit",dbt);
		System.out.println("id: "+id);
		return "editdebtor";
	  }
		
		
		@RequestMapping("/user/updateDebtor")
		public String change(@Valid @ModelAttribute("edit") Debtor debtor,BindingResult bindingResult)
		{
			if(bindingResult.hasErrors()) {
				  return "editdebtor";
			  }
			dd.change(debtor);
			logger.info("debtor details changed");	
			return "redirect:/user/view";
			  			 
		}
		
		@RequestMapping("/user/deletedebtor")
		public String delete(@RequestParam("id") int id,@RequestParam("type") int type){
			Debtor dbt=dd.getDebtor(id);
			dd.delete(dbt);
			logger.info("debtor details deleted");
			if(type==1) {
			  System.out.println("---------Delete Type:"+type+"---------");
			  return "redirect:/user/deletebank?id="+id+"&type=1";
			}
			else {
		      System.out.println("---------Delete Type:"+type+"---------");
			  return "redirect:/user/deletebank?id="+id+"&type=2";
			}
		}
		

		@RequestMapping("/admin/adminpage")
		public String adminview(Model m) {
			List<Debtor> list=dd.viewAll();
			logger.info("debtor details retrieved");
			m.addAttribute("list",list);
			return "adminpage";
		}
		

		@RequestMapping("/admin/select")
		public String select(@RequestParam("id") int id,Model m) {
			Debtor dbt=dd.getDebtor(id);
			logger.info("debtor details retrieved");
			m.addAttribute("row",dbt);
			return "authorizepage";
		}
		
}

