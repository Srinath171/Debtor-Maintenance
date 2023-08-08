package pack.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import pack.model.Debtor;

@Repository
public interface DebtorRepository extends   JpaRepository<Debtor,Integer> {
	public Debtor findById(int id);
	public Debtor findByPhno(String phno);
	
	@Query("FROM Debtor ORDER BY date DESC")
	public List<Debtor> findAllOrderByDateDesc();
}
