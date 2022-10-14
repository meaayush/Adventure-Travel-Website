package com.aayush.formsub;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/formreg")
public class Registrationformserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public Registrationformserv() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("name");
		String uemail=request.getParameter("email");
		String uphone=request.getParameter("phone");
		String uaddress=request.getParameter("address");
		String uplace=request.getParameter("place");
		String unop=request.getParameter("guests");
		String udate=request.getParameter("arrivals");
		
		RequestDispatcher dispatcher=null;
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3308/TermProject","root","");
			PreparedStatement pst=con.prepareStatement("insert into trips(uname,uemail,uphone,uaddress,uplace,unop,udate) values(?,?,?,?,?,?,?)");
			pst.setString(1,uname);
			pst.setString(2, uemail);
			pst.setString(3, uphone);
			pst.setString(4, uaddress);
			pst.setString(5, uplace);
			pst.setString(6, unop);
			pst.setString(7, udate);
			
			int rowCount=pst.executeUpdate();
			dispatcher= request.getRequestDispatcher("packages.jsp");
			/*
			 * if(rowCount > 0) { request.setAttribute("status", "success");
			 * System.out.println("yes"); } else { request.setAttribute("status", "failed");
			 * }
			 */
			dispatcher.forward(request,response);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		/*
		 * PrintWriter out=response.getWriter(); out.println(uname);
		 * out.println(uemail); out.println(uphone); out.println(uaddress);
		 * out.println(uplace); out.println(unop); out.println(udate);
		 */
	}

}
