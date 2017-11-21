package logicDB;

import java.sql.*;
import java.util.*;

public class Jdbc {

private Connection conn;
private PreparedStatement ps;
private ResultSet rs;
	
	static{
	//Load the driver at the load time of class once
	System.out.println("Tring to load class driver");
		try{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		System.out.println("Successfully loaded class driver.");
		}catch(Exception e){
		System.out.println("Error during driver class load!");
		}
	}	//end of static block
	
	public Jdbc(){
		String url  = "jdbc:mysql://127.0.0.1/ecops";
		String user = "root";
		String pass = "";
		try{
		conn 	= DriverManager.getConnection(url,user,pass);
		System.out.println("A successfull connection to server is now established.");
		}
		catch(Exception e){
		System.out.println("Error during making server connection");
		}
	}	//end of constructor
	
	public void connClose(){
		try{
		conn.close();
		}catch(Exception e){
		System.out.println("Error during closing connection!");
		}
	}
	
	
	public int userRegister(String user , String pass , String name , String email ,
			String phone,String address){
	String status="pending";	
	int result = 0 ;
		try{
		ps = conn.prepareStatement("insert into user values(?,?,?,?,?,?,?)");
		ps.setString(1,user);
		ps.setString(2,pass);
		ps.setString(3,name);
		ps.setString(4,email);
		ps.setString(5,phone);
		ps.setString(6,address);
		ps.setString(7,status);
		result = ps.executeUpdate();
		ps.close();
		}catch(Exception e){
		System.out.println("Error during updation");
		}
	return result;
	}

