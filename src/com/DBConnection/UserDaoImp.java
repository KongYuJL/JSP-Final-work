package com.DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.DBConnection.User;
import com.DBConnection.UserDao;
public class UserDaoImp implements UserDao{
	private static User user =null;
	private static Connection conn =null;
	
	public User login(String userid, String password, String ip) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost/website", "root", "123456");
			String sql =" select * from users where user_id = ? and user_password = ? ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userid);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				user = new User();
				user.setId(rs.getString("user_id"));
				user.setPassword(rs.getString("user_password"));
			}
			conn.close();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
	
	public static boolean addUpdateDelete(String sql,Object[] arr){
        PreparedStatement ps=null;
        try {
        	Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost/website", "root", "123456");
            ps=conn.prepareStatement(sql);
            if(arr!=null && arr.length!=0){
                for(int i=0;i<arr.length;i++){
                    ps.setObject(i+1, arr[i]);
                }
            }
            int count=ps.executeUpdate();
            conn.close();
            if(count>0){
                return true;
            }else{
                return false;
            }
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return false;
    }
	public boolean register(User user) {
		    String sql="insert into users values(?,?,?,?,?,?,?,?) ";
		    List<Object> list=new ArrayList<Object>();
		    list.add(user.getId());
		    list.add(user.getIp());
		    list.add(user.getUsername());
		    list.add(user.getPassword());
		    list.add(user.getEmail());
		    list.add(null);
		    list.add("normal user");
		    list.add(user.getUserRegTime());
		         
		    boolean flag = addUpdateDelete(sql, list.toArray());
		         if(flag){
		             return true;
		         }else{
		            return false;
		        }
	}
	public void QueryUserName(User user) throws ClassNotFoundException{
        PreparedStatement ps=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost/website", "root", "123456");
			String sql ="select user_name from users where user_id = ?";
            ps=conn.prepareStatement(sql);
            ps.setString(1, user.getId());
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
            	user.setUsername(rs.getString("user_name"));
            }
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	}
}