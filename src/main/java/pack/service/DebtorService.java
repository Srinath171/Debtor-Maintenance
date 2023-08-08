package pack.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import pack.model.Debtor;
import pack.repository.DebtorRepository;

@Service
public class DebtorService {
       
	@Autowired
	DebtorRepository debtorRepository;
	
	public void save(Debtor dbt) {
		Date date=new Date();
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date2=format.format(date);
		dbt.setDate(date2);
		dbt.setStatus("Pending");
		dbt.setReason("NA");
		debtorRepository.save(dbt);
	}
	
	public Debtor getDebtor(int id){
	    return debtorRepository.findById(id);	  
	}
	
	
	public Debtor getDebtorByPhno(String phno){
	    return debtorRepository.findByPhno(phno);	  
	}
	
	public void change(Debtor dbt) {
		Date date=new Date();
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date2=format.format(date);
		dbt.setDate(date2);
		dbt.setStatus("Pending");
		dbt.setReason("NA");
		debtorRepository.save(dbt);
	}
	public void delete(Debtor dbt){ 
		  debtorRepository.delete(dbt);
	}
	
	
	public List<Debtor> viewAll() {
		return debtorRepository.findAllOrderByDateDesc();
	}
}
