package Model;

public class UserModel {
	int id;
	String fname;
	String lname;
	String password;
	String email;
	String cat;
	
	
	public int getid() {
		return id;
	}
	public void setFname(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCat() {
		return cat;
	}
	public void setCat(String cat) {
		this.cat = cat;
	}
	
	public UserModel(String fname, String lname, String email, String password, String cat) {
	
		this.fname = fname;
		this.lname = lname;
		this.password = password;
		this.email = email;
		this.cat = cat;
	}
	
	public UserModel(int id,String fname, String lname, String email) {
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		
	}
	
}
