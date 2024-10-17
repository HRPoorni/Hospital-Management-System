package Model;

public class TestModel {
	String name,recm,msg;
	
	
	//getters and methods
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRecm() {
		return recm;
	}
	public void setRecm(String recm) {
		this.recm = recm;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	
	public TestModel(String name, String email, String msg) {
		
		this.name = name;
		this.recm = email;
		this.msg = msg;
	}
	
	

}
