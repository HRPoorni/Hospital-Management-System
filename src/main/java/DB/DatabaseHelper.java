package DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.Statement;

//import com.mysql.jdbc.Statement;

import Model.ContactModel;
import Model.PaymentModel;
import Model.UserModel;
import Model.ViewPatientModel;
import Model.TestModel;

public class DatabaseHelper {
	Connection con;
	String Usertype;
	public DatabaseHelper(Connection con)
	{
		this.con=con;
	}
	//for register user 
    public boolean saveUser(UserModel user){
        boolean set = false;
        //Exception Handling
        try{
            //Insert register data to database
            String query = "INSERT INTO `users`( `fname`, `lname`, `email`, `password`, `cat`) "
            		+ "VALUES ('"+user.getFname()+"','"+user.getLname()+"','"+user.getEmail()+"','"+user.getPassword()+"','"+user.getCat()+"')";
           
           PreparedStatement pt = this.con.prepareStatement(query);
         
           pt.executeUpdate();
           set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
    
//  for Login user
    public boolean checkuser(String email,String password)
	{
		boolean st=false;
		//Exception Handling
		try {
			 Connection con=DB.getConnection();
			 PreparedStatement ps=(PreparedStatement) con.prepareStatement("select  * from users where email=? and password=?");
			 ps.setString(1, email);
	         ps.setString(2, password);
	         ResultSet rs=ps.executeQuery();
	         st=rs.next();
		}
		catch(Exception ex)
		{
			 ex.printStackTrace();
		}
		return st;
	} 
    public static List<UserModel> validate(String email,String password){
    	ArrayList <UserModel> cus = new ArrayList<>();
    	try {
    		 Connection con=DB.getConnection();
    		 Statement stmt = con.createStatement();
    		 String sql = "select * from users where email = '"+email+"' and password = '"+password+"'";
    		 ResultSet rs = stmt.executeQuery(sql);
    		 
    		 if(rs.next()) {
    			 int id = rs.getInt(1);
    			 String fname = rs.getString(2);
    			 String lname = rs.getString(3);
    			 String mail = rs.getString(4);
    			 
    			 UserModel us = new UserModel(id,fname,lname,mail);
    			 cus.add(us);
    		 }
    		 
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	return cus;
    }
    
    //for Send Contact Information - insert
    public  boolean contactus(ContactModel contact)
   	{
   		boolean st=false;
   		//Exception Handling
   		try {
   		 Connection con=DB.getConnection();
   		 String sql="INSERT INTO `contact`( `name`, `email`, `tp`, `msg`) VALUES('"+contact.getName()+"','"+contact.getEmail()+"',"+contact.getTp()+",'"+contact.getMsg()+"')";
 		 PreparedStatement pst=con.prepareStatement(sql);
 	     pst.executeUpdate();
   	        
   	         
   		}
   		catch(Exception ex)
   		{
   			 ex.printStackTrace();
   		}
   		return st;
   	}
    
  //for Send Payment Information 
    public  boolean pay(PaymentModel payment)
   	{
    	String address=payment.getA1()+","+payment.getA2();
   		boolean st=false;
   		//Exception Handling
   		try {
   		 Connection con=DB.getConnection();
   		 String sql="INSERT INTO `payment`( `name`, `address`, `email`, `tp`, `p_method`, `c_number`, `cvc`, `exp_date`) VALUES"
   		 		+ " ('"+payment.getName()+"','"+payment.getEmail()+"','"+address+"',"+payment.getTp()+",'"+payment.getPmethod()+"',"
   		 				+ "'"+payment.getCnumber()+"','"+payment.getCvc()+"','"+payment.getExp()+"')";
 		 PreparedStatement pst=con.prepareStatement(sql);
 	     pst.executeUpdate();
    
   		}
   		catch(Exception ex)
   		{
   			 ex.printStackTrace();
   		}
   		return st;
   	}
    
    //for Send test Information - insert
    public  boolean addtest(TestModel test)
   	{
   		boolean st=false;
   		//Exception Handling
   		try {
   		 Connection con=DB.getConnection();
   		 String sql="INSERT INTO `test`(`T_Name`,`T_Rec`,`T_Des`) VALUES ('"+test.getName()+"','"+test.getRecm()+"','"+test.getMsg()+"')";
 		 PreparedStatement pst=con.prepareStatement(sql);
 	     pst.executeUpdate();
   	        
 	    st = true;   
   		}
   		catch(Exception ex)
   		{
   			 ex.printStackTrace();
   		}
   		return st;
   	}
  //for Send appointment Information - retrive
    public static List<ViewPatientModel> validate_n(String mid){
    	
    	ArrayList <ViewPatientModel> app = new ArrayList<>();
    	try {
    		 Connection con=DB.getConnection();
    		 Statement stmt = con.createStatement();
    		 String sql = "select * from appointment where D_ID = '"+mid+"'";
    		 ResultSet rs = stmt.executeQuery(sql);
    		 
    		 if(rs.next()) {
    			 int id = rs.getInt(1);
    			 String P_Name = rs.getString(2);
    			 String P_Address = rs.getString(3);
    			 int Con_Num = rs.getInt(5);
    			 int P_Age = rs.getInt(6);
    			 int P_ID = rs.getInt(7);
    			 String date = rs.getString(8);
    			 
    			 ViewPatientModel us = new ViewPatientModel(id,P_Name,P_Address,Con_Num,P_Age,P_ID,date);
    			 app.add(us);
    		 }
    		 
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	return app;
    }

}
