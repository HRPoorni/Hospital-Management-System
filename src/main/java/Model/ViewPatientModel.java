package Model;

public class ViewPatientModel {
	int id;
	String P_Name;
	String P_Address;
	int D_ID;
	int Con_Num;
	int P_Age;
	int P_ID;
	String date;
	
	
	public ViewPatientModel(int id, String p_Name, String p_Address, int d_ID, int con_Num, int p_Age, int p_ID,String date) {
	
		this.id = id;
		P_Name = p_Name;
		P_Address = p_Address;
		D_ID = d_ID;
		Con_Num = con_Num;
		P_Age = p_Age;
		P_ID = p_ID;
		this.date = date;
	}
	
	public ViewPatientModel(int id, String p_Name, String p_Address, int con_Num, int p_Age, int p_ID,String date) {
		
		this.id = id;
		P_Name = p_Name;
		P_Address = p_Address;
		Con_Num = con_Num;
		P_Age = p_Age;
		P_ID = p_ID;
		this.date = date;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getP_Name() {
		return P_Name;
	}

	public void setP_Name(String p_Name) {
		P_Name = p_Name;
	}

	public String getP_Address() {
		return P_Address;
	}

	public void setP_Address(String p_Address) {
		P_Address = p_Address;
	}

	public int getD_ID() {
		return D_ID;
	}

	public void setD_ID(int d_ID) {
		D_ID = d_ID;
	}

	public int getCon_Num() {
		return Con_Num;
	}

	public void setCon_Num(int con_Num) {
		Con_Num = con_Num;
	}

	public int getP_Age() {
		return P_Age;
	}

	public void setP_Age(int p_Age) {
		P_Age = p_Age;
	}

	public int getP_ID() {
		return P_ID;
	}

	public void setP_ID(int p_ID) {
		P_ID = p_ID;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	
}
