package dao;

import java.sql.*;
import java.util.ArrayList;

import bean.reg;



public class Daoreg {
	Databaseconnector obj=new Databaseconnector();
	Connection con=obj.Dbconnect();
	PreparedStatement ps=null;
	ResultSet rs=null;
	public String login(reg ob){
		try{
		String view="select * from staff";
		Statement st=con.createStatement();
		rs=st.executeQuery(view);
		while(rs.next()){
			String id=rs.getString("staff_id");
			String pass=rs.getString("password");
			if(id.equals(ob.getId()) && pass.equals(ob.getPassword())){
				return "success";
			}
			else{
				
			}
		}
		}catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	
	
	
	
	
	public ArrayList<reg> join(reg obj){
	   ArrayList<reg> list=new ArrayList<reg>();
		try{
			
		
		String join="select t1.student_id,t1.batch_name,t1.name,t1.email,t1.phone,t2.stream,t2.10th,t2.12th,t2.backlogs,t2.year_of_passing from student t1 INNER JOIN academics t2 on t1.student_id=t2.student_id where t1.batch_name='"+obj.getBatch()+"' AND t2.batch_name='"+obj.getBatch()+"'";
		ps=con.prepareStatement(join);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			reg ob=new reg();
			ob.setId(rs.getString("student_id"));
			ob.setName(rs.getString("name"));
			ob.setEmail(rs.getString("email"));
			ob.setPhone(rs.getString("phone"));
			ob.setStream(rs.getString("stream"));
			ob.setTenth(rs.getString("10th"));
			ob.setTwelth(rs.getString("12th"));
			ob.setBacklogs(rs.getString("backlogs"));
			ob.setYear(rs.getString("year_of_passing"));
			list.add(ob);
			
			
			
		}
		
		
		}catch(Exception e){
			System.out.println(e);
		}
		return list;
		
	}
	public String register(reg ob){
		try{
		String insert="insert into interview(company_name,position,stream,year_of_passing,experience,backlogs) values(?,?,?,?,?,?)";
		ps=con.prepareStatement(insert);
		ps.setString(1,ob.getName());
		ps.setString(2,ob.getPosition());
		ps.setString(3,ob.getStream());
		ps.setString(4,ob.getYear());
		ps.setString(5,ob.getExperience());
		ps.setString(6,ob.getBacklogs());
		int i=ps.executeUpdate();
		if(i!=0){
			return "success";
		}
		else{
			return "failure";
		}
		
		}catch(Exception e){
			System.out.println(e);
		}
		return null;
		
		
		
	}

}
