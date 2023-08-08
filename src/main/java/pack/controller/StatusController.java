package pack.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pack.model.Debtor;
import pack.service.StatusService;

@Controller
public class StatusController {
	
	final static Logger logger = LogManager.getLogger(StatusController.class);
	
	  @Autowired
      StatusService ad;
	  
	  @RequestMapping("/admin/authorize")  
	     public String authorize(@RequestParam("id") int id)  {
		 logger.info("into authorizing debtor");
		 Debtor dbt=ad.getDebtor(id);
		 ad.authorize(dbt);
		 logger.info("Debtor was updated as authorized");
		 return "redirect:/admin/adminpage";
			 
	     }
	  
	  @RequestMapping("/admin/reject")  
	     public String reject()  {
		  logger.info("into rejecting debtor");
		     return "reject";
	     }
	  @RequestMapping("/admin/reason")  
	     public String reason(@RequestParam("id") int id,@RequestParam("reason") String reason)  {
		     Debtor dbt=ad.getDebtor(id);
		     ad.reject(dbt,reason);
		     logger.info("Debtor was updated as rejected with reason");
		     return "redirect:/admin/adminpage";
	     }
}
