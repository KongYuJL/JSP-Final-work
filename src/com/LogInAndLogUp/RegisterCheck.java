package com.LogInAndLogUp;
import java.io.IOException;
import java.util.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DBConnection.UserDaoImp;
import com.DBConnection.User;


public class RegisterCheck extends HttpServlet{
    
    private static final long serialVersionUID = 1L;
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        this.doPost(request, response);
    }
    public String getIpAddr(HttpServletRequest request) {
        String ip = request.getHeader("x-forwarded-for");
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip;
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
    	
        User user=new User();
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        String password=request.getParameter("password");
        String email=request.getParameter("email");
        
        user.setId(id);
        user.setIp(getIpAddr(request));
        user.setUsername(name);
        user.setPassword(password);
        user.setEmail(email);
        Date d = new Date();
	    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    String now = df.format(d);
	    System.out.println(now);
	    user.setUserRegTime(now);
        
        UserDaoImp dao = new UserDaoImp();
        boolean flag = dao.register(user);
        if(flag){
            request.setAttribute("info", "Success");
        }else{
            request.setAttribute("info", "Fail");
        }
        request.getRequestDispatcher("info.jsp").forward(request, response);
    }
}