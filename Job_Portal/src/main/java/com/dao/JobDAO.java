package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.entity.Jobs;

public class JobDAO {

	private Connection conn;
	
	public JobDAO(Connection conn) {
		supper();
		this.conn = conn;
	}
	private void supper() {
		// TODO Auto-generated method stub
		
	}
	public boolean addJob(Jobs j)
	{
		boolean f=false;
		
		try {
			
			String sql="insert into jods(title,description,category,status,location) values(?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, j.getTitle());
			ps.setString(2, j.getDescription());
			ps.setString(2, j.getCategory());
			ps.setString(2, j.getStatus());
			ps.setString(2, j.getLocation());
			
			
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				f = true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public ArrayList<Jobs> getAllJobs()
	{
		
		ArrayList<Jobs> list=new ArrayList<Jobs>();
		Jobs j=null;
		
		try {
			String sql="select * from jods order by id desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				j=new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setStatus(rs.getString(5));
			    j.setLocation(rs.getString(6));
				j.setPdate(rs.getTimestamp(7)+"");
				list.add(j);
				
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
			}
		return list;
		
	}
}
