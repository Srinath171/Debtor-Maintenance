package pack.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.*;

@Entity
@Table(name="bankdetails")
public class Bank {
	
	@NotEmpty(message = "-> Bank Name must not be empty.")
	@Column(name="name")
	String name;
	
	@NotEmpty(message = "-> Branch Name must not be empty.")
	@Column(name="branch")
	String branch;
	
	@NotEmpty(message = "-> Bank Address must not be empty.")
	@Column(name="address")
	String address;
	
	@NotBlank(message = "-> Bank Account Number is Required.")
	@Size(min=9,max = 18,message = "-> Account Number must be between 9 and 18 digits.")
	@Column(name="accno")
	String accno;
	
	@NotEmpty(message = "-> Selection of Currency Type is required.")
	@Column(name="curr")
	String curr;
	
	@Id
	@Column(name="id")
	int id;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAccno() {
		return accno;
	}

	public void setAccno(String accno) {
		this.accno = accno;
	}

	public Bank(String name, String branch, String address, String accno, String curr) {
		super();
		this.name = name;
		this.branch = branch;
		this.address = address;
		this.accno = accno;
		this.curr = curr;
	}

	public String getCurr() {
		return curr;
	}

	public void setCurr(String curr) {
		this.curr = curr;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public Bank() {
		
	}
}
