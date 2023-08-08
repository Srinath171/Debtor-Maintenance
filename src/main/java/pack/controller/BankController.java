package pack.controller;

import javax.validation.Valid;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pack.model.Bank;
import pack.model.Debtor;
import pack.service.BankService;

@Controller
public class BankController {
	
	final static Logger logger = LogManager.getLogger(BankController.class);
	
	@Autowired 
	BankService bd;


 @RequestMapping("/user/bankform")  
 public String add(@RequestParam("id") int id,Model m)  {
	 Bank b=bd.getBank(id);
	 if(b==null) {
		 logger.info("into adding bank details");
	     m.addAttribute("bk",new Bank());
	     System.out.println("--------------id---------: "+id);
	     return "bankform"; 
	 }
	 else {
		 logger.info("into editing bank details");
		 m.addAttribute("bk",b);
		 System.out.println("id: "+id);
		 return "bankform"; 
	 }
	  
 }


  @RequestMapping(value = "/user/addBank") 
  public String addDebtor(@Valid @ModelAttribute("bk") Bank bank,BindingResult bindingResult) {
	  if(bindingResult.hasErrors()) {
		  return "bankform";
	  }
	 bd.save(bank);
	 logger.info("bank details added");
	 return "redirect:/user/review?id="+bank.getId();
  }
  
  @RequestMapping("/user/viewaccount")
	public String viewaccount( @RequestParam("id") int id,Model m) {
	    Bank b=bd.getBank(id);
	    logger.info("bank details retrieved");
	    m.addAttribute("row",b);
		return "viewaccount";
	}
  
  @RequestMapping("/user/editbank")  

  public String edit( @RequestParam("id") int id, Model m){    
	logger.info("into editing bank details");		 
	Bank b=bd.getBank(id);
	m.addAttribute("edit",b);
	System.out.println("id: "+id);
		return "editbank";
}
	
	
	@RequestMapping("/user/updateBank")
	public String change(@Valid @ModelAttribute("edit") Bank b,BindingResult bindingResult)
	{
		if(bindingResult.hasErrors()) {
			  return "editbank";
		  }
		Debtor dbt=bd.getDebtor(b.getId());
		bd.change(b,dbt);
		logger.info("bank details changed");
		return "redirect:/user/view";
	}
	@RequestMapping("/user/deletebank")
	public String delete( @RequestParam("id") int id,@RequestParam("type") int type){
		Bank b=bd.getBank(id);
		if(b!=null) {
		    bd.delete(b);
		    logger.info("bank details deleted");
		}
		    if(type==1)
			    return "redirect:/user/view";
		    else
		    	return "redirect:/user/userpage?id=0";
			
	}
	
	@RequestMapping("/admin/viewdetails")
		public String viewbank( @RequestParam("id") int id,Model m) {
		    Debtor dbt=bd.getDebtor(id);
		    logger.info("debtor details retrieved");
		    m.addAttribute("debtor",dbt);
		    Bank b=bd.getBank(id);
		    logger.info("bank details retrieved");
		    m.addAttribute("bank",b);
			return "viewdetails";
		}
	  
}
