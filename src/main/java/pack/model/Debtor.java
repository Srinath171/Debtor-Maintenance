package pack.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.*;

@Entity
@Table(name="debtordetails")
public class Debtor {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	int  id;
	
	@NotEmpty(message = "-> Name must not be empty.")
	@Size(min = 4,max = 50,message = "-> Name must be between 4 and 50 characters.")
	@Column(name="name")
	String  name;
	
	@NotEmpty(message = "-> Address must not be empty.")
	@Column(name="address1")
	String  address1;
	
	@Column(name="address2")
	String  address2;
	
	@NotBlank(message = "-> Fax Number is Required.")
	@Size(min=8,max = 12,message = "-> Fax Number must be between 8 and 12 digits.")
	@Column(name="faxno")
	String  faxno;

	@NotBlank(message = "-> Phone Number is Required. ")
	@Digits(integer = 10,fraction = 0,message = "-> Phone Number must be in numerical format.")
	@Size(min=10,max = 10,message = "-> Phone Number must be 10 digits.")
	@Column(name="phno")
	String  phno;
	
	@NotBlank(message = "-> Email Address is Required.")
	@Email(message = "-> must be a well-formed email address")
	@Column(name="email")
	String  email;
	
	@Column(name="status")
	String  status;
	
	@Column(name="reason")
	String  reason;
	
	@Column(name="date")
	String  date;

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFaxno() {
		return faxno;
	}

	public void setFaxno(String faxno) {
		this.faxno = faxno;
	}

	public String getPhno() {
		return phno;
	}

	public void setPhno(String phno) {
		this.phno = phno;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public Debtor() {
		
	}
	
	
	public Debtor(String name, String address1, String address2, String faxno, String phno, String email) {
		super();
		this.name = name;
		this.address1 = address1;
		this.address2 = address2;
		this.faxno = faxno;
		this.phno = phno;
		this.email = email;
	}
}