	public int copsRegister(String user , String pass , String name , String email ,
			String phone,String address, String posting, String designation){
	String status="pending";
	String type = "nonadmin";	
	int result = 0 ;
		try{
		ps = conn.prepareStatement("insert into cop values(?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,user);
		ps.setString(2,pass);
		ps.setString(3,name);
		ps.setString(4,phone);
		ps.setString(5,email);
		ps.setString(6,type);
		ps.setString(7,posting);
		ps.setString(8,designation);
		ps.setString(9,address);
		ps.setString(10,status);
		result = ps.executeUpdate();
		ps.close();
		}catch(Exception e){
		System.out.println("Error during updation");
			e.printStackTrace();
		}
	return result;
} 

	public Vector userLogin(String user,String pass){
	Vector v = new Vector();
		try{
		ps = conn.prepareStatement("select * from user where userName=? and password=?");
		ps.setString(1,user);
		ps.setString(2,pass);
		rs = ps.executeQuery();
			while(rs.next()){
			v.add(rs.getString("userName"));
			v.add(rs.getString("password"));
			v.add(rs.getString("name"));
			v.add(rs.getString("email"));
			v.add(rs.getString("phone"));
			v.add(rs.getString("address"));
			v.add(rs.getString("status"));
			}
		rs.close();
		ps.close();
		}
		catch(Exception e){
		e.printStackTrace();
		}
	return v;
	}
	
	public Vector copsLogin(String user,String pass){
	Vector v = new Vector();
		try{
		ps = conn.prepareStatement("select * from cop where cop_id=? and password=?");
		ps.setString(1,user);
		ps.setString(2,pass);
		rs = ps.executeQuery();
			while(rs.next()){
			v.add(rs.getString("cop_id"));
			v.add(rs.getString("password"));
			v.add(rs.getString("name"));
			v.add(rs.getString("phone"));
			v.add(rs.getString("email"));
			v.add(rs.getString("type"));
			v.add(rs.getString("posting"));
			v.add(rs.getString("designation"));
			v.add(rs.getString("address"));
			v.add(rs.getString("status"));
			}
		rs.close();
		ps.close();
		}
		catch(Exception e){
		e.printStackTrace();
		}
	return v;
	}
	public int complainRegister(String date,String user_id,String report_id,String type,String police_station,String complain)
	{
	int result=0;
	java.util.Date now = new java.util.Date(); 
	try{
		ps=conn.prepareStatement("insert into report values(?,?,?,?,?,?,?)");
		ps.setString(1,report_id);
		ps.setString(2,user_id);
		ps.setString(3,police_station);
		ps.setDate(4,new java.sql.Date(now.getTime()));
		ps.setString(5,type);
		ps.setString(6,"");
		ps.setString(7,complain);
		
		result=ps.executeUpdate();
		ps.close();
		}
		catch(Exception e)
		{
		e.printStackTrace();
		}
		return result;
	}
	
	public int withdraw(String userId,String complainId){
	int result = 0;
		try{
		ps = conn.prepareStatement("update report set type=? where user_id=? and report_id=?");
		ps.setString(1,"withdrawed");
		ps.setString(2,userId);
		ps.setString(3,complainId);
		result = ps.executeUpdate();
		ps.close();
		}catch(Exception e){
		e.printStackTrace();
		}
	return result;
	}
	
	
		public int userPasswordChange(String user,String pass){
	int result =0;
		try{
		ps = conn.prepareStatement("update user set password=? where userName=?");
		ps.setString(1,pass);
		ps.setString(2,user);
		result = ps.executeUpdate();
		ps.close();
		}
		catch(Exception e){
		e.printStackTrace();
		}
	return result;
	}
	
	public int copsPasswordChange(String user,String pass){
	int result =0;
		try{
		ps = conn.prepareStatement("update cop set password=? where cop_id=?");
		ps.setString(1,pass);
		ps.setString(2,user);
		result = ps.executeUpdate();
		ps.close();
		}
		catch(Exception e){
		e.printStackTrace();
		}
	return result;
	}
	
	
	public Vector newUsers(){
	Vector v = new Vector();
		try{
		ps = conn.prepareStatement("select * from user where status=?");
		ps.setString(1,"pending");
		rs = ps.executeQuery();
			while(rs.next()){
			Vector v1 = new Vector();
			v1.add(rs.getString("userName"));
			v1.add(rs.getString("name"));
			v1.add(rs.getString("address"));
			v1.add(rs.getString("phone"));
			v1.add(rs.getString("email"));
			v.add(v1);
			}
		rs.close();
		ps.close();
		}catch(Exception e){
		e.printStackTrace();
		}
	return v;
	}
	
	
	public Vector newCops(){
	Vector v = new Vector();
		try{
		ps = conn.prepareStatement("select * from cop where status=?");
		ps.setString(1,"pending");
		rs = ps.executeQuery();
			while(rs.next()){
			Vector v1 = new Vector();
			v1.add(rs.getString("cop_id"));
			v1.add(rs.getString("name"));
			v1.add(rs.getString("address"));
			v1.add(rs.getString("phone"));
			v1.add(rs.getString("email"));
			v1.add(rs.getString("posting"));
			v1.add(rs.getString("designation"));
			v.add(v1);
			}
		rs.close();
		ps.close();
		}catch(Exception e){
		e.printStackTrace();
		}
	return v;
	}
	
	public Vector newComplains(String stationName){
	Vector v = new Vector();
		try{
		ps = conn.prepareStatement("select * from report where type=? and station_name=?");
		ps.setString(1,"Complain");
		ps.setString(2,stationName);
		rs = ps.executeQuery();
			while(rs.next()){
			Vector v1 = new Vector();
			v1.add(rs.getString("user_id"));
			v1.add(rs.getString("report_id"));
			v1.add(rs.getDate("report_date"));
			v1.add(rs.getString("content"));
			v.add(v1);
			}
		rs.close();
		ps.close();
		}catch(Exception e){
		e.printStackTrace();
		}
	return v;
	}
	
	public Vector getReport(String reportID){
	Vector v = new Vector();
		try{
		ps = conn.prepareStatement("select * from report where report_id=?");
		ps.setString(1,reportID);
		rs = ps.executeQuery();
			while(rs.next()){
			//Vector v1 = new Vector();
			v.add(rs.getString("report_id"));
			v.add(rs.getString("user_id"));
			v.add(rs.getString("station_name"));
			v.add(rs.getDate("report_date"));
			v.add(rs.getString("type"));
			v.add(rs.getString("content"));
			}
		rs.close();
		ps.close();
		}catch(Exception e){
		e.printStackTrace();
		}
	return v;
	}
	
	public Vector getStatus(String reportID){
	Vector v = new Vector();
		try{
		ps = conn.prepareStatement("select * from process where report_id=?");
		ps.setString(1,reportID);
		rs = ps.executeQuery();
			while(rs.next()){
			Vector v1 = new Vector();
			v1.add(rs.getString("cop_id"));
			v1.add(rs.getDate("process_date"));
			v1.add(rs.getString("progress"));
			v1.add(rs.getString("report"));
			v.add(v1);
			}
		rs.close();
		ps.close();
		}catch(Exception e){
		e.printStackTrace();
		}
	return v;
	}
	
	public Vector allComplains(String stationName){
	Vector v = new Vector();
		try{
		ps = conn.prepareStatement("select * from report where station_name=?");
		ps.setString(1,stationName);
		rs = ps.executeQuery();
			while(rs.next()){
			Vector v1 = new Vector();
			v1.add(rs.getString("report_id"));
			v1.add(rs.getString("user_id"));
			v1.add(rs.getDate("report_date"));
			v1.add(rs.getString("content"));
			v1.add(rs.getString("type"));
			v.add(v1);
			}
		rs.close();
		ps.close();
		}catch(Exception e){
		e.printStackTrace();
		}
	return v;
	}

	public int reportStat(String rid,String st)
	{
		int i=0;
		try{
			ps=conn.prepareStatement("update report set type=? where report_id=?");
			ps.setString(1,st);
			ps.setString(2,rid);
			i=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public void rsClose()
	{
		try{
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public int processUser(String userID,String status){
	int result=0;
		try{
		ps = conn.prepareStatement("update user set status=? where userName=?");
		ps.setString(1,status);
		ps.setString(2,userID);
		result = ps.executeUpdate();
		ps.close();
		}catch(Exception e){
		e.printStackTrace();
		}
	return result;
	}
	public int processCop(String copID,String status){
	int result=0;
		try{
		ps = conn.prepareStatement("update cop set status=? where cop_id=?");
		ps.setString(1,status);
		ps.setString(2,copID);
		result = ps.executeUpdate();
		ps.close();
		}catch(Exception e){
		e.printStackTrace();
		}
	return result;
	}

	
	public int submitReport(String reportID,String copsID,String pr,String report){
	int result=0;
	java.util.Date now = new java.util.Date();
		try{
		ps = conn.prepareStatement("insert into process values(?,?,?,?,?)");
		ps.setString(1,reportID);
		ps.setDate(2,new java.sql.Date(now.getTime()));
		ps.setString(3,copsID);
		ps.setString(4,pr);
		ps.setString(5,report);
		result = ps.executeUpdate();
		ps.close();
		}catch(Exception e){
		e.printStackTrace();
		}
	return result;
	}
	
	public int userUpdate(String user,String name,String email,String phone,String address){
	int result=0;
		try{
		ps=conn.prepareStatement("update user set name=?,email=?,phone=?,address=? where userName=?");
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,phone);
		ps.setString(4,address);
		ps.setString(5,user);
		result=ps.executeUpdate();
		ps.close();
		}catch(Exception e){
		e.printStackTrace();
		}
	return result;
	}
	
	public int copsUpdate(String user,String name,String email,String phone,String posting,
			String designation,String address){
	int result=0;
		try{
		ps=conn.prepareStatement("update cop set name=?,email=?,phone=?,address=?,posting=?,designation=? where cop_id=?");
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,phone);
		ps.setString(4,address);
		ps.setString(5,posting);
		ps.setString(6,designation);
		ps.setString(7,user);
		result=ps.executeUpdate();
		ps.close();
		}catch(Exception e){
		e.printStackTrace();
		}
	return result;
	}
	
	public Vector allCops(){
	Vector v = new Vector();
		try{
		ps = conn.prepareStatement("select * from cop where status=?");
		ps.setString(1,"approved");
		rs= ps.executeQuery();
			while(rs.next()){
			Vector v1 = new Vector();
			v1.add(rs.getString("cop_id"));
			v1.add(rs.getString("name"));
			v1.add(rs.getString("address"));
			v1.add(rs.getString("phone"));
			v1.add(rs.getString("email"));
			v1.add(rs.getString("posting"));
			v1.add(rs.getString("designation"));
			v1.add(rs.getString("type"));
			v.add(v1);
			}
		ps.close();
		}catch(Exception e){
		e.printStackTrace();
		}
	return v;
	}
	
	public int makeAdmin(String user){
	int result=0;
		try{
		ps = conn.prepareStatement("update cop set type=? where cop_id=?");
		ps.setString(1,"admin");
		ps.setString(2,user);
		result = ps.executeUpdate();
		ps.close();
		}catch(Exception e){
		e.printStackTrace();
		}
	return result;
	}
	
	public int contactus(String id,String name,String email,String phone,String address,String query){
	int result=0;
		try{
		ps = conn.prepareStatement("insert into contactus values(?,?,?,?,?,?)");
		ps.setString(1,id);
		ps.setString(2,name);
		ps.setString(3,email);
		ps.setString(4,phone);
		ps.setString(5,address);
		ps.setString(6,query);
		result = ps.executeUpdate();
		ps.close();
		}catch(Exception e){
		e.printStackTrace();
		}
	return result;
	}
	
	public Vector allComplainsByUser(String user){
	Vector v = new Vector();
		try{
		ps = conn.prepareStatement("select * from report where user_id=?");
		ps.setString(1,user);
		rs = ps.executeQuery();
			while(rs.next()){
			Vector v1 = new Vector();
			v1.add(rs.getString("report_id"));
			v1.add(rs.getString("station_name"));
			v1.add(rs.getString("report_date"));
			v1.add(rs.getString("type"));
			v1.add(rs.getString("content"));
			v.add(v1);
			}
		rs.close();
		ps.close();
		}catch(Exception e){
		e.printStackTrace();
		}
	return v;
	}
}