package com.DBConnection;
import com.DBConnection.User;
public interface UserDao {
    public User login(String userid, String password, String ip);
    public boolean register(User user);
}